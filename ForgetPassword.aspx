<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"  CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                  <table style="width: 935px; height: 277px" bgcolor="#99CCFF" >
                      <tr>
                          <td align="center" valign="top" width="300">
                              <table border="0" cellpadding="0" cellspacing="0" 
                                  style="width: 926px; height: 282px;">
                                  <tr>
                                      <td bgcolor="#663300" 
                                              
                                          style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #FFFFFF;" 
                                          class="style16" align="center">
                                          Login</td>
                                  </tr>
                                  <tr>
                                      <td align="center" valign="top" class="style15" >
                                          <asp:Panel ID="Panel1" runat="server" Height="250px" BorderColor="#CC9900" 
                                                          BorderStyle="Solid" BorderWidth="1px" Width="928px">
                                              <table border="0" 
    cellpadding="0" cellspacing="0" 
                                              style="width: 561px; height: 159px; margin-left: 0px;">
                                                  <tr>
                                                      <td align="left" class="style29" valign="top">
                                                      </td>
                                                      <td align="left" class="style30" valign="top">
                                                      </td>
                                                      <td align="left" class="style31" valign="top">
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td align="left" valign="top" class="auto-style8">
                                                      </td>
                                                      <td align="left" valign="middle" class="auto-style9" style="font-size: large">
                                                          Enter Email-ID
                                                      </td>
                                                      <td align="left" valign="middle" class="auto-style10" >
                                                          <asp:TextBox ID="txtUserName" runat="server" Width="240px" CssClass="textbox" Font-Size="Large" Height="39px"></asp:TextBox>
                                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                          ControlToValidate="txtUserName" ErrorMessage="*" ValidationGroup="LoginGr"></asp:RequiredFieldValidator>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td align="left" valign="top" class="style42">
                                                      </td>
                                                      <td align="left" valign="top" class="style43">
                                                      </td>
                                                      <td align="left" valign="middle" class="style44">
                                                          &nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td align="left" valign="top" class="style19">
                                                          &nbsp;</td>
                                                      <td align="left" valign="top" class="style25">
                                                          &nbsp;</td>
                                                      <td align="left" valign="top">
                                                          <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                                                          Text="Send" Width="175px" BackColor="#FF9900" BorderColor="#CC6600" 
                                                                      BorderStyle="Solid" BorderWidth="1px" ValidationGroup="LoginGr" Font-Size="Large" Height="51px" />
                                                      </td>
                                                  </tr>
                                              </table>
                                          </asp:Panel>
                                      </td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <style type="text/css">

        .style16
        {
            height: 38px;
        }


        .style15
        {
            height: 129px;
            width: 520px;
        }
        

        .style29
        {
            width: 31px;
            height: 40px;
        }
        .style30
        {
            width: 161px;
            height: 40px;
        }
        .style31
        {
            height: 40px;
        }
        .style32
        {
            width: 31px;
            height: 29px;
        }
        .style33
        {
            width: 161px;
            height: 29px;
        }
        .style34
        {
            height: 29px;
        }


        input.textbox
       {
       
         float:left;
       
         border: 1px solid #FFC469;
        } 
        

        .style42
        {
            width: 31px;
            height: 35px;
        }
        .style43
        {
            width: 161px;
            height: 35px;
        }
        .style44
        {
            height: 35px;
        }
        

        .style19
        {
            width: 31px;
        }
        

        .style25
        {
            width: 161px;
        }


        .auto-style8 {
            width: 31px;
            height: 78px;
        }
        .auto-style9 {
            width: 161px;
            height: 78px;
        }
        .auto-style10 {
            height: 78px;
        }


        </style>

</asp:Content>
