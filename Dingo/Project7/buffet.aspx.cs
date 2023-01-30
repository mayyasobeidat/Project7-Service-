using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class buffet_menu : System.Web.UI.Page
    {
        project7Entities obj = new project7Entities();







        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int item = Convert.ToInt32(Request.QueryString["id"]);
                var oitem = obj.buffet_menu_items.Find(item);
                obj.buffet_menu_items.Remove(oitem);
                obj.SaveChanges();
                Response.Redirect("buffet.aspx");
            }
            if (Session["dates"] != null)
            {
                string mm = Session["dates"].ToString();

            }

            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Now;

                //RangeValidator1.MinimumValue = DateTime.Now.Date.ToShortDateString();
                //RangeValidator1.MaximumValue = DateTime.Now.Date.AddYears(1).ToShortDateString();
                //RangeValidator1.MinimumValue = DateTime.Now.ToShortDateString();
                //RangeValidator1.MaximumValue = DateTime.Now.AddYears(1).ToShortDateString();
                var moath = obj.Categorys.ToList();
                DropDownList1.DataSource = moath;
                DropDownList1.DataValueField = "id";
                DropDownList1.DataTextField = "CategoryName";
                DropDownList1.DataBind();
                //var moath2 = obj.Categorys.ToList();
                //DropDownList2.DataSource = moath2;
                //DropDownList2.DataValueField = "id";
                //DropDownList2.DataTextField = "CategoryName";
                //DropDownList2.DataBind();


                var pro = obj.Products.ToList();
                DropDownList3.DataSource = pro;
                DropDownList3.DataValueField = "id";
                DropDownList3.DataTextField = "nameProduct";
                DropDownList3.DataBind();

            }
            var nnmm = Calendar1.SelectedDate.ToShortDateString();
            DateTime dateTime = Calendar1.SelectedDate.Date;
            Label1.Text = nnmm.ToString();
            int meal1 = Convert.ToInt32(DropDownList1.SelectedValue);
            var new1 = from b in obj.buffet_menus
                       join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                       join p in obj.Products on bmi.menu_item_id equals p.id
                       where b.date == dateTime && b.meal == meal1
                       select new { p.nameProduct, p.description, p.image, bmi.ids };
            //foreach(var b in new1)
            //{
            //    Label1.Text += b.image.ToString();
            //}
            GridView1.DataSource = new1.ToList();
            GridView1.DataBind();

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate < DateTime.Now.Date)
            {
                Calendar1.SelectedDate = DateTime.Now;
                // or you can display an error message to the user
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"ConfirmDelete1();", true);
            }
            var nnmm = Calendar1.SelectedDate.ToShortDateString();
            DateTime dateTime = Calendar1.SelectedDate.Date;
            Label1.Text = nnmm.ToString();
            int meal1 = Convert.ToInt32(DropDownList1.SelectedValue);
            var new1 = from b in obj.buffet_menus
                       join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                       join p in obj.Products on bmi.menu_item_id equals p.id
                       where b.date == dateTime && b.meal == meal1
                       select new { p.nameProduct, p.description, p.image, bmi.ids };
            //foreach(var b in new1)
            //{
            //    Label1.Text += b.image.ToString();
            //}
            GridView1.DataSource = new1.ToList();
            GridView1.DataBind();

            Session["dates"] = Calendar1.SelectedDate.ToShortDateString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //var nnmm = Calendar1.SelectedDate.ToShortDateString();
            //DateTime dateTime = Calendar1.SelectedDate.Date;
            //Label1.Text = nnmm.ToString();
            //int meal1 = Convert.ToInt32(DropDownList1.SelectedValue);
            //var new1 = from b in obj.buffet_menus
            //           join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
            //           join p in obj.Products on bmi.menu_item_id equals p.id
            //           where b.date == dateTime && b.meal == meal1
            //           select new { p.nameProduct, p.description, p.image,bmi.ids };
            ////foreach(var b in new1)
            ////{
            ////    Label1.Text += b.image.ToString();
            ////}
            //GridView1.DataSource = new1.ToList();
            //GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime dateTime = Calendar1.SelectedDate.Date;
            int meal1 = Convert.ToInt32(DropDownList1.SelectedValue);

            //int test = obj.buffet_menu.Where(x => x.date == dateTime && x.meal == meal1).Count();
            int test2 = obj.buffet_menus.Where(x => x.date == dateTime && x.meal == meal1).Select(x => x.id).FirstOrDefault();




            Label1.Text = test2.ToString();
            if (test2 == 0)
            {
                var newbuffet = new buffet_menus
                {
                    date = dateTime,
                    meal = meal1,

                };
                obj.buffet_menus.Add(newbuffet);
                obj.SaveChanges();
                test2 = obj.buffet_menus.Where(x => x.date == dateTime && x.meal == meal1).Select(x => x.id).FirstOrDefault();
            }
            int item = Convert.ToInt32(DropDownList3.SelectedValue);
            int check = (from o in obj.buffet_menu_items where o.menu_item_id == item && o.buffet_menu_id == test2 select new { o.ids }).Count();
            Label1.Text = check.ToString();
            if (check == 0)
            {
                var newmeal = new buffet_menu_items
                {
                    buffet_menu_id = test2,
                    menu_item_id = item,
                };
                obj.buffet_menu_items.Add(newmeal);
                obj.SaveChanges();
            }
            else
            {
                //code to sweetallert that there is already this product
            }
            var nnmm = Calendar1.SelectedDate.ToShortDateString();
            Label1.Text = nnmm.ToString();
            var new1 = from b in obj.buffet_menus
                       join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                       join p in obj.Products on bmi.menu_item_id equals p.id
                       where b.date == dateTime && b.meal == meal1
                       select new { p.nameProduct, p.description, p.image, bmi.ids };
            //foreach(var b in new1)
            //{
            //    Label1.Text += b.image.ToString();
            //}
            GridView1.DataSource = new1.ToList();
            GridView1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var nnmm = Calendar1.SelectedDate.ToShortDateString();
            DateTime dateTime = Calendar1.SelectedDate.Date;
            Label1.Text = nnmm.ToString();
            int meal1 = Convert.ToInt32(DropDownList1.SelectedValue);
            var new1 = from b in obj.buffet_menus
                       join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                       join p in obj.Products on bmi.menu_item_id equals p.id
                       where b.date == dateTime && b.meal == meal1
                       select new { p.nameProduct, p.description, p.image, bmi.ids };

            GridView1.DataSource = new1.ToList();
            GridView1.DataBind();
        }



        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Delete")
        //    {
        //        // Get the unique ID of the selected row
        //        int rowId = Convert.ToInt32(e.CommandArgument);
        //        // Check the return value of the ConfirmDelete function

        //            // Delete the row from the data source
        //            using (var context = new project7Entities4())
        //            {
        //                var item = context.buffet_menu_items.Find(rowId);
        //                context.buffet_menu_items.Remove(item);
        //                context.SaveChanges();
        //            }
        //            // Refresh the gridview
        //            GridView1.DataBind();
        //        }
        //    }
        //protected void DeleteButton_Click(object sender, EventArgs e)
        //{
        //    Button btn = sender as Button;
        //    GridViewRow gvr = btn.NamingContainer as GridViewRow;
        //    HiddenField hf = gvr.FindControl("RowIdHiddenField") as HiddenField;
        //    var rowId = hf.Value;
        //    // Delete the row from the data source
        //    using (var context = new project7Entities4())
        //    {
        //        var item = context.buffet_menu_items.Find(rowId);
        //        context.buffet_menu_items.Remove(item);
        //        context.SaveChanges();
        //    }
        //    // Refresh the gridview
        //    GridView1.DataBind();
        //}

        //protected void GridView1_DataBound(object sender, EventArgs e)
        //{

        //}

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        // Get the data item of the current row
        //        var dataItem = (project7Entities4)e.Row.DataItem;
        //        // Find the delete button
        //        Button btnDelete = e.Row.FindControl("DeleteButton") as Button;
        //        // Set the OnClientClick attribute based on the data of the current row
        //        btnDelete.OnClientClick = string.Format("return ConfirmDelete('{0}');", dataItem.buffet_menu_items.Select(x=>x.ids).FirstOrDefault();
        //    }
        //}

    }
}