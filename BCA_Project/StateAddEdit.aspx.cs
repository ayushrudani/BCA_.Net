﻿using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace BCA_Project
{
	public partial class StateAddEdit : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				setCountryDropDown();

				if (Request.QueryString["StateID"] != null)
				{
					int StateID = Convert.ToInt32(Request.QueryString["StateID"]);
					ViewState["StateID"] = StateID;
					LoadStateDetails(StateID);
				}
			}
		}
		// getStateDetails by StateID

		protected void LoadStateDetails(int StateID)
		{
			string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

			SqlConnection objConnection = new SqlConnection(connectionString);
			objConnection.Open();

			SqlCommand objCommand = new SqlCommand("GetStateById", objConnection);
			objCommand.CommandType = CommandType.StoredProcedure;

			objCommand.Parameters.AddWithValue("@StateID", StateID);

			SqlDataReader dr = objCommand.ExecuteReader();

			if (dr.HasRows)
			{
				dr.Read();
				txtStateName.Text = dr["StateName"].ToString();
				txtStateCode.Text = dr["StateCode"].ToString();
				ddlCountry.SelectedValue = dr["CountryID"].ToString();
			}

			dr.Close();
			objConnection.Close();
		}

		// country dropdown
		protected void setCountryDropDown()
		{
			string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

			SqlConnection objConnection = new SqlConnection(connectionString);
			objConnection.Open();

			SqlCommand objCommand = new SqlCommand("SelectAllCountriesForDropdown", objConnection);
			objCommand.CommandType = CommandType.StoredProcedure;

			SqlDataReader dr = objCommand.ExecuteReader();

			ddlCountry.DataSource = dr;
			ddlCountry.DataTextField = "CountryName";
			ddlCountry.DataValueField = "CountryID";
			ddlCountry.DataBind();

			dr.Close();
			objConnection.Close();
		}

		// BtnSave Click if StateID is null then insert else update
		protected void btnSave_Click(object sender, EventArgs e)
		{
			string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

			SqlConnection objConnection = new SqlConnection(connectionString);
			objConnection.Open();

			if (ViewState["StateID"] == null)
			{
				SqlCommand objCommand = new SqlCommand("AddState", objConnection);
				objCommand.CommandType = CommandType.StoredProcedure;

				objCommand.Parameters.AddWithValue("@StateName", txtStateName.Text);
				objCommand.Parameters.AddWithValue("@StateCode", txtStateCode.Text);
				objCommand.Parameters.AddWithValue("@CountryID", Convert.ToInt32(ddlCountry.SelectedValue));

				objCommand.ExecuteNonQuery();
			}
			else
			{
				SqlCommand objCommand = new SqlCommand("UpdateState", objConnection);
				objCommand.CommandType = CommandType.StoredProcedure;

				objCommand.Parameters.AddWithValue("@StateID", Convert.ToInt32(ViewState["StateID"]));
				objCommand.Parameters.AddWithValue("@StateName", txtStateName.Text);
				objCommand.Parameters.AddWithValue("@StateCode", txtStateCode.Text);
				objCommand.Parameters.AddWithValue("@CountryID", Convert.ToInt32(ddlCountry.SelectedValue));

				objCommand.ExecuteNonQuery();
			}
			objConnection.Close();

			Response.Redirect("State.aspx");
		}

		// BtnCancel Click
		protected void btnCancel_Click(object sender, EventArgs e)
		{
			Response.Redirect("State.aspx");
		}

	}
}