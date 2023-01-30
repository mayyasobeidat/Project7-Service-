using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class admin_category_delete : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!IsPostBack)
            {
                var id = Request.QueryString["id"];
                int id1= Convert.ToInt32(id);
                var record = db.Categorys.Find(id1);
                Label2.Text = record.CategoryName;
                Image1.ImageUrl = record.image;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int count = db.Products.Count();
            var id = Request.QueryString["id"];
            int id1 = Convert.ToInt32(id);
            var data = (from  p in db.Products where p.Id_category==id1 select p).ToList();
          int Num_Product= data.Count();
            if (Num_Product > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "successalert()", true);
            }
            else
            {
                var record = db.Categorys.Find(id1);
                db.Categorys.Remove(record);
                db.SaveChanges();
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "successaler()", true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "ShowMessage()", true);
            }
        }
    }
}