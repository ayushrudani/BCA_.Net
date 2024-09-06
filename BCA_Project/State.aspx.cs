using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BCA_Project
{
	public partial class State : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				GetStates();

				if (Request.QueryString["StateID"] != null)
				{
					int StateID = Convert.ToInt32(Request.QueryString["StateID"]);
					DeleteState(StateID);
				}

			}
		}

		// get All States
		protected void GetStates()
		{
			string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

			SqlConnection objConnection = new SqlConnection(connectionString);
			objConnection.Open();

			SqlCommand objCommand = new SqlCommand("SelectAllStates", objConnection);
			objCommand.CommandType = CommandType.StoredProcedure;

			SqlDataReader dr = objCommand.ExecuteReader();

			// Bind the data reader to the Repeater control
			rptState.DataSource = dr;
			rptState.DataBind();

			dr.Close();
			objConnection.Close();
		}

		// delete State by StateID
		protected void DeleteState(int StateID)
		{
			string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

			SqlConnection objConnection = new SqlConnection(connectionString);
			objConnection.Open();

			SqlCommand objCommand = new SqlCommand("DeleteState", objConnection);
			objCommand.CommandType = CommandType.StoredProcedure;

			objCommand.Parameters.AddWithValue("@StateID", StateID);

			objCommand.ExecuteNonQuery();

			objConnection.Close();

			GetStates();
		}

	}
}