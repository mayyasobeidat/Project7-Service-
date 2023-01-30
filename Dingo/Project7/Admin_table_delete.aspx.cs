using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Admin_table_delete : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                var id = Request.QueryString["id"];
                int id1 = Convert.ToInt32(id);
                var record = db.Tables.Find(id1);
                Label2.Text =record.capacity.ToString();
          if(record.flag==0)
                {
                    Label3.Text = "Not reserved yet";
                }
          else
                {
                    Label3.Text = "Reserved";
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id= Request.QueryString["id"];
            int id1 = Convert.ToInt32(id);
            var record = db.Tables.Find(id1);
            db.Tables.Remove(record);
            db.SaveChanges();

        }
    }
}