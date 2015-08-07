<%@ Page Title="cost_trackingList" Language="C#" MasterPageFile="~/MasterPages/Site.Master" CodeBehind="Default.aspx.cs" Inherits="FinalProject_COMP2007_ExpenseTracker.cost_tracking.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>cost_tracking List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <!--logged in page-->
        <asp:PlaceHolder ID="InformationShow" runat="server">
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="EntryID"
                ItemType="FinalProject_COMP2007_ExpenseTracker.Models.cost_tracking"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    There are no entries found for cost_tracking
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>
                                    <asp:LinkButton Text="userID" CommandName="Sort" CommandArgument="userID" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="date" CommandName="Sort" CommandArgument="date" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="bills" CommandName="Sort" CommandArgument="bills" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="food" CommandName="Sort" CommandArgument="food" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="media" CommandName="Sort" CommandArgument="media" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="clothing" CommandName="Sort" CommandArgument="clothing" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="travel" CommandName="Sort" CommandArgument="travel" runat="Server" />
                                </th>
                                <th>
                                    <asp:LinkButton Text="other" CommandName="Sort" CommandArgument="other" runat="Server" />
                                </th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr runat="server" id="itemPlaceholder" />
                        </tbody>
                    </table>
                    <asp:DataPager PageSize="5" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                            <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                            <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        </Fields>
                    </asp:DataPager>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:DynamicControl runat="server" DataField="userID" ID="userID" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="date" ID="date" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="bills" ID="bills" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="food" ID="food" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="media" ID="media" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="clothing" ID="clothing" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="travel" ID="travel" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="other" ID="other" Mode="ReadOnly" />
                        </td>
                        <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/cost_tracking/Details", Item.EntryID) %>' Text="Details" />
                            | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/cost_tracking/Edit", Item.EntryID) %>' Text="Edit" />
                            | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/cost_tracking/Delete", Item.EntryID) %>' Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
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

