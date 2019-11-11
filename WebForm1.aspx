<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ExcelToDbAndConToMore.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GvStore" AutoGenerateColumns ="false"  runat="server">
            <Columns>
                <asp:BoundField DataField="Item Name" HeaderText="Item Name" />
                <asp:BoundField DataField="Category Name" HeaderText="Category Name" />
                <asp:BoundField DataField="Average Price" HeaderText="Average Price" />
                <asp:BoundField DataField="Date" HeaderText="Date" />
                <asp:BoundField DataField="City" HeaderText="City" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" />
                <asp:BoundField DataField="Amount To be Paid" HeaderText="Amount To be Paid" />
            </Columns>
        </asp:GridView>  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
        ConvertInto:  &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;<asp:DropDownList ID="ddlExToDb" runat="server">
            <asp:ListItem>JSON</asp:ListItem>
            <asp:ListItem>XML</asp:ListItem>
            <asp:ListItem>CSV</asp:ListItem>
        </asp:DropDownList>
          &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;
        <asp:Button ID="btnConvert" runat="server" OnClick="btnConvert_Click" Text="Convert" />
    </form>
</body>
</html>
