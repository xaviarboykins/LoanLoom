# LoanLoom
**Desktop Application for Loan Management and Equity Analysis**

## Overview
LoanLoom is a modern Windows desktop application designed to simplify loan management and equity analysis. Built using **WPF (Windows Presentation Foundation)** and **C#**, this app empowers users to visualize loan payoff timelines while gaining a better understanding of their financial equity. By incorporating payments, interest rates, and asset depreciation, LoanLoom helps users make informed decisions about their loans and assets, whether for vehicles or real estate.

## Key Features
- **Loan Payoff Estimator:**  
  Calculates the time required to reach a target loan balance by factoring in user inputs such as monthly payments, extra contributions, and interest rates.

- **Equity Calculation:**  
  Provides detailed insights into current and projected equity values, accounting for depreciation rates based on the type of asset.

- **Intuitive User Interface:**  
  A clean and minimal design allows users to input loan details seamlessly. Clear, real-time results are displayed below the form.

- **Customizable Asset Types:**  
  Includes options to analyze assets such as vehicles (random depreciation rate between 10–15%) or homes (fixed 3.6% annual depreciation rate).

- **Detailed Validation:**  
  Built-in error handling ensures all user inputs are valid, preventing calculation errors and guiding users toward correct inputs.

## User Interface
- The application features a sleek, dark-themed UI for easy readability.
- Input fields for loan details (balance, interest rate, payments, etc.) are clearly labeled, making it easy to navigate.
- Results are displayed dynamically in plain text below the input form, including current equity, projected equity, and the time to reach the target balance.
- Dropdown selection for asset type allows users to factor in unique depreciation rates for their scenario.

## Technologies Used
- **Frontend:** WPF (XAML) for an elegant and responsive UI.
- **Backend:** C# for business logic, robust input validation, and precise financial calculations.

## Challenges and Solutions
- **Challenge:** Simulating realistic depreciation rates for different asset types.  
  **Solution:** Created dynamic depreciation calculations based on asset type, incorporating both fixed and random rates.

- **Challenge:** Balancing functionality with a user-friendly design.  
  **Solution:** Developed a clean, uncluttered layout that prioritizes simplicity and usability.

## Intended Users
LoanLoom is ideal for individuals managing personal finances, such as car loans or home mortgages. It is also a valuable tool for financial advisors assisting clients in optimizing their repayment strategies.
