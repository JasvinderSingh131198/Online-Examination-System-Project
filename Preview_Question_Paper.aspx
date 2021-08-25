<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Preview_Question_Paper.aspx.cs" Inherits="Preview_Question_Paper" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Preview Question Paper</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 404px;
            text-align:center;
        }
        .auto-style2 {
            height: 80px;
            text-align:center;
            color:white;
            background-color:blue;
        }
        .auto-style3 {
            height: 186px;
            text-align:center;
        }
        .auto-style4 {
            height: 1027px;
            text-align:center;
        }
        .auto-style5 {
            height: 80px;
            width: 219px;
            text-align:center;
            color:white;
            background-color:blue;
        }
        .auto-style6 {
            height: 186px;
            width: 219px;
            text-align:center;
        }
        .auto-style7 {
            width: 219px;
            text-align:center;
        }
        .auto-style8 {
            height: 80px;
            width: 555px;
            text-align:center;
            color:white;
            background-color:blue;
        }
        .auto-style9 {
            height: 186px;
            width: 555px;
            text-align:center;
        }
        .auto-style11 {
            height: 80px;
            width: 141px;
            text-align:center;
            color:white;
            background-color:blue;
        }
        .auto-style12 {
            height: 186px;
            width: 141px;
            text-align:center;
        }
        .auto-style13 {
            margin-left: 321px;
        }
        .auto-style14 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <h1 align="center" style="color:navy">PREVIEW QUESTION PAPER SECTION</h1><br/><hr/><br/>
            <div style="height: 157px;background-color:springgreen">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Add_Student.aspx">Add Student</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Delete_Student.aspx">Delete Student</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Set_Question_Paper.aspx">Set Question Paper</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Preview_Question_Paper.aspx">Preview Question Paper</asp:HyperLink>
                <br />
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Delete_Question_Paper.aspx">Delete Question Paper</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/View_Report.aspx">View Report</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Admin_Logout.aspx">Logout</asp:HyperLink>
            </div><br/><hr/><br/>
            <br />
&nbsp;<h2 align="center" style="color:navy">Select a Question Paper to preview</h2>
            <br/>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="set_type" DataValueField="set_type" Width="347px" CssClass="auto-style14" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [set_type] FROM [Question] ORDER BY [set_type]"></asp:SqlDataSource>
            <br />
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                        <br />
                        QUESTION_ID              </td>
                    <td class="auto-style8">QUESTION</td>
                    <td class="auto-style11">CHOICES</td>
                    <td class="auto-style2">DECISION</td>
                </tr>
                <% 
    while (sdr.Read())
    { %><%answer = Convert.ToInt16(sdr.GetValue(7)); %>
                     <% if (answer == 1)
    {
        RadioButton1.Checked = true;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
    }%>
                    <%  if (answer == 2)
    {
        RadioButton1.Checked = false;
        RadioButton2.Checked = true;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;
    }%>
                    <% if (answer == 3)
    {
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = true;
        RadioButton4.Checked = false;
    }%>
                    <% if (answer == 4)
    {
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = true;
    }%>
        
                <tr>
                    <td class="auto-style6">
                        <%=sdr.GetValue(0) %>
                       
                        &nbsp;</td>
                    <td class="auto-style9">
                        <%=sdr.GetValue(1) %>
                        &nbsp;</td>
                    
                    <td class="auto-style12">
                        <%=sdr.GetValue(3)%>
                        <%=sdr.GetValue(4)%>
                        <%=sdr.GetValue(5)%>
                        <%=sdr.GetValue(6)%>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Options" />
                        <br />
                        <br />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Options" />
                        <br />
                        <br />
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Options" />
                        <br />
                        <br />
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Options" />
                    </td>
                    <td class="auto-style3">
                        <a href="Edit_Or_Delete.aspx?set_type=<%Response.Write(sdr.GetValue(2)); %>&question_id=<%Response.Write(sdr.GetValue(0)); %>" style="color:red;font-size:x-large">Edit Or Delete</a>
                    </td>
                </tr><%
                         }%>
                <tr>
                    <td class="auto-style7" colspan="4">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Font-Bold="True" Font-Size="X-Large" Height="79px" Text="ADD QUESTION" Width="368px" OnClick="Button1_Click" />
                    </td>           
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
