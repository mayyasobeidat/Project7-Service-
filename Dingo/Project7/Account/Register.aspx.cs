using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Project7.Models;

namespace Project7.Account
{
    public partial class Register : Page
    {
        project7Entities newus = new project7Entities();
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text  };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                manager.AddToRole(user.Id, "User");
                string idd = newus.AspNetUsers.Where(d => d.Email == Email.Text).Select(x => x.Id).FirstOrDefault();
                var new2 = newus.AspNetUsers.Find(idd);
                new2.NameUser = FullName.Text;
                new2.PhoneNumber = PhoneNumber.Text;
                newus.SaveChanges();


                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else 
            {
               // ErrorMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}