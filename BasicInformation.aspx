<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="BasicInformation.aspx.cs" Inherits="BasicInformation" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
                              <table border="0" cellpadding="0" 
    cellspacing="0"   bgcolor="#99CCFF" 
                                  style="width: 963px; height: auto; table-layout: auto;">
                                  <tr>
                                      <td align="center" valign="middle">
                                          <table border="1" bordercolor="#EFF0F8" cellpadding="1" cellspacing="1" width="730px" style="height: 630px">
                                              <tr>
                                                  <td align="center" valign="top">
                                                      <table border="0" cellpadding="0" cellspacing="0" frame="border" 
                                                          style="width: 952px; height: 664px;">
                                                          <tr>
                                                              <td align="center" valign="middle" colspan="2" 
                                                      
                                        style="padding: 2px; border: thin solid #000000; font-size: large; font-weight: bold; color: #FFFFFF;" bgcolor="#3366CC" class="auto-style14">
                                                                  Basic Information</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large; row: 55px;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Name : </td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large; row: 55px;" bgcolor="#6666FF">
                                                                  <asp:Label ID="lblName" runat="server"></asp:Label>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Email ID :</td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:Label ID="lblEmailID" runat="server"></asp:Label>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Mobile No. :
                                                              </td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:Label ID="lblMobNo" runat="server"></asp:Label>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Optional Mobile No.</td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:TextBox ID="txtMobileNo2" runat="server" Width="301px" CssClass="textbox" 
                                                                      MaxLength="10" Height="35px" Font-Size="X-Large" ></asp:TextBox>
                                                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                          ControlToValidate="txtMobileNo2" ValidationExpression="^[0-9]{10}">*</asp:RegularExpressionValidator>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  District :</td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:TextBox ID="txtDistrict" runat="server" CssClass="textbox" Width="301px" Height="35px" Font-Size="X-Large"></asp:TextBox>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style12" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  City :</td>
                                                              <td align="left" valign="middle" class="auto-style13" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:TextBox ID="txtCity" runat="server" Width="300px" CssClass="textbox" Height="35px" Font-Size="X-Large" ></asp:TextBox>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Permanant Address :</td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:TextBox ID="txtPerAddress" runat="server" Width="544px" CssClass="textbox" 
                                                          Height="40px" TextMode="MultiLine" Font-Size="X-Large" ></asp:TextBox>
                                                                  </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Current Address :</td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:TextBox ID="txtCurAddress" runat="server" Height="40px" TextMode="MultiLine" 
                                                          Width="542px" CssClass="textbox" Font-Size="X-Large"></asp:TextBox>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Gender :</td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:DropDownList ID="ddlGender" runat="server" Height="47px" Width="192px" Font-Size="X-Large">
                                                                      <asp:ListItem>Male</asp:ListItem>
                                                                      <asp:ListItem>Female</asp:ListItem>
                                                                  </asp:DropDownList>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style12" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Marital Status :</td>
                                                              <td align="left" valign="middle" class="auto-style13" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:DropDownList ID="ddlMaritalStatus" runat="server" Height="47px" 
                                                          Width="150px" Font-Size="X-Large">
                                                                      <asp:ListItem>Married</asp:ListItem>
                                                                      <asp:ListItem>Unmarried</asp:ListItem>
                                                                  </asp:DropDownList>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style10" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Cast :</td>
                                                              <td align="left" valign="middle" class="auto-style11" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:TextBox ID="txtCast" runat="server" Width="299px" CssClass="textbox" Height="40px" Font-Size="X-Large" 
                                            ></asp:TextBox>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="left" class="auto-style15" valign="middle" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#9966FF">
                                                                  &nbsp;
                                                                  Date Of&nbsp; Birth :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                              <td align="left" valign="middle" class="auto-style16" style="font: roboto; font-family: Roboto; font-size: x-large;" bgcolor="#6666FF">
                                                                  <asp:Panel ID="Panel1" runat="server" Width="384px">
                                                                      <asp:TextBox ID="TextBox1" runat="server" Width="206px" Font-Size="X-Large" Height="47px">DD/MM/YYYY</asp:TextBox>
                                                                  </asp:Panel>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td align="center" class="auto-style9" valign="bottom" style="padding: 5px; font-family: roboto" bgcolor="#6600FF" colspan="2">
                                                                  &nbsp;<asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                                          Text="Submit" Width="253px" BackColor="#CCFF66" ForeColor="Black" Height="38px" />
                                                              </td>
                                                          </tr>
                                                          </table>
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
                                  </table>


</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <script type="text/javascript" language="javascript" >

        function displayCalendar()
        {
        var datePicker = document.getElementById('datePicker');
        datePicker.style.display = 'block';
        }
         function isNumberKey(evt)
       {
          var charCode = (evt.which) ? evt.which : event.keyCode;
          if (charCode != 46 && charCode > 31 
            && (charCode < 48 || charCode > 57))
             return false;

          return true;
       }
        </script>
        
<style type="text/css">

        .style11
        {
            height: 25px;
            width: 355px;
        }
      
        .style18
        {
            width: 52px;
        }
                
           input.textbox
       {
       
         float:left;
         border: 1px solid #FFC469;
    } 
                
          textarea
       {
       
         float:left;
         border: 1px solid #FFC469;
    } 

        .style17
     {
            height: 27px;
            width: 355px;
        }
      
       
        .style13
        {
            width: 71px;
        }
        .style21
        {
            height: 24px;
            width: 355px;
        }

    .style22
    {
        width: 52px;
        height: 25px;
    }
    .style23
    {
        height: 25px;
        width: 524px;
    }

   
       
   
        .style24
    {
        width: 524px;
    }
    .style25
    {
        width: 52px;
        height: 24px;
    }
    .style26
    {
        width: 524px;
        height: 24px;
    }

   
       
   
        .auto-style9 {
        height: 24px;
        }

   
       
   
        .auto-style10 {
        height: 55px;
        width: 311px;
    }
    .auto-style11 {
        width: 663px;
        height: 55px;
    }
    .auto-style12 {
        height: 54px;
        width: 311px;
    }
    .auto-style13 {
        width: 663px;
        height: 54px;
    }
    .auto-style14 {
        height: 41px;
    }
    .auto-style15 {
        height: 63px;
        width: 311px;
    }
    .auto-style16 {
        width: 663px;
        height: 63px;
    }

   
       
   
        </style>


</asp:Content>
