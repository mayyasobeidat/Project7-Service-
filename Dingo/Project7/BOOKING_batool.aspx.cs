using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class BOOKING_batool : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        public int x = 0;
        public int yTime = 0;
        public int zPersons = 0;
        public DateTime qdate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = User.Identity.GetUserId();
                Session["UserId"] = id;
                var data = (from p in db.Categorys select p).ToList();

                DropDownList1.DataValueField = "id";
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataSource = data;
                DropDownList1.DataBind();

                DropDownList2.DataValueField = "Id_time";
                DropDownList2.DataTextField = "timeName";
                var dataTime = (from p in db.Times where p.fk_category == 1 select new { p.Id_time, p.timeName, p.fk_category, p.Fk_date }).ToList();
                DropDownList2.DataSource = dataTime;
                DropDownList2.DataBind();



                DropDownList3.DataValueField = "id";
                DropDownList3.DataTextField = "capacity";
                DropDownList3.DataSource = db.Tables.ToList();
                DropDownList3.DataBind();




            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            var x1 = DropDownList1.SelectedValue;

            x = Convert.ToInt32(x1);
            Label1.Text = x.ToString();
            DropDownList2.DataValueField = "Id_time";
            DropDownList2.DataTextField = "timeName";
            var dataTime = (from p in db.Times where p.fk_category == x select new { p.Id_time, p.timeName, p.fk_category, p.Fk_date }).ToList();
            DropDownList2.DataSource = dataTime;
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (!string.IsNullOrEmpty(Session["UserId"] as string))
            {
                var r = new Reservation();
                r.user_id =Convert.ToString(Session["UserId"]) ;


                string x12 = Calendar1.SelectedDate.ToString();

                r.datett = Convert.ToDateTime(x12);
                r.fk_time = Convert.ToInt32(Label2.Text);
                r.fk_date = 1;
                r.fk_table = Convert.ToInt32(Label3.Text);

                r.Fk_category = Convert.ToInt32(Label1.Text);
                Label6.Text = r.datett.ToString();
                r.counter = 33;
                int timeB = Convert.ToInt32(DropDownList2.SelectedValue);
                string x14batool = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
                Label5.Text = x14batool;
                //Date d = (Date)Label5.Text;
                // string d= Convert.ToDateTime(Label5.Text).ToShortTimeString();
                string format = "yyyy-MM-dd";
                DateTime date = DateTime.ParseExact(Label5.Text, format, null);
                int persons = Convert.ToInt32(DropDownList3.SelectedValue);
                var x = from p in db.Reservations where p.counter == 33 && p.fk_time == timeB && p.datett == date && p.fk_table == persons select p;

                int x1 = x.Count();
                Label7.Text = x1.ToString();

                //"b" != DropDownList3.SelectedValue
                var record = db.Tables.Find(persons);
                int value = Convert.ToInt32(record.numberof_table);
                Label9.Text = value.ToString();

                if (value <= x1)
                {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "successaler()", true);

                Label10.Text = "batool";
            }
                else
                {
                    db.Reservations.Add(r);
                    db.SaveChanges();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "deleletconfig()", true);

            }

            }
            else
            {
                Response.Redirect("Account\\Login.aspx");
            }










        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            var time = DropDownList2.SelectedValue;



            Label2.Text = time.ToString();
            yTime = Convert.ToInt32(time);
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            var Persons = DropDownList3.SelectedValue;
            Label3.Text = Persons.ToString();
            zPersons = Convert.ToInt32(Persons);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
            var date = Calendar1.SelectedDate;
            string x12 = Calendar1.TodaysDate.ToShortDateString();
            qdate = date;
            Label4.Text = qdate.ToString();
        }


        protected void btnDOB_Click(object sender, EventArgs e)
        {
        }



        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            //if (e.Day.IsOtherMonth)
            //{
            //    e.Day.IsSelectable = false;
            //    e.Cell.BackColor = System.Drawing.Color.Gray;
            //}

            if (e.Day.Date < DateTime.Now.Date)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.Gray;
            }


        }

        protected void btnDOB_Click1(object sender, ImageClickEventArgs e)
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
    }
}