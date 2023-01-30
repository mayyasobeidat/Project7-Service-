using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"];
                int id1 = Convert.ToInt32(id);
                var record = db.Tables.Find(id1);
                TextBox1.Text = record.capacity;
                TextBox2.Text =Convert.ToString(record.numberof_table);
                // TextBox2.Text = record.flag.ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id1= Request.QueryString["id"];
            int id= Convert.ToInt32(id1);
            var record = db.Tables.Find(id);
            record.capacity = TextBox1.Text;
            int x= Convert.ToInt32(DropDownList1.SelectedValue);
            Label1.Text= x.ToString();
          if(x==0)
            {
                record.flag = 0;
            }
          else
            {
                record.flag = 1;
            }
          db.SaveChanges();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ShowMessage();", true);


        }
    }
}