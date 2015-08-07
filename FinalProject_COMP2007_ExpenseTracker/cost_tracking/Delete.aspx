<%@ Page Title="cost_trackingDelete" Language="C#" MasterPageFile="~/MasterPages/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="FinalProject_COMP2007_ExpenseTracker.cost_tracking.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <!--logged in page-->
        <asp:PlaceHolder ID="InformationShow" runat="server">
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this cost_tracking?</h3>
        <asp:FormView runat="server"
            ItemType="FinalProject_COMP2007_ExpenseTracker.Models.cost_tracking" DataKeyNames="EntryID"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the cost_tracking with EntryID <%: Request.QueryString["EntryID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete cost_tracking</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>userID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="userID" ID="userID" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>date</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="date" ID="date" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>bills</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="bills" ID="bills" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>food</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="food" ID="food" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>media</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="media" ID="media" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>clothing</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="clothing" ID="clothing" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>travel</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="travel" ID="travel" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>other</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="other" ID="other" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
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


