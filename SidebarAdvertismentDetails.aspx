<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="SidebarAdvertismentDetails.aspx.cs" Inherits="SidebarAdvertismentDetails" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">

                  <table style="width: 100%; height: 383px;">
                      <tr>
                          <td class="style12">
                              <table style="width: 100%; height: 452px;">
                                  <tr>
                                      <td class="style13">
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          &nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetPhotoAdver" TypeName="PhotoManager">
                <SelectParameters>
                    <asp:SessionParameter Name="photoid" SessionField="AdvID" Type="Double" />
                </SelectParameters>
            </asp:ObjectDataSource>
                                      </td>
                                  </tr>
                              </table>
                          </td>
                          <td valign="top" class="style14" >
            <asp:FormView ID="FormView1" runat="server" DataSourceID="ObjectDataSource1" 
                    Height="182px" Width="376px">
                <EditItemTemplate>
                    CanRead:
                    <asp:CheckBox ID="CanReadCheckBox" runat="server" 
                            Checked='<%# Bind("CanRead") %>' />
                    <br />
                    CanSeek:
                    <asp:CheckBox ID="CanSeekCheckBox" runat="server" 
                            Checked='<%# Bind("CanSeek") %>' />
                    <br />
                    CanTimeout:
                    <asp:CheckBox ID="CanTimeoutCheckBox" runat="server" 
                            Checked='<%# Bind("CanTimeout") %>' />
                    <br />
                    CanWrite:
                    <asp:CheckBox ID="CanWriteCheckBox" runat="server" 
                            Checked='<%# Bind("CanWrite") %>' />
                    <br />
                    Length:
                    <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
                    <br />
                    Position:
                    <asp:TextBox ID="PositionTextBox" runat="server" 
                            Text='<%# Bind("Position") %>' />
                    <br />
                    ReadTimeout:
                    <asp:TextBox ID="ReadTimeoutTextBox" runat="server" 
                            Text='<%# Bind("ReadTimeout") %>' />
                    <br />
                    WriteTimeout:
                    <asp:TextBox ID="WriteTimeoutTextBox" runat="server" 
                            Text='<%# Bind("WriteTimeout") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    CanRead:
                    <asp:CheckBox ID="CanReadCheckBox0" runat="server" 
                            Checked='<%# Bind("CanRead") %>' />
                    <br />
                    CanSeek:
                    <asp:CheckBox ID="CanSeekCheckBox0" runat="server" 
                            Checked='<%# Bind("CanSeek") %>' />
                    <br />
                    CanTimeout:
                    <asp:CheckBox ID="CanTimeoutCheckBox0" runat="server" 
                            Checked='<%# Bind("CanTimeout") %>' />
                    <br />
                    CanWrite:
                    <asp:CheckBox ID="CanWriteCheckBox0" runat="server" 
                            Checked='<%# Bind("CanWrite") %>' />
                    <br />
                    Length:
                    <asp:TextBox ID="LengthTextBox0" runat="server" Text='<%# Bind("Length") %>' />
                    <br />
                    Position:
                    <asp:TextBox ID="PositionTextBox0" runat="server" 
                            Text='<%# Bind("Position") %>' />
                    <br />
                    ReadTimeout:
                    <asp:TextBox ID="ReadTimeoutTextBox0" runat="server" 
                            Text='<%# Bind("ReadTimeout") %>' />
                    <br />
                    WriteTimeout:
                    <asp:TextBox ID="WriteTimeoutTextBox0" runat="server" 
                            Text='<%# Bind("WriteTimeout") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image4" runat="server" Height="403px" ImageUrl="~/Handler2.ashx" 
                            Width="595px" />
                    <br />
                </ItemTemplate>
            </asp:FormView>
                          </td>
                      </tr>
    </table>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head1">

    <style type="text/css">
        .style12
        {
            width: 303px;
            height: 294px;
        }
        .style13
        {
            height: 89px;
        }
        .style14
        {
            height: 294px;
        }
    </style>

</asp:Content>
