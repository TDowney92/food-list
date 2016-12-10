using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodList
{
    public partial class foodlist_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false) {
                if (!String.IsNullOrEmpty(Request.QueryString["FoodListID"]))
                {
                    // get the id from the url
                    Int32 FoodListID = Convert.ToInt32(Request.QueryString["FoodListID"]);

                    // connect to the server
                    var conn = new foodlistEntities();

                    // look up the selected area
                    var objFood = (from d in conn.FoodLists
                                  where d.FoodListID == FoodListID
                                  select d).FirstOrDefault();

                    //populate the new change from the form
                    txtName.Text = objFood.Name;
                    txtAmount.Text = objFood.Amount.ToString();
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // check to see if adding or editing
            Int32 FoodListID = 0;

            if(!String.IsNullOrEmpty(Request.QueryString["FoodListID"]))
            {
                FoodListID = Convert.ToInt32(Request.QueryString["FoodListID"]);
            }

            // connect to the data
            var conn = new foodlistEntities();

            // use the food list class to make new food list item in the list

            FoodList d = new FoodList();

            //fill the properties of the new food item
            d.Name = txtName.Text;
            d.Amount = Convert.ToInt32(txtAmount.Text);

            // save the new food item to the databse
            if (FoodListID == 0)
            {
                conn.FoodLists.Add(d);
            }
            else
            {
                d.FoodListID = FoodListID;
                conn.FoodLists.Attach(d);
                conn.Entry(d).State = System.Data.Entity.EntityState.Modified;
            }
            conn.SaveChanges();

            // Redirect the user back to the list page
            Response.Redirect("list.aspx");
        }
    }
}