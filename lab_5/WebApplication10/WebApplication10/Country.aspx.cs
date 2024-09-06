using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class Country : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Any initialization logic if needed
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string countryName = txtCountryName.Text.Trim();
            string countryCode = txtCountryCode.Text.Trim();

            if (!string.IsNullOrEmpty(countryName) && !string.IsNullOrEmpty(countryCode))
            {
                string countryItem = $"{countryName} ({countryCode})";
                lstCountries.Items.Add(countryItem);

                // Clear the textboxes after adding
                txtCountryName.Text = string.Empty;
                txtCountryCode.Text = string.Empty;
            }
            else
            {
                // Handle empty input
                // You can add a message to notify the user if needed
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {

            ListBox selectedItems = new ListBox();
            foreach (ListItem li in lstCountries.Items)
            {
                if (li.Selected)
                {
                    selectedItems.Items.Add(li);
                }
            }

            foreach (ListItem li in selectedItems.Items)
            {
                lstCountries.Items.Remove(li);
            }
            //string countryName = txtCountryName.Text.Trim();
            //string countryCode = txtCountryCode.Text.Trim();

            //string countryItem = $"{countryName} ({countryCode})";
            //var itemToRemove = lstCountries.Items.FindByText(countryItem);

            //if (itemToRemove != null)
            //{
            //    lstCountries.Items.Remove(itemToRemove);

            //    // Clear the textboxes after removing
            //    txtCountryName.Text = string.Empty;
            //    txtCountryCode.Text = string.Empty;
            //}
            //else
            //{
            //    // Handle case when the item is not found
            //    // You can add a message to notify the user if needed
            //}
        }
    }
}
