using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class batool_ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void batool(object sender, EventArgs e)
        {
            if (name.Value == "" && email.Value == "" && subject.Value == "" && message.Value == "")
            {
                return;
            }

            else
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("batool1walid2aldalki3@gmail.com");
                mail.From = new MailAddress($"{email.Value}");
                mail.Subject = subject.Value;

                mail.Body = message.Value;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.UseDefaultCredentials = false;
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("batool walid", "Batool_walid@123");
                smtp.Send(mail);


                //Response.Redirect("contact.aspx");
                name.Value = "";
                email.Value = "";
                subject.Value = "";
                message.Value = "";


                ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "successale()", true);


            }
        }
        }
}