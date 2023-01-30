using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Project7.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class AdminUsers : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var context = new ApplicationDbContext())
            {
                var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
                var role = roleManager.FindByName("User");
                var data = context.Users.Where(x => x.Roles.Any(r => r.RoleId == role.Id)).ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }

            //var data = db.AspNetUsers.ToList();
         
        }
    }
}