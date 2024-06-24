using System;

namespace Calculator
{
    public partial class Demoaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAddition_Click(object sender, EventArgs e)
        {
            Double Num1 = Convert.ToDouble(txtNum1.Text);
            Double Num2 = Convert.ToDouble(txtNum2.Text);
            Double Answer = Num1 + Num2;
            txtAns.Text = Answer.ToString();
        }
        protected void btnSubstraction_Click(object sender, EventArgs e)
        {
            Double Num1 = Convert.ToDouble(txtNum1.Text);
            Double Num2 = Convert.ToDouble(txtNum2.Text);
            Double Answer = Num1 - Num2;
            txtAns.Text = Answer.ToString();
        }
        protected void btnMultiplication_Click(object sender, EventArgs e)
        {
            Double Num1 = Convert.ToDouble(txtNum1.Text);
            Double Num2 = Convert.ToDouble(txtNum2.Text);
            Double Answer = Num1 * Num2;
            txtAns.Text = Answer.ToString();
        }
        protected void btnDivision_Click(object sender, EventArgs e)
        {
            Double Num1 = Convert.ToDouble(txtNum1.Text);
            Double Num2 = Convert.ToDouble(txtNum2.Text);
            Double Answer = Num1 / Num2;
            txtAns.Text = Answer.ToString();
        }
        protected void btnModule_Click(object sender, EventArgs e)
        {
            Double Num1 = Convert.ToDouble(txtNum1.Text);
            Double Num2 = Convert.ToDouble(txtNum2.Text);
            Double Answer = Num1 % Num2;
            txtAns.Text = Answer.ToString();
        }
    }
}