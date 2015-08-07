using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using FinalProject_COMP2007_ExpenseTracker.Models;

namespace FinalProject_COMP2007_ExpenseTracker.cost_tracking
{
    public partial class Delete : System.Web.UI.Page
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

        // This is the Delete methd to delete the selected cost_tracking item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int EntryID)
        {
            using (_db)
            {
                var item = _db.cost_tracking.Find(EntryID);

                if (item != null)
                {
                    _db.cost_tracking.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single cost_tracking item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public FinalProject_COMP2007_ExpenseTracker.Models.cost_tracking GetItem([FriendlyUrlSegmentsAttribute(0)]int? EntryID)
        {
            if (EntryID == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.cost_tracking.Where(m => m.EntryID == EntryID).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

