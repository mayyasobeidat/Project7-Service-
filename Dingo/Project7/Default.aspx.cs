using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class _Default : Page
    {
        project7Entities project = new project7Entities();

        protected void Page_Load(object sender, EventArgs e)
        {

           
            var singleCategory = (from p1 in project.Categorys select p1).Take(3);
            foreach (var i in singleCategory)
            {
                categoryinHome.InnerHtml += $"<div class=\"col-sm-6 col-lg-4\">" +
                $"<div class=\"single_blog_item\">" +
                $" <div class=\"single_blog_img\">" +
                $"<img src='{i.image}' alt=\"\" width=\"300px\" height=\"240.5px\">" +
                $"</div>" +
                $"<div class=\"single_blog_text\">" +
                $"<h3>{i.CategoryName}</h3>" +
                $"<a href=\"Foodmenue.aspx\" class=\"btn_3\">Read More<img src=\"img/icon/left_2.svg\" alt=\"\"></a>" +
                $"</div></div></div>";
            }


            //var id = User.Identity.GetUserId();

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