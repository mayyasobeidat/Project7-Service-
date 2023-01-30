using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class editProfile_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime date;
            DateTime.TryParse(Request.QueryString["Date"], out date);
            var USerID = Request.QueryString["UserID"];
            var Time = Request.QueryString["Time"];
            var reservationId = Request.QueryString["reservationId"];
            int id = Convert.ToInt32(reservationId);
            Response.Write(USerID);
            Response.Write("\n");
            Response.Write(date);
            Response.Write("\n");
            Response.Write(Time);


            using (project7Entities project = new project7Entities())
            {

                var M = project.Reservations.FirstOrDefault(R => R.datett == date && R.Time.timeName == Time && R.user_id == USerID && R.id== id);

                M.counter = 0;
                project.SaveChanges();
               Response.Redirect("UserProfile.aspx");
            }
        }
    }
}