using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Delete : System.Web.UI.Page
    {

        project7Entities obj = new project7Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var id2 = Convert.ToInt32(id);




            var q = (from pd in obj.Categorys
                     join od in obj.Products on pd.id equals od.Id_category
                     where od.id == id2

                     select new
                     {
                         od.id,
                         od.nameProduct,
                         od.image,
                         od.description,
                         pd.CategoryName,

                     }).ToList();


            DetailsView1.DataSource = q;
            DetailsView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var id2 = Convert.ToInt32(id);
            var customer = obj.Products.Single(Customer => Customer.id == id2);
            obj.Products.Remove(customer);
            obj.SaveChanges();


            Response.Redirect("Products.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

    }
}