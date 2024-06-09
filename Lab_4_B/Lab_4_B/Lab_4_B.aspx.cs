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
        // Add the country name and code as a ListItem to the RadioButtonList
        rblCountryList.Items.Add(new ListItem(txtCountryName.Text + " (" + txtCountryCode.Text + ")", txtCountryCode.Text));
        // Clear the textboxes after adding
        txtCountryName.Text = "";
        txtCountryCode.Text = "";
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        // Remove the selected item from the RadioButtonList
        for (int i = 0; i < rblCountryList.Items.Count; i++)
        {
            if (rblCountryList.Items[i].Selected)
            {
                rblCountryList.Items.RemoveAt(i);
                break; // Only one item can be selected in a RadioButtonList, so break after removal
            }
        }
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        // Display selected item
        string selectedItems = "Selected item: ";
        foreach (ListItem item in rblCountryList.Items)
        {
            if (item.Selected)
            {
                selectedItems += item.Text;
                break; // Only one item can be selected in a RadioButtonList, so break after finding the selected item
            }
        }
        lblSelectedItems.Text = selectedItems;
    }
}
