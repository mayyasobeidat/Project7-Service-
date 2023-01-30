using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Edit : System.Web.UI.Page
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

                var id = Request.QueryString["id"];
                var id2 = Convert.ToInt32(id);

                var record = obj.Products.Find(id2);

                TextBox1.Text = record.nameProduct;
                TextBox2.Text = record.description;
                DropDownList1.SelectedValue = record.Id_category.ToString();
                string myImg = obj.Products.FirstOrDefault(a => a.id == id2)?.image;

                Image1.ImageUrl = myImg;
                FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("images"), FileUpload1.FileName));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];
            var id2 = Convert.ToInt32(id);

            string myImg = obj.Products.FirstOrDefault(a => a.id == id2)?.image;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("images") + Path.GetFileName(FileUpload1.FileName));
                myImg = "..\\images\\" + FileUpload1.FileName;
                Image1.ImageUrl = "..\\images\\" + FileUpload1.FileName;
            }
            var record = obj.Products.Find(id2);
            record.nameProduct = TextBox1.Text;
            record.description = TextBox2.Text;
            record.Id_category = Convert.ToInt32(DropDownList1.SelectedValue);
            record.image = myImg;

            obj.SaveChanges();


            string script = "function redirect() { swal('Are you sure?','You will be redirected to a different page!','warning', { buttons: true, dangerMode: true }).then((willRedirect) => { if (willRedirect) { window.location.href = 'http://example.com'; }});}";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect", script, true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");

        }

    }
}