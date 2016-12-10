using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodList
{
    public partial class list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // display the food items in a gridview
            getFoodLists();
        }

        protected void getFoodLists()
        {
            // connect to the database
            var conn = new foodlistEntities();

            // run the query
            var FoodLists = from d in conn.FoodLists
                            select d;

            // display the resulted query in a gridview
            grdFoodList.DataSource = FoodLists.ToList();
            grdFoodList.DataBind();
        }

        protected void grdItem_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // find out what row is to be deleted
            Int32 gridindex = e.RowIndex;

            // find the ID value in said selected row 
            Int32 FoodListID = Convert.ToInt32(grdFoodList.DataKeys[gridindex].Value);

            // connect to the database
            var conn = new foodlistEntities();

            // delete the selected item

            FoodList d = new FoodList();
            d.FoodListID = FoodListID;
            conn.FoodLists.Attach(d);
            conn.FoodLists.Remove(d);
            conn.SaveChanges();

            // refresh the list yummy food ;)
            getFoodLists();
        }
    }
}