using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Comments : System.Web.UI.Page
    {

        project7Entities project = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            comments.InnerHtml = "";
            var id = User.Identity.GetUserId();
            if (User.Identity.GetUserId() == null)
            {

                Response.Redirect("~/Account/Login.aspx");
            }
            else
            {

                //var userid = id;
                //var x = project.AspNetUsers.Find(userid);
                //name.InnerText = x.NameUser;
                var comment = from comm in project.comments where (comm.AspNetUser.Id == id) select comm;
                foreach (var i in comment)
                {
                    comments.InnerHtml += $"<p class=\"mt-3 mb-4 pb-2\">{i.comment1}</p>";
                    if (i.flag == 2)
                    {
                        comments.InnerHtml += "<p class=\"text-success\">Accepted</p>";

                    }
                    if (i.flag == 1)
                    {

                        comments.InnerHtml += "<p class=\"text-secondary\">Pinding</p>";


                    }
                    if (i.flag == 3)
                    {
                        comments.InnerHtml += "<p class=\"text-danger\">Rejected</p>";

                    }
                    comments.InnerHtml += "<hr class=\"hr-primary\" />";
                }
            }


        }

        protected void btncomment_Click(object sender, EventArgs e)
        {
            using (project7Entities comments = new project7Entities())
            {
                var id = User.Identity.GetUserId();
                var comm = (from n in comments.comments select n).FirstOrDefault();
                comm.user_id = id;
                comm.comment1 = textAreaExample.InnerText;
                comm.flag = 1;
                comments.comments.Add(comm);
                comments.SaveChanges();



                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert('Your message has been received successfully');", true);

            }
            textAreaExample.InnerText = "";


        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }


    }
}