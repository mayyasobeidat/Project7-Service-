using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Project7
{
    public partial class Reservations : System.Web.UI.Page
    {

        project7Entities Project = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var Reser = from m in Project.Reservations
                        orderby m.Date.data descending
                        select new
                        {
                            Reservation_id = m.id,
                            User = m.AspNetUser.NameUser,
                            Date = m.datett,
                            Time = m.Time.timeName,
                            Table_Capacity = m.Table.capacity,
                        };
            GridView1.DataSource = Reser.ToList();
            GridView1.DataBind();










        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            var stringNumber = TextBox1.Text;
            int numericValue;
            bool isNumber = int.TryParse(stringNumber, out numericValue);
            if (!isNumber && !String.IsNullOrEmpty(TextBox1.Text))
            {
                string format = "yyyy-MM-dd";
                var query = from m in Project.Reservations
                            orderby m.Date.data descending
                            where (m.AspNetUser.NameUser.Contains(TextBox1.Text)) 
                            select new
                            {
                                Reservation_id = m.id,
                                User = m.AspNetUser.NameUser,
                                Date = m.Date.data,
                                Time= DateTime.ParseExact(m.Time.timeName,format,null)
                                ,
                                Table_Capacity = m.Table.capacity,
                            };

               
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();


            }
            else if (String.IsNullOrEmpty(TextBox1.Text))
            {

                var query = from m in Project.Reservations
                            orderby m.Date.data descending
                            select new
                            {
                                Reservation_id = m.id,
                                User = m.AspNetUser.NameUser,
                                Date = m.Date.data,
                                Time = m.Time.timeName,
                                Table_Capacity = m.Table.capacity,
                            };

                GridView1.DataSource = query.ToList();
                GridView1.DataBind();




            }
            else
            {
                if (!String.IsNullOrEmpty(TextBox1.Text))
                {
                    int id = Convert.ToInt32(TextBox1.Text);
                    var query = from m in Project.Reservations
                                where (m.id == id)
                                select new
                                {
                                    Reservation_id = m.id,
                                    User = m.AspNetUser.UserName,
                                    Date = m.Date.data.ToString(),
                                    Time = m.Time.timeName,
                                    Table_Capacity = m.Table.capacity,
                                };


                    GridView1.DataSource = query.ToList();
                    GridView1.DataBind();







                }


            }
        }
    }
}