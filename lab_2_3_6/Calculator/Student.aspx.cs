using System;

namespace Calculator
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitBtnClick(object sender, EventArgs e)
        {
            string name = txtName.Text;
            print.Text = name;
        }
    }
}