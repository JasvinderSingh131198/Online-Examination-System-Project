<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Question_Papers.aspx.cs" Inherits="View_Question_Papers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Question Papers</title>
    <style type="text/css">
        .auto-style4 {
            height: 1027px;
            text-align:center;
        }
        .auto-style15 {
            margin-left: 322px;
            margin-top: 0px;
        }
        .auto-style16 {
            margin-left: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <h1 align="center" style="color:navy">VIEW QUESTION PAPER SECTION</h1><br/><hr/><br/>
            <div style="height: 157px;background-color:springgreen">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Add_Student.aspx">Add Student</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Delete_Student.aspx">Delete Student</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Set_Question_Paper.aspx">Set Question Paper</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/View_Question_Papers.aspx">View Question Papers</asp:HyperLink>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Delete_Question_Paper.aspx">Delete Question Paper</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/View_Report.aspx">View Report</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Admin_Logout.aspx">Logout</asp:HyperLink>
            </div><br/><hr/><br/>
            <br />
&nbsp;<h2 align="center" style="color:navy">Question Papers</h2>
            <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:My_Database %>" SelectCommand="SELECT DISTINCT [question_id], [question], [set_type], [option_1], [option_2], [option_3], [option_4] FROM [Question]"></asp:SqlDataSource>
            <br />
            <br />
           
                       
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style15" DataKeyNames="question_id" DataSourceID="" Height="252px" Width="503px">
                <Columns>
                    <asp:BoundField DataField="question_id" HeaderText="question_id" ReadOnly="True" SortExpression="question_id" />
                    <asp:BoundField DataField="question" HeaderText="question" SortExpression="question" />
                    <asp:BoundField DataField="set_type" HeaderText="set_type" SortExpression="set_type" />
                    <asp:BoundField DataField="option_1" HeaderText="option_1" SortExpression="option_1" />
                    <asp:BoundField DataField="option_2" HeaderText="option_2" SortExpression="option_2" />
                    <asp:BoundField DataField="option_3" HeaderText="option_3" SortExpression="option_3" />
                    <asp:BoundField DataField="option_4" HeaderText="option_4" SortExpression="option_4" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="X-Large" Height="46px" OnClick="Button1_Click1" Text="ADD QUESTION" Width="215px" CssClass="auto-style16" />
           
                       
        </div>
    </form>
</body>
</html>
