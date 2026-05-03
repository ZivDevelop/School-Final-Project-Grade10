<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FINALPROJECT.Login.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/CSS/Login.css") %>" rel="stylesheet" /> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="MoveRight">
  username:  <input type="text" name="userName" id="userName"/> <h1 runat="server" id="userNameTXT" onsubmit="usernamecheck()"></h1>
            <br />
 password:    <input type="password" name="password" id="password"/><h1 runat="server" id="passwordTXT"></h1>
            <br />
 first name:   <input type="text" name="firstName" id="firstName"/><h1 runat="server" id="firstNameTXT"></h1>
            <br />
 last name:   <input type="text" name="lastName" id="lastName"/><h1 runat="server" id="lastNameTXT"></h1>
           <br />
 number:   <input type="text" name="number" id="number"/><h1 runat="server" id="numberTXT"></h1>
                      <br />
 email:   <input type="text" name="email" id="email"/><h1 runat="server" id="emailTXT"></h1>
                                  <br />
 birth:  <br /> <input type="date" name="date" id="date" /><h1 runat="server" id="dateTXT"></h1>
           <br />
 gender:  <br />   <input type="radio" id="genderMale" name="userGender" value="Male" /> <label for="genderMale">זכר</label>
             <input type="radio" id="genderFemale" name="userGender" value="Female" /> <label for="genderFemale">נקבה</label>
            <h1 runat="server" id="radioTXT"> </h1>

           confirm: <input type="submit" name="submit" id="submit" />
        <h1 id="isAdmin" runat="server">                  </h1>
            </div>

</asp:Content>
