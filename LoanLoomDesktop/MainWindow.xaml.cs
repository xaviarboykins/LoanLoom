using System.Text;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LoanLoomDesktop
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Calculate_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //User input values
                if (!double.TryParse(LoanBalanceTextBox.Text, out double currentBalance) || currentBalance <= 0)
                    throw new Exception("Please enter a valid positive loan balance.");

                if (!double.TryParse(InterestRateTextBox.Text, out double annualInterestRate) || annualInterestRate <= 0)
                    throw new Exception("Please enter a valid positive interest rate.");

                if (!double.TryParse(MonthlyPaymentTextBox.Text, out double monthlyPayment) || monthlyPayment <= 0)
                    throw new Exception("Please enter a valid positive monthly payment.");

                if (!double.TryParse(ExtraPaymentTextBox.Text, out double extraPayment) || extraPayment < 0)
                    throw new Exception("Please enter a valid extra payment (0 or more).");

                if (!double.TryParse(TargetBalanceTextBox.Text, out double goalBalance) || goalBalance < 0)
                    throw new Exception("Please enter a valid target balance (0 or more).");

                if (!double.TryParse(CurrentValueTextBox.Text, out double currentValue) || currentValue <= 0)
                    throw new Exception("Please enter a valid positive current value.");

                // calculate monthly interest rate
                decimal monthlyInterestRate = (decimal)(annualInterestRate / 100) / 12;
                int months = 0;

                // Calculate current equity
                double equity = currentValue - currentBalance;

                EquityTextBlock.Text = $"Current equity balance: {equity:F2} dollars.";

                while (currentBalance > goalBalance)
                {
                    // calculate principle and interest payment
                    decimal interest = (decimal)currentBalance * monthlyInterestRate;
                    decimal principalPayment = (decimal)monthlyPayment + (decimal)extraPayment - interest;

                    // If the principal payment is negative or zero, break the loop
                    if (principalPayment <= 0)
                    {
                        ResultTextBlock.Text = "Error: Your payments are not sufficient to reduce the loan balance.";
                        return;
                    }

                    currentBalance -= (double)principalPayment;
                    months++;
                }

                // Calculate depreciation based on asset type
                double depreciationRate;
                if (AssetTypeComboBox.SelectedIndex == 0) // Vehicle
                {
                    depreciationRate = 0.10 + new Random().NextDouble() * 0.05; // Random depreciation between 10% and 15%
                }
                else // Home
                {
                    depreciationRate = 0.036; // 3.6% annual depreciation
                }

                // Calculate depreciated value at goal balance
                double depreciatedValue = currentValue * Math.Pow(1 - depreciationRate, months / 12.0); // Annual depreciation

                // Calculate equity at goal balance
                double equityAtGoal = depreciatedValue - goalBalance;

                EquityAtGoalTextBlock.Text = $"Equity balance at target balance: {equityAtGoal:F2} dollars.";

                if (months >= 12)
                {
                    int years = months / 12;
                    int remainingMonths = months % 12;
                    ResultTextBlock.Text = $"Time to reach target balance: {years} year(s) and {remainingMonths} month(s).";
                }
                else
                {
                    ResultTextBlock.Text = $"Time to reach target balance: {months} months";
                }
                
            }
            catch(Exception ex) 
            {
                ResultTextBlock.Text = $"Error: {ex.Message}";
            }
            

        }
        private void TitleBar_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (e.LeftButton == System.Windows.Input.MouseButtonState.Pressed)
            {
                this.DragMove();
            }
        }

        private void Minimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Maximize_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Normal)
            {
                this.WindowState = WindowState.Maximized;
            }
            else
            {
                this.WindowState = WindowState.Normal;
            }
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}