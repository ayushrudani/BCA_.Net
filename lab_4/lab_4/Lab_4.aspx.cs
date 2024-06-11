using System;
using System.Web.UI.WebControls;

public partial class Lab_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Initialize the CheckBoxList here if needed
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string countryName = txtCountryName.Text;
        string countryCode = txtCountryCode.Text;
        string listItemText = $"{countryName} ({countryCode})";

        // Add to CheckBoxList
        chkCountryList.Items.Add(new ListItem(listItemText, countryCode));

        // Clear textboxes
        txtCountryName.Text = "";
        txtCountryCode.Text = "";
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        string countryCode = txtCountryCode.Text;

        // Remove from CheckBoxList
        ListItem itemToRemove = chkCountryList.Items.FindByValue(countryCode);
        if (itemToRemove != null)
        {
            chkCountryList.Items.Remove(itemToRemove);
        }

        // Clear textboxes
        txtCountryName.Text = "";
        txtCountryCode.Text = "";
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        // Display selected items from CheckBoxList
        string selectedItems = "Selected items: ";
        foreach (ListItem item in chkCountryList.Items)
        {
            if (item.Selected)
            {
                selectedItems += item.Text + ", ";
            }
        }
        lblSelectedItems.Text = selectedItems.TrimEnd(',', ' ');
    }
}
