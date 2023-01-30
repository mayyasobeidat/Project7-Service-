using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Admin_category_edit : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var id= Request.QueryString["id"];
                int id1=Convert.ToInt32(id);
                var record = db.Categorys.Find(id1);

                TextBox1.Text = record.CategoryName;
                Image1.ImageUrl = record.image;
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
          


            //Display the Picture in Image control.
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                Image1.ImageUrl = "~/images/" + Path.GetFileName(FileUpload1.FileName);
                db.SaveChanges();
            }
            var id = Request.QueryString["id"];
            int id1= Convert.ToInt32(id);
            var record=db.Categorys.Find(id1);
            record.CategoryName= TextBox1.Text;
            record.image = "..\\images\\" + FileUpload1.FileName;
            db.SaveChanges();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "ShowMessage()", true);





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_category.aspx");
        }
    }
}