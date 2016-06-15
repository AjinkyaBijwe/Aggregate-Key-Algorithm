<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="SendKeyViaMail.aspx.cs" Inherits="SendKeyViaMail" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table class="auto-style9">
                                  <tr>
                                      <td align="center" class="auto-style8" bgcolor="#0099FF" colspan="2">
                                          Please Enter Correct EMAIL Passsword
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="left" class="auto-style8" bgcolor="#DFBFFF">
                                          <asp:Label ID="lblValues1" runat="server" Font-Size="Large" ForeColor="Black">Sending 
                                          To :</asp:Label>
                                      </td>
                                      <td align="left" class="auto-style12" bgcolor="#ABA4F2">
                                          <asp:TextBox ID="lblSelUser" runat="server" Font-Size="Large" ForeColor="Black" Height="35px"></asp:TextBox>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="left" class="auto-style8" bgcolor="#DFBFFF">
                                          <asp:Label ID="lblValues4" runat="server" Font-Size="Large" ForeColor="Black">KAC 
                                          Key :</asp:Label>
                                      </td>
                                      <td align="left" class="auto-style12" bgcolor="#ABA4F2">
                                          <asp:Label ID="lblKACKey" runat="server" Font-Size="Large" ForeColor="Black"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td align="left" class="auto-style8" bgcolor="#DFBFFF">
                                          <asp:Label ID="lblValues3" runat="server" Font-Size="Large" ForeColor="Black">Mail 
                                          ID Password :</asp:Label>
                                      </td>
                                      <td align="left" class="auto-style12" bgcolor="#ABA4F2">
                                          <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Solid" 
                                              BorderWidth="1px" TextMode="Password" Width="413px" Height="35px"></asp:TextBox>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style8" align="left" bgcolor="#DFBFFF">
                                      </td>
                                      <td align="left" class="auto-style12" bgcolor="#ABA4F2">
                                          <asp:Button ID="btnGoTo" runat="server" BackColor="#99FF33" 
                                              BorderColor="#99FF99" BorderStyle="Solid" Font-Size="Large" ForeColor="Black" 
                                              Height="32px" onclick="btnGoTo_Click" Text="Send" Width="419px" />
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style5" align="left" bgcolor="#DFBFFF">
                                          </td>
                                      <td align="left" class="auto-style11" bgcolor="#ABA4F2">
                                          <asp:Label ID="lblMessage" runat="server" Font-Size="Large" ForeColor="#66FF99"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td class="style18" colspan="2">
                                          <table style="width: 100%; height: 86px;">
                                              <tr bgcolor="#FEB4BD">
                                                  <td bgcolor="#EAD5FF" class="auto-style17">
                                                      <asp:Label ID="Label2" runat="server" Text="Start Time "></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#EAD5FF" class="auto-style18">
                                                      <asp:Label ID="lblStartMili" runat="server" ForeColor="#990000"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili0" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style19" bgcolor="#EAD5FF">
                                                      <asp:Label ID="Label3" runat="server" Text="End Time"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#EAD5FF" class="auto-style20">
                                                      <asp:Label ID="lblEndMili" runat="server" ForeColor="#990000"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili1" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td bgcolor="#EAD5FF" class="auto-style21">
                                                      <asp:Label ID="Label4" runat="server" Text="Time Taken"></asp:Label>
                                                  </td>
                                                  <td align="left" bgcolor="#EAD5FF" class="style20">
                                                      <asp:Label ID="lblMiliSec" runat="server" ForeColor="#990000"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili2" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style17">
                                                      <asp:Label ID="Label5" runat="server" Text="Start Time " ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style18">
                                                      <asp:Label ID="lblStartSec" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;<asp:Label ID="lblStartMili3" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style19">
                                                      <asp:Label ID="Label7" runat="server" Text="End Time" ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style20">
                                                      <asp:Label ID="lblEndSec" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili4" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style21">
                                                      <asp:Label ID="Label9" runat="server" Text="Time Taken" ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="style20">
                                                      <asp:Label ID="lblSec" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili5" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style13">
                                                      <asp:Label ID="Label6" runat="server" Text="Start Time " ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style16">
                                                      <asp:Label ID="lblStartMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili6" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                                  <td class="style51">
                                                      <asp:Label ID="Label8" runat="server" Text="End Time" ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style15">
                                                      <asp:Label ID="lblEndMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili9" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                                  <td class="auto-style14">
                                                      <asp:Label ID="Label10" runat="server" Text="Time Taken" ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left">
                                                      <asp:Label ID="lblMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili10" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <style type="text/css">

        .style14
        {
            height: 36px;
            width: 178px;
        }
        .style13
        {
            height: 36px;
        }
        .style23
        {
            width: 178px;
            height: 37px;
        }
        .style24
        {
            height: 37px;
        }
        .style21
        {
            width: 178px;
            height: 45px;
        }
        .style22
        {
            height: 45px;
        }
        .style19
        {
            width: 178px;
            height: 30px;
        }
        .style20
        {
            height: 30px;
        }
        .style18
        {
        }
        .style51
        {
            width: 100px;
        }
        .style52
        {
            height: 40px;
        }
        .auto-style1 {
            height: 36px;
            width: 214px;
        }
        .auto-style2 {
            width: 214px;
            height: 37px;
        }
        .auto-style5 {
            height: 40px;
            width: 132px;
        }
        .auto-style8 {
            height: 60px;
        }
        .auto-style9 {
            height: 316px;
            width: 939px;
        }
        .auto-style11 {
            height: 40px;
            width: 443px;
        }
        .auto-style12 {
            height: 60px;
            width: 443px;
        }
        .auto-style13 {
            width: 104px;
        }
        .auto-style14 {
            width: 114px;
        }
        .auto-style15 {
            width: 184px;
        }
        .auto-style16 {
            width: 204px;
        }
        .auto-style17 {
            width: 104px;
            height: 30px;
        }
        .auto-style18 {
            width: 204px;
            height: 30px;
        }
        .auto-style19 {
            width: 100px;
            height: 30px;
        }
        .auto-style20 {
            width: 184px;
            height: 30px;
        }
        .auto-style21 {
            width: 114px;
            height: 30px;
        }
        </style>

</asp:Content>
