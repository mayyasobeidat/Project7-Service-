using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Admin_Feedback : System.Web.UI.Page
    {
        project7Entities obj = new project7Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var qq = from com in obj.comments
                     join use in obj.AspNetUsers on com.user_id equals use.Id
                     where com.flag == 1
                     select new { com.id, use.NameUser, com.comment1, use.UserName, com.flag };

            GridView1.DataSource = qq.ToList();
            GridView1.DataBind();

        }
    }
}