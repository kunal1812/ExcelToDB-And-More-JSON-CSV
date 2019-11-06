<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SampleDBApp1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Employee Details</div>
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblRole" runat="server" Text="Role:" ForeColor="Black"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Enabled="true" Width="140px" AutoPostBack="false">
        </asp:DropDownList><br />
        
            <asp:Label ID="lblTimeShifts" runat="server" Text="TimeShifts:" ForeColor="Black"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Enabled="true" Width="140px" AutoPostBack="false">
            </asp:DropDownList><br />
        
        &nbsp&nbsp
        <asp:Button ID="btnSave" runat="server" Text="Save" Width="98px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" CssClass="auto-style2" Height="27px" Text="Cancel" Width="85px" />
        <p>
            &nbsp;</p>
      

        <asp:GridView ID="GvEmp" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name"/>
                    <asp:BoundField DataField="Age" HeaderText="Age"/>
                    <asp:BoundField DataField="Role" HeaderText="Role"/>
                    <asp:BoundField DataField="TimeShifts" HeaderText="TimeShifts"/>
                    <asp:TemplateField HeaderText="View">
                        <ItemTemplate>
                                <asp:LinkButton runat="server" ID="lnkEdit" CommandArgument='<%#Eval("Name") %>'
                                 CommandName="Edit" OnClick="lnkEdit_Click">Edit</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="lnkDelete" CommandArgument='<%#Eval("Age") %>'
                                 CommandName="Delete" OnClick="lnkDelete_Click">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
                
            </asp:GridView>
        
    </form>
</body>
</html>
