using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Admin_add_table : System.Web.UI.Page
    {
        project7Entities db= new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // var data= db.Tables.ToList();
            var t = new Table();
            //var sum = db.Customers.Sum(ss => ss.CustomerId);
            t.capacity = TextBox1.Text;
            t.numberof_table = Convert.ToInt32( TextBox2.Text);
            t.flag =Convert.ToInt32( RadioButtonList1.SelectedValue);
            db.Tables.Add(t);
           
            db.SaveChanges();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "ShowMessage()", true);
        }
    }
}