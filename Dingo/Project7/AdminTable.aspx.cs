using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class AdminTable : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {

            var data = (from p in db.Tables select new { p.id, p.capacity, p.numberof_table, flag= p.flag==0? " Not Reserved" : " Reserved" }).ToList();

            GridView1.DataSource = data;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_add_table.aspx");
        }
    }
}