<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                  <table style="width: 935px; height: 334px" bgcolor="#99CCFF" >
                      <tr>
                          <td align="center" valign="top" width="300">
                              <table border="0" cellpadding="0" cellspacing="0" 
                                  style="width: 926px; height: 282px;">
                                  <tr>
                                      <td bgcolor="#9966FF" 
                                              
                                          style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; color: #FFFFFF;" 
                                          class="style16" align="center">
                                          <asp:Label ID="lbllog" runat="server"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="center" valign="top" class="style15" >
                                                      <asp:Panel ID="Panel1" runat="server" Height="341px" BorderColor="#CC9900" 
                                                          BorderStyle="Solid" BorderWidth="1px" Width="937px" BackColor="#B6BDFC">
                                                          <table border="0" 
    cellpadding="0" cellspacing="0" 
                                              style="width: 644px; height: 310px; margin-left: 0px;">
                                                              <tr>
                                                                  <td align="center" class="auto-style8" valign="top">
                                                                  </td>
                                                                  <td align="left" class="auto-style8" valign="top">
                                                                      <br />
                                                                      <br />
                                                                      <br />
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td align="center" valign="middle" class="style32" style="font-size: large">
                                                                      Email-ID or Mobile No
                                                                      </td>
                                                                  <td align="left" valign="middle" class="style34" >
                                                                      <asp:TextBox ID="txtUserName" runat="server" Width="353px" CssClass="textbox" Height="34px" Font-Size="Large"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                          ControlToValidate="txtUserName" ErrorMessage="*" ValidationGroup="LoginGr"></asp:RequiredFieldValidator>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td align="center" class="style48" valign="middle" style="font-size: large">
                                                                      </td>
                                                                  <td align="left" valign="middle" class="style50" >
                                                                      <br />
                                                                      <br />
                                                                      </td>
                                                              </tr>
                                                              <tr>
                                                                  <td align="center" class="style32" valign="middle" style="font-size: large">
                                                                      Password</td>
                                                                  <td align="left" valign="middle" class="style34" >
                                                                      <asp:TextBox ID="txtPassword" runat="server" Width="351px" CssClass="textbox" 
                                                                      TextMode="Password" Height="37px" Font-Size="Large"></asp:TextBox>
                                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                                          ControlToValidate="txtPassword" ErrorMessage="*" ValidationGroup="LoginGr"></asp:RequiredFieldValidator>
                                                                  </td>
                                                              </tr>
                                                              <tr>
                                                                  <td align="center" valign="top" class="style42" rowspan="2" style="font-size: large">
                                                                      </td>
                                                                  <td align="left" valign="middle" class="auto-style9">
                                                                      <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#003399" onclick="LinkButton1_Click">FORGET PASSWORD</asp:LinkButton>
                                                                      </td>
                                                              </tr>
                                                              <tr>
                                                                  <td align="left" valign="top">
                                                                      <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                                                                          Text="Submit" Width="357px" BackColor="#66FF66" BorderColor="#CC6600" 
                                                                      BorderStyle="Solid" BorderWidth="1px" ValidationGroup="LoginGr" 
                                                                          Height="37px" Font-Size="Large" />
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
    .auto-style8 {
        height: 66px;
    }
    .auto-style9 {
        height: 45px;
    }
    .textbox {}
</style>



</asp:Content>