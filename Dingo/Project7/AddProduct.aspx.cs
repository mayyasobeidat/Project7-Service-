using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class AddProduct : System.Web.UI.Page
    {

        project7Entities obj = new project7Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //Insert Value To dropdown list
                var c = from s in obj.Categorys select s;
                DropDownList1.DataSource = c.ToList();
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();

            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            //Admin Add Products
            Product products = new Product();

            products.nameProduct = TextBox1.Text;
            products.description = TextBox2.Text;
            products.image = "..\\images\\" + FileUpload1.FileName;
            products.Id_category = Convert.ToInt32(DropDownList1.SelectedValue.ToString());

            obj.Products.Add(products);
            obj.SaveChanges();
            FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("images"), FileUpload1.FileName));

            Response.Redirect("Products.aspx");

           // ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }


    }
}