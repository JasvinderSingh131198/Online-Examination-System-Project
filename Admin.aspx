<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
</head>
<body style="background-image:url('1.jpg');background-repeat:no-repeat;background-position:right">
    <form id="form1" runat="server">
        <div style="height: 660px">
           <h1 align="center" style="background-color:red;color:springgreen;text-decoration:underline"> WELCOME ADMIN</h1><hr/><br/>
            <br />
            <div style="height: 504px; width: 213px; margin-top: 0px;background-color:springgreen">
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Add_Student.aspx">Add Student</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Delete_Student.aspx">Delete Student</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Set_Question_Paper.aspx">Set Question Paper</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/View_Question_Papers.aspx">View Question Papers</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Delete_Question_Paper.aspx">Delete Question Paper</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/View_Report.aspx">View Report</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Admin_Logout.aspx">Logout</asp:HyperLink>
                <br />
                <br />
            </div>
           </div>
    </form>
</body>
</html>
