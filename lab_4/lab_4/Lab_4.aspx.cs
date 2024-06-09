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
        // Remove the selected item from the CheckBoxList
        for (int i = 0; i < chkCountryList.Items.Count; i++)
        {
            if (chkCountryList.Items[i].Selected)
            {
                chkCountryList.Items.RemoveAt(i);
                i--; // Decrement i to adjust for the removed item
            }
        }
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
