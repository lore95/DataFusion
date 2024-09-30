"""
This programm calculates the sensitivity of a couple (sample rate, gain)

For that, we need to open a json file
we need to plot the recordings, select the range of samples we're interested in 
calculating the average unspecified value for a given weight
This unspecified value has to been stored in a json file with other values for other weights
By plotting we may observe a linear regression or not
If it is the case, we can plot the correlation number
Otherwise, we can find a more complex polynomial or try another couple (sample rate, gain)
"""

import json
import matplotlib.pyplot as plt
import numpy as np
from scipy import stats
from scipy.optimize import curve_fit

def load_data(json_file, values_name):
    """Loads data from a JSON file and returns the time and values_name values."""
    with open(json_file) as f:
        data = json.load(f)
    # Calculate cumulative time from delta times (T)
    times = [0]  # Start with time 0
    for i in range(1, len(data)):
        times.append(times[-1] + data[i]['T'] / 24000000)
    # Extract times and V1 values
    values = [entry[values_name] for entry in data]
    
    return times, values


def plot_recordings(times, values_name):
    """Plots the V1 recordings against time."""
    plt.plot(times, values_name)
    plt.xlabel('Time (s)')
    plt.ylabel('V1 values')
    plt.title('V1 Recordings vs Time')
    plt.show()


def select_range_and_calculate_average(times, values_v1):
    """Lets the user select a time range and calculates the average V1 for that range."""
    print("Enter the start and end times to select the range (in seconds):")
    start_time = float(input("Start time: "))
    end_time = float(input("End time: "))

    # Find indices corresponding to the time range
    start_idx = next(i for i, t in enumerate(times) if t >= start_time)
    end_idx = next(i for i, t in enumerate(times) if t >= end_time)

    # Select the relevant V1 values
    selected_v1 = values_v1[start_idx:end_idx+1]
    avg_v1 = np.mean(selected_v1)
    
    print(f"Average V1 in the selected range: {avg_v1}")
    
    return avg_v1


def save_to_json(weight, avg_v1, output_file):
    """Saves the weight and average V1 value to a JSON file."""
    new_data = {
        "weight": weight,
        "average_v1": avg_v1
    }
    
    # Load existing data if the file exists, otherwise start with an empty list
    try:
        with open(output_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        data = []

    data.append(new_data)
    
    # Save back to the JSON file
    with open(output_file, 'w') as f:
        json.dump(data, f, indent=4)


def perform_linear_regression(output_file):
    """Performs a linear regression on the weight vs average V1 data."""
    with open(output_file) as f:
        data = json.load(f)

    weights = [entry['weight'] for entry in data]
    avg_v1_values = [entry['average_v1'] for entry in data]

    # Perform linear regression
    slope, intercept, r_value, p_value, std_err = stats.linregress(weights, avg_v1_values)

    # Plot the data points and the regression line
    plt.scatter(weights, avg_v1_values, label='Data Points')
    plt.plot(weights, np.array(weights)*slope + intercept, color='red', label='Linear Fit')
    plt.xlabel('Weight')
    plt.ylabel('Average V1')
    plt.title(f'Linear Regression (R^2={r_value**2:.2f})')
    plt.legend()
    plt.show()

    print(f"Linear Regression: slope = {slope}, intercept = {intercept}, R^2 = {r_value**2}")
    
    return r_value**2


def fit_polynomial(output_file, degree):
    """Fits a polynomial of given degree to the weight vs average V1 data."""
    with open(output_file) as f:
        data = json.load(f)

    weights = [entry['weight'] for entry in data]
    avg_v1_values = [entry['average_v1'] for entry in data]

    # Fit polynomial of specified degree
    coefficients = np.polyfit(weights, avg_v1_values, degree)
    polynomial = np.poly1d(coefficients)

    # Plot the data points and the polynomial fit
    x_values = np.linspace(min(weights), max(weights), 500)
    plt.scatter(weights, avg_v1_values, label='Data Points')
    plt.plot(x_values, polynomial(x_values), color='green', label=f'Polynomial Fit (Degree {degree})')
    plt.xlabel('Weight')
    plt.ylabel('Average V1')
    plt.title('Polynomial Fit')
    plt.legend()
    plt.show()

    print(f"Polynomial coefficients: {coefficients}")

    return coefficients

def main(json_file, variable, output_file, weight, polynomial_degree=None):
    """Main function to run the full program."""
    # Step 1: Load the data
    times, values_v1 = load_data(json_file, variable)

    # Step 2: Plot the recordings
    plot_recordings(times, values_v1)

    # Step 3: Select range and calculate the average V1 for that range
    avg_v1 = select_range_and_calculate_average(times, values_v1)

    # Step 4: Save the average V1 value for a given weight
    save_to_json(weight, avg_v1, output_file)

    # Step 5: Perform linear regression or polynomial fit
    if polynomial_degree is None:
        # Perform linear regression
        r_squared = perform_linear_regression(output_file)
        print(f"R^2 value for linear regression: {r_squared}")
    else:
        # Fit a polynomial of the given degree
        coefficients = fit_polynomial(output_file, polynomial_degree)
        print(f"Polynomial fit coefficients: {coefficients}")


main('experiment/V1_40_128_32.json', 'V1', 'V1_40_128.json', weight=32, polynomial_degree=None)
