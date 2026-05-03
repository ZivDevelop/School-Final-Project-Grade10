<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Page5.aspx.cs" Inherits="FINALPROJECT.Pages.Page5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/CSS/PagesBasic.css") %>" rel="stylesheet" /> 


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="TableUsers">
                                      <h1>
table users!!!


        </h1>
        <div id="tableDiv" runat="server">


        </div>
          <br />
          <a id="Contact" href="mailto:ziv272009@gmail.com"> ליצירת קשר</a>
      </div>
</asp:Content>
