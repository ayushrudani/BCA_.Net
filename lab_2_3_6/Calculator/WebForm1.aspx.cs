using System;

namespace Calculator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submitbtn_click(object sender, EventArgs e)
        {
            string name = nameStudentTxt.Text;
            print.Text = name;

        }

    }
}