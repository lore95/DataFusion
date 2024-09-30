import json
import matplotlib.pyplot as plt
import numpy as np
from scipy import stats
from scipy.optimize import curve_fit

def perform_linear_regression(output_file):
    """Performs a linear regression on the weight vs average V1 data."""
    with open(output_file) as f:
        data = json.load(f)

    weights = [entry['weight'] for entry in data]
    avg_v1_values = [entry['average_v1'] for entry in data]

    # Perform linear regression
    slope, intercept, r_value, p_value, std_err = stats.linregress(avg_v1_values, weights)

    # Plot the data points and the regression line
    plt.figure(output_file)
    plt.scatter(avg_v1_values, weights, label='Data Points')
    plt.plot(avg_v1_values, np.array(avg_v1_values)*slope + intercept, color='red', label='Linear Fit')
    plt.ylabel('Weight')
    plt.xlabel('Average V')
    plt.title(f'Linear Regression (R^2={r_value**2:.5f})')
    plt.legend()
    plt.show()

    print(f"Linear Regression: slope = {slope}, intercept = {intercept}, R^2 = {r_value**2}")

perform_linear_regression('V1_40_1.json')
perform_linear_regression('V2_40_1.json')
perform_linear_regression('V3_40_1.json')
perform_linear_regression('V4_40_1.json')

perform_linear_regression('V1_640_128.json')
perform_linear_regression('V2_640_128.json')
# perform_linear_regression('V3_640_128.json')
perform_linear_regression('V4_640_128.json')

perform_linear_regression('V1_40_128.json')
# perform_linear_regression('V2_40_128.json')
perform_linear_regression('V3_40_128.json')
perform_linear_regression('V4_40_128.json')