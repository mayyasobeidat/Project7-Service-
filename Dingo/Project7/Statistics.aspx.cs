using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Statistics : System.Web.UI.Page
    {
        project7Entities project = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int y = (project.AspNetUsers).Count();
            Label2.Text = y.ToString();

            int x = (project.Reservations).Count();
            Label3.Text = x.ToString();
            var tables = new Table();

            var sum = (from i in project.Tables select i.numberof_table).Sum();
            Label4.Text = sum.ToString();

            var t = (project.comments).Count();
            Label1.Text=t.ToString();

            int cat = (project.Categorys).Count();
            Label5.Text = cat.ToString();
            int prod = (project.Products).Count();
            Label6.Text = prod.ToString();

        }
        }
    }