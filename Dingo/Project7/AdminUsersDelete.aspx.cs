using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class AdminUsersDelete : System.Web.UI.Page
    {
        project7Entities db= new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["id"];
                 //id1 = Convert.ToInt32(id);
                var record = db.AspNetUsers.Find(id);
                Label3.Text = record.NameUser;
                Label5.Text = record.PhoneNumber; Label4.Text = record.Email;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string id = Request.QueryString["id"];
            //string id1= 
            var record= db.AspNetUsers.Find(id);    
            db.AspNetUsers.Remove(record);
            db.SaveChanges();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);

            Thread.Sleep(3000);

            Response.Redirect("Admin.aspx");
        }
    }
}