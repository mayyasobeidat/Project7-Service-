using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Products : System.Web.UI.Page
    {
        project7Entities obj = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Join Table
            var q = (from pd in obj.Categorys
                     join od in obj.Products on pd.id equals od.Id_category
                     select new
                     {
                         od.id,
                         od.nameProduct,
                         od.image,
                         od.description,
                         pd.CategoryName,


                     }).ToList();


            GridView1.DataSource = q;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Search by product

            GridView1.Visible = false;

            var txt = TextBox1.Text;

            var search = (from pd in obj.Categorys
                          join od in obj.Products on pd.id equals od.Id_category
                          where od.nameProduct.Contains(txt)
                          select new
                          {
                              od.id,
                              od.nameProduct,
                              od.image,
                              od.description,
                              pd.CategoryName,

                          }).ToList();
            GridView2.DataSource = search;
            GridView2.DataBind();


        }
    }
}