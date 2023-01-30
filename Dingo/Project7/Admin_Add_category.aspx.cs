using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Admin_Add_category : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var category = new Category();
            category.CategoryName = TextBox1.Text;

            string folderPath = Server.MapPath("~/images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            category.image = "..\\images\\" + FileUpload1.FileName;
            if (FileUpload1.HasFile)
            {
                
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                db.SaveChanges();
            }
           
            db.Categorys.Add(category);
            db.SaveChanges();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "ShowMessage()", true);
        }
    }
}