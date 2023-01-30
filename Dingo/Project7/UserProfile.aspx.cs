using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class UserProfile : System.Web.UI.Page
    {
        project7Entities obj = new project7Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;

            //var id = "6d9ee8de-bcbe-4fba-acd0-fc227108682f";
            var id = User.Identity.GetUserId();

            if (!IsPostBack)
            {
                Label1.Text = obj.AspNetUsers.FirstOrDefault(a => a.Id == id)?.NameUser;
                Label2.Text = obj.AspNetUsers.FirstOrDefault(a => a.Id == id)?.PhoneNumber.ToString();
                Label3.Text = obj.AspNetUsers.FirstOrDefault(a => a.Id == id)?.Email;
            }



            if (!IsPostBack)
            {

                if (User.Identity.GetUserId() == null)
                {

                    Response.Redirect("~/Account/Login.aspx");
                }
                else
                {

                    var reserv = from t in obj.Reservations where (t.AspNetUser.Id == id) select t;
                    foreach (var t in reserv)
                    {
                        reservation.InnerHtml +=
                            $"<li class=\"position-relative booking\"><div class=\"media\">" +
                            "<div class=\"media-body\"><h5 class=\"mb-4\">" +

                            "<div class=\"mb-3\"><span style=\"width:125px\" class=\"mr-2 d-block d-sm-inline-block mb-2 mb-sm-0\">Booking Date:</span>" +
                            $"<span class=\"bg-light-blue\">{Convert.ToDateTime(t.datett).Date.ToString("yyyy-MM-dd")}</span></div>" +
                            "<div class=\"mb-3\">" +
                            $"<span style=\"width:125px\" class=\"mr-2 d-block d-sm-inline-block mb-2 mb-sm-0\">Table-Capacity:</span>" +
                            $"<span class=\"bg-light-blue\">{t.Table.capacity}</span>" +
                            "</div><div class=\"mb-3\">" +
                            "<span  style=\"width:125px\" class=\"mr-2 d-block d-sm-inline-block mb-2 mb-sm-0\">Time:</span>" +
                            $"<span class=\"bg-light-blue\">{t.Time.timeName} </span>" +
                            "</div> " +
                            "</div></div>" +
                            "<div class=\"buttons-to-right\">";
                        if (t.counter == 0)
                        {
                            reservation.InnerHtml += $"<p class=\"text-danger\" style=\"font-size:1.15rem;\r\n    font-weight:700;\">Canceled</p>";

                        }
                        else
                        {
                            //

                            reservation.InnerHtml += $"<a class=\"button\" href=\"editProfile_User.aspx?UserID={t.user_id}&&Date={Convert.ToDateTime(t.datett).Date.ToString("yyyy-MM-dd")}&&Time={t.Time.timeName}&&reservationId={t.id}\">Cancel</a>";
                            //reservation.InnerHtml += $"<a href=\"Edit.aspx?\">Cancel</a>";
                        }
                        reservation.InnerHtml += "</div></li>";
                    }
                }
            }
        }






        protected void Edit_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            //var id = "6d9ee8de-bcbe-4fba-acd0-fc227108682f";
            var id = User.Identity.GetUserId();

            TextName.Text = obj.AspNetUsers.FirstOrDefault(a => a.Id == id)?.NameUser;
            TextPhone.Text = obj.AspNetUsers.FirstOrDefault(a => a.Id == id)?.PhoneNumber.ToString();
            TextEmail.Text = obj.AspNetUsers.FirstOrDefault(a => a.Id == id)?.Email;
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            //var id = "6d9ee8de-bcbe-4fba-acd0-fc227108682f";
            var id = User.Identity.GetUserId();


            var insertTest = obj.AspNetUsers.Find(id);

            insertTest.NameUser = TextName.Text;
            insertTest.PhoneNumber = TextPhone.Text;
            insertTest.Email = TextEmail.Text;


            obj.SaveChanges();
            Response.Redirect("UserProfile.aspx");
        }


    }
}
   