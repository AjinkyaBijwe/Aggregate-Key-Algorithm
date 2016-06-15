<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/UserAccount.master"  CodeFile="DownloadFile.aspx.cs" Inherits="DownloadFile" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="padding: 10px; width: 939px; height: 410px; margin-right: 0px;">
                                  <tr>
                                      <td class="style65">
                                          <table style="width: 100%; height: 196px;">
                                              <tr>
                                                  <td class="auto-style6" align="center" bgcolor="#CC66FF" colspan="3">
                                                      Please Enter Correct Key To Download the Data</td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style6" align="left" bgcolor="#CCCCFF">
                                                      <asp:Label ID="lblMessage8" runat="server" Font-Size="Large" ForeColor="Black">Enter 
                                                      Key :</asp:Label>
                                                  </td>
                                                  <td align="left" class="style61" colspan="2" bgcolor="#3366CC">
                                                      <table style="width:100%;">
                                                          <tr>
                                                              <td class="style64">
                                                      <asp:TextBox ID="txtEnterKVC" runat="server" BorderColor="Black" 
                                                          BorderStyle="Solid" BorderWidth="1px" Height="23px" Width="174px"></asp:TextBox>
                                                              </td>
                                                              <td class="style63">
                                                      <asp:Button ID="btnGetData" runat="server" onclick="btnGetData_Click" 
                                                          Text="Get Data" Width="156px" style="margin-bottom: 0px;" BackColor="#3333FF" 
                                                          BorderStyle="Solid" BorderWidth="1px" Height="44px" ForeColor="White" />
                                                              </td>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                      </table>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style12" align="left" bgcolor="#CCCCFF">
                                                      <asp:Label ID="lblMessage1" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Name :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style13" colspan="2" bgcolor="#3366CC">
                                                      <asp:Label ID="lblFileName" runat="server" Font-Size="Large" 
                                                          ForeColor="Black"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style12" align="left" bgcolor="#CCCCFF">
                                                      <asp:Label ID="lblMessage2" runat="server" Font-Size="Large" ForeColor="Black">Category 
                                                      :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style13" colspan="2" bgcolor="#3366CC">
                                                      <asp:Label ID="lblCategory" runat="server" Font-Size="Large" 
                                                          ForeColor="Black"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style14" align="left" bgcolor="#CCCCFF">
                                                      <asp:Label ID="lblMessage6" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Size:</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style15" colspan="2" bgcolor="#3366CC">
                                                      <asp:Label ID="lblSize" runat="server" Font-Size="Large" ForeColor="Black"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style9" valign="top" align="left" bgcolor="#CCCCFF">
                                                      <asp:Label ID="lblMessage7" runat="server" Font-Size="Large" ForeColor="Black">File 
                                                      Content :</asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style11" colspan="2" bgcolor="#3366CC">
                                                      <asp:TextBox ID="txtContent" runat="server" Height="101px" TextMode="MultiLine" 
                                                          Width="554px"></asp:TextBox>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style27" bgcolor="#CCCCFF">
                                                  </td>
                                                  <td align="left" class="auto-style26" bgcolor="#6699FF">
                                                      <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style28" bgcolor="#6699FF">
                                                      <asp:Button ID="btnDownload" runat="server" onclick="btnDownload_Click" 
                                                          Text="Finish Download" Width="273px" style="margin-bottom: 0px;" BackColor="#66FF66" 
                                                          BorderStyle="Solid" BorderWidth="1px" Height="45px" />
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <table style="width: 100%; height: 86px;">
                                              <tr>
                                                  <td class="auto-style20">
                                                      <asp:Label ID="Label2" runat="server" Text="Start Time "></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style22">
                                                      <asp:Label ID="lblStartMili" runat="server" ForeColor="#990000"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili0" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td class="style51">
                                                      <asp:Label ID="Label3" runat="server" Text="End Time"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style24">
                                                      <asp:Label ID="lblEndMili" runat="server" ForeColor="#990000"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili1" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style16">
                                                      <asp:Label ID="Label4" runat="server" Text="Time Taken"></asp:Label>
                                                  </td>
                                                  <td align="left">
                                                      <asp:Label ID="lblMiliSec" runat="server" ForeColor="#990000"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili2" runat="server" ForeColor="#990000">Mili Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style21">
                                                      <asp:Label ID="Label5" runat="server" Text="Start Time " ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style23">
                                                      <asp:Label ID="lblStartSec" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;<asp:Label ID="lblStartMili3" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style4">
                                                      <asp:Label ID="Label7" runat="server" Text="End Time" ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style25">
                                                      <asp:Label ID="lblEndSec" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili4" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                                  <td class="auto-style17">
                                                      <asp:Label ID="Label9" runat="server" Text="Time Taken" ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style5">
                                                      <asp:Label ID="lblSec" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili5" runat="server" ForeColor="#99CCFF">Sec</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="auto-style20">
                                                      <asp:Label ID="Label6" runat="server" Text="Start Time " ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style22">
                                                      <asp:Label ID="lblStartMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili6" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                                  <td class="style51">
                                                      <asp:Label ID="Label8" runat="server" Text="End Time" ForeColor="#99CCFF"></asp:Label>
                                                  </td>
                                                  <td align="left" class="auto-style24">
                                                      <asp:Label ID="lblEndMinute" runat="server" ForeColor="#99CCFF"></asp:Label>
&nbsp;
                                                      <asp:Label ID="lblStartMili9" runat="server" ForeColor="#99CCFF">Minute</asp:Label>
                                                  </td>
                                                  <td class="auto-style16">
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


        .style16
        {
            height: 36px;
            width: 133px;
        }
        .style52
        {
            height: 36px;
        }
        .style44
        {
            height: 30px;
            width: 133px;
        }
        .style53
        {
            height: 30px;
        }
        .style56
        {
            height: 35px;
            width: 133px;
        }
        .style57
        {
            height: 35px;
        }
        .style39
        {
            height: 92px;
            width: 133px;
        }
        .style40
        {
            height: 92px;
        }
        .style59
        {
            height: 42px;
            width: 133px;
        }
        .style55
        {
            height: 42px;
            width: 216px;
        }
        .style58
        {
            height: 42px;
            }
        .style60
        {
            height: 42px;
        }
        .style61
        {
            height: 36px;
        }
        .style63
        {
            width: 246px;
        }
        .style64
        {
            width: 229px;
        }
        .style65
        {
            height: 241px;
        }
        .style51
        {
            width: 100px;
        }
        .auto-style1 {
            height: 28px;
        }
        .auto-style2 {
            width: 100px;
            height: 28px;
        }
        .auto-style4 {
            width: 100px;
            height: 54px;
        }
        .auto-style5 {
            height: 54px;
            width: 181px;
        }
        .auto-style6 {
            height: 36px;
        }
        .auto-style9 {
            height: 135px;
            width: 174px;
        }
        .auto-style11 {
            height: 135px;
        }
        .auto-style12 {
            height: 49px;
            width: 174px;
        }
        .auto-style13 {
            height: 49px;
        }
        .auto-style14 {
            height: 48px;
            width: 174px;
        }
        .auto-style15 {
            height: 48px;
        }
        .auto-style16 {
            width: 113px;
        }
        .auto-style17 {
            height: 54px;
            width: 113px;
        }
        .auto-style20 {
            width: 97px;
        }
        .auto-style21 {
            width: 97px;
            height: 54px;
        }
        .auto-style22 {
            width: 191px;
        }
        .auto-style23 {
            height: 54px;
            width: 191px;
        }
        .auto-style24 {
            width: 182px;
        }
        .auto-style25 {
            height: 54px;
            width: 182px;
        }
        .auto-style26 {
            height: 86px;
            width: 216px;
        }
        .auto-style27 {
            height: 86px;
            width: 174px;
        }
        .auto-style28 {
            height: 86px;
        }
    </style>

</asp:Content>
