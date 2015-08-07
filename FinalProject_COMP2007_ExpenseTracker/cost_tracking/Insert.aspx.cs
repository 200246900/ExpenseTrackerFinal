using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using FinalProject_COMP2007_ExpenseTracker.Models;


namespace FinalProject_COMP2007_ExpenseTracker.cost_tracking
{
    public partial class Insert : System.Web.UI.Page
    {
		protected FinalProject_COMP2007_ExpenseTracker.Models.Assignment2Entities _db = new FinalProject_COMP2007_ExpenseTracker.Models.Assignment2Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                //Display correct information only if user is logged in
                InformationShow.Visible = true;
                InformationHide.Visible = false;
            }

            else
            {
                //Not logged in
                InformationShow.Visible = false;
                InformationHide.Visible = true;
            }
        }

        // This is the Insert method to insert the entered cost_tracking item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new FinalProject_COMP2007_ExpenseTracker.Models.cost_tracking();

                //Manually set user name
                item.userID = Context.User.Identity.Name;

                //Reset back to 0 if a negative number is entered
                if (item.bills<0)
                {
                    item.bills = 0;
                }
                if (item.food < 0)
                {
                    item.food = 0;
                }
                if (item.media < 0)
                {
                    item.media = 0;
                }
                if (item.clothing < 0)
                {
                    item.clothing = 0;
                }
                if (item.travel < 0)
                {
                    item.travel = 0;
                }
                if (item.other < 0)
                {
                    item.other = 0;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.cost_tracking.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}
