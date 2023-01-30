using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class About : Page
    {
        project7Entities project = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var comments = from comm in project.comments where (comm.flag == 2) select comm;

            foreach (var u in comments)
            {
                Feedback.InnerHtml += $"<div class=\"client_review_single media\"><div class=\"client_review_text media-body\">" +
                    $"<p>{u.comment1}</p>" +
                    $"<h4>{u.AspNetUser.NameUser}</h4>" +
                    $"</div></div>";

            }

        }


    }
}