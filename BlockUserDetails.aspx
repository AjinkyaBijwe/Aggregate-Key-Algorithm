<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BlockUserDetails.aspx.cs" MasterPageFile="~/UserAccount.master"  Inherits="BlockUserDetails" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                              <table style="width: 100%; height: 410px;">
                                  <tr>
                                      <td valign="top" >
                                          <table style="width: 100%; height: 196px;">
                                              <tr>
                                                  <td class="style16">
                                                      &nbsp;</td>
                                                  <td align="left" class="style52" colspan="2">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td class="style44">
                                                      <asp:Label ID="lblMessage6" runat="server" Font-Size="Large" ForeColor="Black">Block 
                                                      User ID :</asp:Label>
                                                  </td>
                                                  <td align="left" class="style53" colspan="2">
                                                      <asp:Label ID="lblBlock" runat="server" Font-Size="Large" 
                                                          ForeColor="#6600CC" Font-Bold="True"></asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="style16">
                                                      &nbsp;</td>
                                                  <td align="left" class="style52" colspan="2">
                                                      <asp:Label ID="lblMessage7" runat="server" Font-Size="Large" ForeColor="Black">Are 
                                                      you sure you want to block this user ?</asp:Label>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="style62">
                                                  </td>
                                                  <td align="left" class="style61">
                                                      <asp:Button ID="btnDecrypt" runat="server" onclick="btnDecrypt_Click" 
                                                          Text="Block" Width="126px" style="margin-bottom: 0px;" BackColor="#FF3300" 
                                                          BorderStyle="Solid" BorderWidth="1px" Height="38px" />
                                                  </td>
                                                  <td align="left" class="style63">
                                                      <asp:Button ID="btnDecrypt0" runat="server" onclick="btnDecrypt0_Click" 
                                                          Text="Cancel" Width="126px" style="margin-bottom: 0px;" BackColor="#CCFF66" 
                                                          BorderStyle="Solid" BorderWidth="1px" Height="38px" />
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td class="style64">
                                                  </td>
                                                  <td align="left" class="style65" colspan="2">
                                                      &nbsp;</td>
                                              </tr>
                                              <tr>
                                                  <td class="style59">
                                                  </td>
                                                  <td align="left" class="style55" colspan="2">
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
        width: 165px;
    }
        .style52
        {
            height: 36px;
        }
        .style44
        {
            height: 35px;
            width: 165px;
        }
        .style53
        {
            height: 35px;
        }
        .style59
        {
        height: 24px;
        width: 165px;
    }
        .style55
        {
            height: 24px;
            }
        .style61
    {
        height: 29px;
        width: 209px;
    }
        .style62
        {
            height: 29px;
            width: 165px;
        }
        .style63
        {
            height: 29px;
        }
        .style64
        {
            height: 32px;
            width: 165px;
        }
        .style65
        {
            height: 32px;
        }
    </style>

</asp:Content>
