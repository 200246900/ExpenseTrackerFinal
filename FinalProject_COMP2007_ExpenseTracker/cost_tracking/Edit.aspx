<%@ Page Title="cost_trackingEdit" Language="C#" MasterPageFile="~/MasterPages/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="FinalProject_COMP2007_ExpenseTracker.cost_tracking.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <!--logged in page-->
        <asp:PlaceHolder ID="InformationShow" runat="server">
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="FinalProject_COMP2007_ExpenseTracker.Models.cost_tracking" DefaultMode="Edit" DataKeyNames="EntryID"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the cost_tracking with EntryID <%: Request.QueryString["EntryID"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit cost_tracking</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="date" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="bills" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="food" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="media" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="clothing" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="travel" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="other" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
        </asp:PlaceHolder>
         <!--Not logged in page-->
        <asp:PlaceHolder ID="InformationHide" runat="server">
            <div class="jumbotron col-md-10 col-md-push-1">
                <h1 class="text-center">Unauthorized Access</h1>
                <p class="text-center">TO access the content on this part of the site please login</p>
            </div>
        </asp:PlaceHolder>
    </div>
</asp:Content>

