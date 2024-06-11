using System;
using System.Web.UI.WebControls;

public partial class Lab_4_B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Initialize the RadioButtonList here if needed
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string countryName = txtCountryName.Text;
        string countryCode = txtCountryCode.Text;
        string listItemText = $"{countryName} ({countryCode})";

        // Add to RadioButtonList
        rblCountryList.Items.Add(new ListItem(listItemText, countryCode));

        // Clear textboxes
        txtCountryName.Text = "";
        txtCountryCode.Text = "";
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        string countryCode = txtCountryCode.Text;

        // Remove from RadioButtonList
        ListItem itemToRemove = rblCountryList.Items.FindByValue(countryCode);
        if (itemToRemove != null)
        {
            rblCountryList.Items.Remove(itemToRemove);
        }

        // Clear textboxes
        txtCountryName.Text = "";
        txtCountryCode.Text = "";
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        // Display selected item from RadioButtonList
        string selectedItem = "Selected item: ";
        foreach (ListItem item in rblCountryList.Items)
        {
            if (item.Selected)
            {
                selectedItem += item.Text;
                break; // Only one item can be selected in a RadioButtonList
            }
        }
        lblSelectedItems.Text = selectedItem;
    }
}
