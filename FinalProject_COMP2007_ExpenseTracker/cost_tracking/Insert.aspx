<%@ Page Title="cost_trackingInsert" Language="C#" MasterPageFile="~/MasterPages/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="FinalProject_COMP2007_ExpenseTracker.cost_tracking.Insert" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <!--logged in page-->
        <asp:PlaceHolder ID="InformationShow" runat="server">
            <p>&nbsp;</p>
            <asp:FormView runat="server"
                ItemType="FinalProject_COMP2007_ExpenseTracker.Models.cost_tracking" DefaultMode="Insert"
                InsertItemPosition="FirstItem" InsertMethod="InsertItem"
                OnItemCommand="ItemCommand" RenderOuterTable="false">
                <InsertItemTemplate>
                    <fieldset class="form-horizontal">
                        <legend>Insert cost_tracking</legend>
                        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                        <asp:DynamicControl Mode="Insert" DataField="date" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="bills" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="food" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="media" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="clothing" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="travel" runat="server" />
                        <asp:DynamicControl Mode="Insert" DataField="other" runat="server" />
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                                <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                            </div>
                        </div>
                    </fieldset>
                </InsertItemTemplate>
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
