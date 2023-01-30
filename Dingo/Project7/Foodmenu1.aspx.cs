using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project7
{
    public partial class Foodmenu1 : System.Web.UI.Page
    {
        project7Entities obj = new project7Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime now = DateTime.Now.Date;
                if (Convert.ToInt32(DropDownList1.SelectedValue) == 1)
                {
                    now = DateTime.Now.Date;
                }
                else if (Convert.ToInt32(DropDownList1.SelectedValue) == 2)
                {
                    now = DateTime.Now.Date.AddDays(1);
                }
                else if (Convert.ToInt32(DropDownList1.SelectedValue) == 3)
                {
                    now = DateTime.Now.Date.AddDays(2);
                }

                //var noww = obj.buffet_menus.Where(x => x.date == now && x.meal == 1).Select(x=>x.id).FirstOrDefault();
                // here the special
                var new1 = from b in obj.buffet_menus
                           join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                           join p in obj.Products on bmi.menu_item_id equals p.id
                           where b.date == now && b.meal == 13
                           select new { p.nameProduct, p.description, p.image, bmi.ids };
                var new2 = new1.ToList();
                foreach (var item in new2)
                {
                    mydiv.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                        $"                               " +
                        $"     <img src=\"{item.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                        $"                                      <div class=\"media-body align-self-center\">\r\n " +
                        $"                                           <h3>{item.nameProduct}</h3>\r\n    " +
                        $"                                        <p>{item.description}</p>\r\n  " +
                        $"                                          <h5></h5>\r\n  " +
                        $"                                      </div>\r\n                                    </div>";
                }


                //------------------------------------------------breakfast
                var bbreakfast = from b in obj.buffet_menus
                                 join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                                 join p in obj.Products on bmi.menu_item_id equals p.id
                                 where b.date == now && b.meal == 1
                                 select new { p.nameProduct, p.description, p.image, bmi.ids };
                var bbreakfast1 = bbreakfast.ToList();
                foreach (var item1 in bbreakfast1)
                {
                    breakfast.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                        $"                               " +
                        $"     <img src=\"{item1.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                        $"                                      <div class=\"media-body align-self-center\">\r\n " +
                        $"                                           <h3>{item1.nameProduct}</h3>\r\n    " +
                        $"                                        <p>{item1.description}</p>\r\n  " +
                        $"                                          <h5></h5>\r\n  " +
                        $"                                      </div>\r\n                                    </div>";
                }

                //------------------------lunch

                var lunch1 = from b in obj.buffet_menus
                             join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                             join p in obj.Products on bmi.menu_item_id equals p.id
                             where b.date == now && b.meal == 2
                             select new { p.nameProduct, p.description, p.image, bmi.ids };
                var lunch2 = lunch1.ToList();
                foreach (var item3 in lunch2)
                {
                    lunch.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                        $"                               " +
                        $"     <img src=\"{item3.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                        $"                                      <div class=\"media-body align-self-center\">\r\n " +
                        $"                                           <h3>{item3.nameProduct}</h3>\r\n    " +
                        $"                                        <p>{item3.description}</p>\r\n  " +
                        $"                                          <h5></h5>\r\n  " +
                        $"                                      </div>\r\n                                    </div>";
                }
                //------------------------dinner
                var dinner1 = from b in obj.buffet_menus
                              join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                              join p in obj.Products on bmi.menu_item_id equals p.id
                              where b.date == now && b.meal == 3
                              select new { p.nameProduct, p.description, p.image, bmi.ids };
                var dinner2 = dinner1.ToList();
                foreach (var item3 in dinner2)
                {
                    dinner.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                        $"                               " +
                        $"     <img src=\"{item3.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                        $"                                      <div class=\"media-body align-self-center\">\r\n " +
                        $"                                           <h3>{item3.nameProduct}</h3>\r\n    " +
                        $"                                        <p>{item3.description}</p>\r\n  " +
                        $"                                          <h5></h5>\r\n  " +
                        $"                                      </div>\r\n                                    </div>";
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now.Date;
            if (Convert.ToInt32(DropDownList1.SelectedValue) == 1)
            {
                now = DateTime.Now.Date;
            }
            else if (Convert.ToInt32(DropDownList1.SelectedValue) == 2)
            {
                now = DateTime.Now.Date.AddDays(1);
            }
            else if (Convert.ToInt32(DropDownList1.SelectedValue) == 3)
            {
                now = DateTime.Now.Date.AddDays(2);
            }

            //var noww = obj.buffet_menus.Where(x => x.date == now && x.meal == 1).Select(x=>x.id).FirstOrDefault();
            // here the special
            var new1 = from b in obj.buffet_menus
                       join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                       join p in obj.Products on bmi.menu_item_id equals p.id
                       where b.date == now && b.meal == 13
                       select new { p.nameProduct, p.description, p.image, bmi.ids };
            var new2 = new1.ToList();
            mydiv.InnerHtml = "";
            foreach (var item in new2)
            {

                mydiv.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                    $"                               " +
                    $"     <img src=\"{item.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                    $"                                      <div class=\"media-body align-self-center\">\r\n " +
                    $"                                           <h3>{item.nameProduct}</h3>\r\n    " +
                    $"                                        <p>{item.description}</p>\r\n  " +
                    $"                                          <h5></h5>\r\n  " +
                    $"                                      </div>\r\n                                    </div>";
            }


            //------------------------------------------------breakfast
            var bbreakfast = from b in obj.buffet_menus
                             join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                             join p in obj.Products on bmi.menu_item_id equals p.id
                             where b.date == now && b.meal == 1
                             select new { p.nameProduct, p.description, p.image, bmi.ids };
            var bbreakfast1 = bbreakfast.ToList();
            breakfast.InnerHtml = "";
            foreach (var item1 in bbreakfast1)
            {
                breakfast.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                    $"                               " +
                    $"     <img src=\"{item1.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                    $"                                      <div class=\"media-body align-self-center\">\r\n " +
                    $"                                           <h3>{item1.nameProduct}</h3>\r\n    " +
                    $"                                        <p>{item1.description}</p>\r\n  " +
                    $"                                          <h5></h5>\r\n  " +
                    $"                                      </div>\r\n                                    </div>";
            }

            //------------------------lunch

            var lunch1 = from b in obj.buffet_menus
                         join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                         join p in obj.Products on bmi.menu_item_id equals p.id
                         where b.date == now && b.meal == 2
                         select new { p.nameProduct, p.description, p.image, bmi.ids };
            var lunch2 = lunch1.ToList();
            lunch.InnerHtml = "";
            foreach (var item3 in lunch2)
            {
                lunch.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                    $"                               " +
                    $"     <img src=\"{item3.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                    $"                                      <div class=\"media-body align-self-center\">\r\n " +
                    $"                                           <h3>{item3.nameProduct}</h3>\r\n    " +
                    $"                                        <p>{item3.description}</p>\r\n  " +
                    $"                                          <h5></h5>\r\n  " +
                    $"                                      </div>\r\n                                    </div>";
            }
            //------------------------dinner
            var dinner1 = from b in obj.buffet_menus
                          join bmi in obj.buffet_menu_items on b.id equals bmi.buffet_menu_id
                          join p in obj.Products on bmi.menu_item_id equals p.id
                          where b.date == now && b.meal == 3
                          select new { p.nameProduct, p.description, p.image, bmi.ids };
            var dinner2 = dinner1.ToList();
            dinner.InnerHtml = "";
            foreach (var item3 in dinner2)
            {
                dinner.InnerHtml += $" <div class=\"single_food_item media col-5\">\r\n    " +
                    $"                               " +
                    $"     <img src=\"{item3.image}\" class=\"mr-3\" alt=\"...\">\r\n  " +
                    $"                                      <div class=\"media-body align-self-center\">\r\n " +
                    $"                                           <h3>{item3.nameProduct}</h3>\r\n    " +
                    $"                                        <p>{item3.description}</p>\r\n  " +
                    $"                                          <h5></h5>\r\n  " +
                    $"                                      </div>\r\n                                    </div>";
            }
        }
    }
}