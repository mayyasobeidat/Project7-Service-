using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class mayas : System.Web.UI.Page
    {
        project7Entities obj = new project7Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var context = new project7Entities())
            {
                var newDate = new Date()
                {
                    data = Calendar1.SelectedDate
                };
                context.Dates.Add(newDate);
                context.SaveChanges();
            }
        }

        protected void btnDOB_Click(object sender, EventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            //if (e.Day.IsOtherMonth)
            //{
            //    e.Day.IsSelectable = false;
            //    e.Cell.BackColor = System.Drawing.Color.Gray;
            //}

            if (e.Day.Date < DateTime.Now)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Gray;
            }


        }




    }
}
    
