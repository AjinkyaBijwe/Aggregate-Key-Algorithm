<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master"  CodeFile="Registration.aspx.cs" Inherits="Feedback" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                  <table border="0" cellpadding="0" cellspacing="0" style="width: 935px" 
                      bgcolor="#6699FF">
                      <tr>
                          <td class="style12" align="center" bgcolor="#3366CC" 
                              
                              style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #000000">
                              Registration Form
                          </td>
                      </tr>
                      <tr>
                          <td align="left" valign="middle">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td align="center" valign="middle">
                              <table border="1"  cellpadding="1" cellspacing="1" 
                                  width="825">
                                  <tr>
                                      <td align="center" valign="top">
                                          <table border="0" cellpadding="0" cellspacing="0" style="font-size: large; width: 893px;">
                                              <tr>
                                                  <td align="left" valign="top" class="auto-style12">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style17">
                                                      </td>
                                                  <td align="left" valign="top" class="auto-style8">
                                                      </td>
                                              </tr>
                                              <tr style="font-weight: bold">
                                                  <td align="left" valign="top" class="auto-style16" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style18" style="font-size: large">
                                                      First Name
                                                  </td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      <asp:TextBox ID="txtFirstName" runat="server" Width="480px" 
                                                          CssClass="textbox" Font-Size="Large" Height="30px"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                          ControlToValidate="txtFirstName" ErrorMessage="Please Enter First Name" Font-Size="X-Small"></asp:RequiredFieldValidator>
                                                  </td>
                                              </tr>
                                              <tr style="font-weight: bold">
                                                  <td align="left" valign="top" class="auto-style16" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style18" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr style="font-weight: bold">
                                                  <td align="left" valign="top" class="auto-style16" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style18" style="font-size: large">
                                                      Last Name</td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      <asp:TextBox ID="txtLastName" runat="server" Width="480px" 
                                                          CssClass="textbox" Font-Size="Large" Height="30px"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                          ControlToValidate="txtLastName" ErrorMessage="Please Enter Last Name" Font-Size="X-Small"></asp:RequiredFieldValidator>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      Password
                                                  </td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      <asp:TextBox ID="txtPass" runat="server" Width="480px" CssClass="textbox" 
                                                          TextMode="Password" Font-Size="Large" Height="30px"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                          ControlToValidate="txtPass" ErrorMessage="Password Cannot Be Blank" Font-Size="X-Small"></asp:RequiredFieldValidator>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style15" valign="top" style="font-size: large">
                                                  </td>
                                                  <td align="left" class="auto-style10" valign="top" style="font-size: large">
                                                      Confirm Password </td>
                                                  <td align="left" valign="top" class="auto-style11" style="font-size: large">
                                                      <asp:TextBox ID="txtConfmPass" runat="server" Width="480px" CssClass="textbox" 
                                                          TextMode="Password" Font-Size="Large" Height="30px"></asp:TextBox>
                                                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                          ControlToCompare="txtPass" ControlToValidate="txtConfmPass" 
                                                          ErrorMessage="Password  Not Match" Font-Size="X-Small"></asp:CompareValidator>
                                                                                </td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      Email                                                   </td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      <asp:TextBox ID="txtEmail" runat="server" Width="480px" CssClass="textbox" Font-Size="Large" Height="30px"></asp:TextBox>
                                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                          ControlToValidate="txtEmail" ErrorMessage="Enter Valid Email ID" 
                                                          ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="X-Small"></asp:RegularExpressionValidator>
                                                      &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                          ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      Mobile Number                                                   </td>
                                                  <td align="left" valign="top" class="auto-style9" style="font-size: large">
                                                      <asp:TextBox ID="txtMobileNo" runat="server" Width="480px" CssClass="textbox" 
                                                          MaxLength="10" Font-Size="Large" Height="30px"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                          ControlToValidate="txtMobileNo" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style14" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style19" valign="top" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td align="left" valign="top" class="auto-style16" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style18" style="font-size: large">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td align="left" class="auto-style16" valign="top">
                                                      &nbsp;</td>
                                                  <td align="left" class="auto-style18" valign="top">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9">
                                                          <asp:Button ID="btnSignUpSubmit" runat="server" onclick="btnSignUpSubmit_Click" 
                                                                          Text="Submit" Width="300px" BackColor="#FF9900" BorderColor="#CC6600" 
                                                                      BorderStyle="Solid" BorderWidth="1px" 
                                                          ValidationGroup="Register" Height="36px" />
                                                      </td>
                                              </tr>
                                              <tr>
                                                  <td align="left" valign="top" class="auto-style16">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style18">
                                                      &nbsp;</td>
                                                  <td align="left" valign="top" class="auto-style9">
                                                      &nbsp;</td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
                      <tr>
                          <td align="left" valign="middle">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td align="left" valign="middle">
                          </td>
                      </tr>
                      <tr>
                          <td align="left" valign="middle">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td align="left" valign="middle">
                              &nbsp;</td>
                      </tr>
    </table>

</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">
    <style type="text/css">

        input.textbox, textarea
       {
       
         float:left;
       
         border: 1px solid #FFC469;
        } 
        input.textbox:hover, input.textbox:focus 
        { 
        width:260px;    
        padding:3px 32px 3px 3px; 
        } 

   
       .style12
    {
        height: 47px;
    }
    .style16
    {
        height: 37px;
    }

   
        .auto-style8 {
            height: 37px;
            width: 697px;
        }
        .auto-style9 {
            width: 697px;
        }
        .auto-style10 {
            font-family: Roboto;
            font-size: 12px;
            font-weight: bold;
            color: #000000;
            line-height: 20px;
            text-decoration: none;
            height: 47px;
            width: 345px;
        }
        .auto-style11 {
            width: 697px;
            height: 47px;
        }
        .auto-style12 {
            height: 37px;
            width: 110px;
        }
        .auto-style14 {
            font-family: Roboto;
            font-size: 12px;
            font-weight: bold;
            color: #000000;
            line-height: 20px;
            text-decoration: none;
            width: 110px;
        }
        .auto-style15 {
            font-family: Roboto;
            font-size: 12px;
            font-weight: bold;
            color: #000000;
            line-height: 20px;
            text-decoration: none;
            height: 47px;
            width: 110px;
        }
        .auto-style16 {
            width: 110px;
        }
        .auto-style17 {
            height: 37px;
            width: 345px;
        }
        .auto-style18 {
            width: 345px;
        }
        .auto-style19 {
            font-family: Roboto;
            font-size: 12px;
            font-weight: bold;
            color: #000000;
            line-height: 20px;
            text-decoration: none;
            width: 345px;
        }

   
    </style>
<script type="text/javascript"  language="Javascript">
      
       function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : event.keyCode;
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
      
    </script>
</asp:Content>

