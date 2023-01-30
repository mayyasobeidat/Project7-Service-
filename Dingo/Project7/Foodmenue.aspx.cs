using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{

    public partial class WebForm7 : System.Web.UI.Page
    {
        project7Entities db = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)

        {// number of product where category id = 1

            var data = from p in db.Products where p.Id_category == 1 select p;
            int count = data.Count();
            // Label1.Text = count.ToString();
            // the half of count
            int c1 = count / 2;
            // Label2.Text = c1.ToString();

            var data1 = from p in db.Products where p.id <= (c1) select p;
            //var data1 = from p1 in db.Products 
            foreach (var p in data1)
            {
                nouran.InnerHtml += $" <div class=\"single_food_item media\">\r\n     " +
                    $"                                   <img src='{p.image}' class=\"mr-3\" alt=\"...\"   width='165px !important'\r\n  " +
                    $"          height='163px !important' >\r\n                                      " +
                    $"  <div class=\"media-body align-self-center\">\r\n                         " +
                    $"" +
                    $"                   <h3>{p.nameProduct}</h3>\r\n                      " +
                    $"                      <p>They're wherein heaven seed hath nothing</p>\r\n            " +
                    $"                                <h5>" + p.description + "</h5>\r\n                " +
                    "                        </div>\r\n                      " +
                    "              </div>";



            }
            var data2_Break_Right = from p in db.Products where p.id > (3) && p.id<=6 select p;
            //var data1 = from p1 in db.Products 
            foreach (var p in data2_Break_Right)
            {
                nouran1.InnerHtml += $" <div class=\"single_food_item media\">\r\n     " +
                    $"                                   <img src='{p.image}' class=\"mr-3\" alt=\"...\"   width='165px !important'\r\n  " +
                    $"          height='163px !important' >\r\n                                      " +
                    $"  <div class=\"media-body align-self-center\">\r\n                         " +
                    $"" +
                    $"                   <h3>{p.nameProduct}</h3>\r\n                      " +
                    $"                      <p>They're wherein heaven seed hath nothing</p>\r\n            " +
                    $"                                <h5>" + p.description + "</h5>\r\n                " +
                    "                        </div>\r\n                      " +
                    "              </div>";



            }

            //--------------------------------------------------------------------------------------------------------

            var lunch = from p in db.Products where p.Id_category == 2 select p;
            int count_lunch = lunch.Count();
            int Half = count_lunch / 2;
            var lunch2 = from p in db.Products where p.id >= 7 && p.id < 10 select p;
            foreach (var p1 in lunch2)
            {
                lunch12.InnerHtml += $" <div class=\"single_food_item media\">\r\n     " +
                    $"                                   <img src='{p1.image}' class=\"mr-3\" alt=\"...\"   width='165px !important'\r\n  " +
                    $"          height='163px !important' >\r\n                                      " +
                    $"  <div class=\"media-body align-self-center\">\r\n                         " +
                    $"" +
                    $"                   <h3>{p1.nameProduct}</h3>\r\n                      " +
                    $"                      <p>They're wherein heaven seed hath nothing</p>\r\n            " +
                    $"                                <h5>" + p1.description + "</h5>\r\n                " +
                    "                        </div>\r\n                      " +
                    "              </div>";
            }

            var lunch1 = from p in db.Products where p.Id_category == 2 select p;
            int count_lunch1 = lunch.Count();
            int Half1 = count_lunch / 2;
            var lunch21 = from p in db.Products where p.id >= 10 && p.Id_category == 2 && p.id < 13 select p;
            foreach (var p1 in lunch21)
            {
                lunch112.InnerHtml += $" <div class=\"single_food_item media\">\r\n     " +
                    $"                                   <img src='{p1.image}' class=\"mr-3\" alt=\"...\"   width='165px !important'\r\n  " +
                    $"          height='163px !important' >\r\n                                      " +
                    $"  <div class=\"media-body align-self-center\">\r\n                         " +
                    $"" +
                    $"                   <h3>{p1.nameProduct}</h3>\r\n                      " +
                    $"                      <p>They're wherein heaven seed hath nothing</p>\r\n            " +
                    $"                                <h5>" + p1.description + "</h5>\r\n                " +
                    "                        </div>\r\n                      " +
                    "              </div>";
            }

            //-----------------------------------------------------------------------------------------------------------------

            var dinner1 = from p in db.Products where p.Id_category == 3 select p;
            int counntDinner = dinner1.Count();
            var dinner2 = from p in db.Products where p.Id_category == 3 && p.id >= 13 && p.id <= 15 select p;
            foreach (var p in dinner2)
            {
                dinner112.InnerHtml += $" <div class=\"single_food_item media\">\r\n     " +
                    $"                                   <img src='{p.image}' class=\"mr-3\" alt=\"...\"   width='165px !important'\r\n  " +
                    $"          height='163px !important' >\r\n                                      " +
                    $"  <div class=\"media-body align-self-center\">\r\n                         " +
                    $"" +
                    $"                   <h3>{p.nameProduct}</h3>\r\n                      " +
                    $"                      <p>They're wherein heaven seed hath nothing</p>\r\n            " +
                    $"                                <h5>" + p.description + "</h5>\r\n                " +
                    "                        </div>\r\n                      " +
                    "              </div>";
            }


            var dinner2Half = from p in db.Products where p.Id_category == 3 && p.id > 15 && p.id <= 22 select p;
            foreach (var p in dinner2Half)
            {
                dinner113.InnerHtml += $" <div class=\"single_food_item media\">\r\n     " +
                    $"                                   <img src='{p.image}' class=\"mr-3\" alt=\"...\"   width='165px !important'\r\n  " +
                    $"          height='163px !important' >\r\n                                      " +
                    $"  <div class=\"media-body align-self-center\">\r\n                         " +
                    $"" +
                    $"                   <h3>{p.nameProduct}</h3>\r\n                      " +
                    $"                      <p>They're wherein heaven seed hath nothing</p>\r\n            " +
                    $"                                <h5>" + p.description + "</h5>\r\n                " +
                    "                        </div>\r\n                      " +
                    "              </div>";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BOOKING_batool.aspx");
        }
    }
}