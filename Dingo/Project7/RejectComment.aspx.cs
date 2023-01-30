using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class RejectComment : System.Web.UI.Page
    {
        project7Entities obj = new project7Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var qq = from com in obj.comments
                     join use in obj.AspNetUsers on com.user_id equals use.Id
                     where (com.id == id)
                     select new { com.id, use.NameUser, com.comment1, use.UserName, com.flag };

            DetailsView1.DataSource = qq.ToList();
            DetailsView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var qq = from com in obj.comments
                     join use in obj.AspNetUsers on com.user_id equals use.Id
                     where (com.id == id)
                     select new { com.id, use.NameUser, com.comment1, use.UserName, com.flag };

            var record = obj.comments.Find(id);
            record.flag = 3;
            obj.SaveChanges();

            Response.Redirect("Admin_Feedback.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Feedback.aspx");

        }
    }
}