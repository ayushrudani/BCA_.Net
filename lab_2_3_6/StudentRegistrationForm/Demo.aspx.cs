using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistrationForm
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            lblName.Text = "Your Name is :- "+txtName.Text;
            lblEnrollmentNo.Text = "Your Enrollment is :- "+txtEnrollmentNo.Text;
            lblEmail.Text = "Your Email-d is :-"+txtEmail.Text;
            lblMobileNo.Text = "Your Mobile-No is :- "+txtMobileNo.Text;
            lblAddress.Text = "Your Address is :- "+txtAddress.Text;
            lblPincode.Text = "Your Pincode is :- "+txtPincode.Text;

            if (rbMale.Checked == true)
                lblGender.Text = "Your Gender is :- "+rbMale.Text.ToString();
            else if (rbFemale.Checked == true)
                lblGender.Text = "Your Gender is :- " + rbFemale.Text.ToString();
            else
                lblGender.Text = "Kindly Select Gender";

            lblCity.Text = "Your City is :- " + ddlCity.SelectedItem.Text;
            lblState.Text = "Your State is :- " + ddlState.SelectedItem.Text;
            lblCountry.Text = "Your Country is :- " + ddlCountry.SelectedItem.Text;

            List<string> selectedHobbies = new List<string>();
            foreach (ListItem item in cblHobby.Items)
            {
                if (item.Selected)
                {
                    selectedHobbies.Add(item.Text);
                }
            }
            lblHobbies.Text = "Your Hobbies are :- " + string.Join(" , ", selectedHobbies);
        }
    }
}