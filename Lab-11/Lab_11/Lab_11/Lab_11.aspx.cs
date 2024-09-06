using System;
using System.IO;

namespace Lab_11
{
    public partial class Lab_11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (fileResume.HasFile)
            {
                try
                {
                    string fileName = Path.GetFileName(fileResume.PostedFile.FileName);
                    string filePath = Server.MapPath("~/Resumes/") + fileName;
                    fileResume.SaveAs(filePath);

                    // Save the form data to a database or process it as needed
                    // For simplicity, displaying a success message
                    lblMessage.Text = "Application submitted successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                lblMessage.Text = "Please upload your resume.";
            }
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            // Get the server path to the Files directory
            string folderPath = Server.MapPath("~/Files/");

            // Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                // If Directory (Folder) does not exist, create it.
                Directory.CreateDirectory(folderPath);
            }

            // Save the File to the Directory (Folder).
            fileResume.SaveAs(folderPath + Path.GetFileName(fileResume.FileName));

            // Display the success message.
            lblMessage.Text = Path.GetFileName(fileResume.FileName) + " has been uploaded.";
        }

    }
}