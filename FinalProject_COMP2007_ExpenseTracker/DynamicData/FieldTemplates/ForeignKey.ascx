<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="FinalProject_COMP2007_ExpenseTracker.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

