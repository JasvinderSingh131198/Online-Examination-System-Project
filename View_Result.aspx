<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_Result.aspx.cs" Inherits="View_Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results</title>
    <style type="text/css">
        .auto-style1 {
            height: 542px;
        }
        .auto-style2 {
            width: 100%;
            height: 109px;
        }
        .auto-style3 {
            width: 152px;
            text-align:center;
            background-color:blue;
            color:white;
            text-decoration:underline;
            height: 37px;
        }
        .auto-style4 {
            width: 163px;
            text-align:center;
            background-color:blue;
            color:white;
            text-decoration:underline;
            height: 37px;
        }
        .auto-style5 {
            width: 295px;
            text-align:center;
            background-color:blue;
            color:white;
            text-decoration:underline;
            height: 37px;
        }
        .auto-style6 {
            width: 236px;
            text-align:center;
            background-color:blue;
            color:white;
            text-decoration:underline;
            height: 37px;
        }
        .auto-style7 {
            width: 195px;
            text-align:center;
            background-color:blue;
            color:white;
            text-decoration:underline;
            height: 37px;
        }
        .auto-style8 {
            height: 554px;
        }
        .auto-style9 {
            height: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style8">
            <div class="auto-style1">
            <h1 style="text-align:center;color:navy">RESULTS</h1><br/><hr/><br/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="Red" NavigateUrl="~/Student_Logout.aspx">Logout</asp:HyperLink>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="WELCOME"></asp:Label>
&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="."></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">USER</td>
                        <td class="auto-style4">DATE</td>
                        <td class="auto-style5">TEST NAME</td>
                        <td class="auto-style6">MARKS OBTAINED</td>
                        <td class="auto-style7">TOTAL MARKS</td>
                    </tr>  
                 <% 
                  while (sdr.Read())
                  {
                  %>
                    <tr>
                        <td style="text-align:center" class="auto-style9">&nbsp;<%=sdr.GetValue(0) %></td>
                        <td style="text-align:center" class="auto-style9">&nbsp;<%=sdr.GetValue(1) %></td>
                        <td style="text-align:center" class="auto-style9">&nbsp;<%=sdr.GetValue(2) %></td>
                        <td style="text-align:center" class="auto-style9">&nbsp;<%=sdr.GetValue(3) %></td>
                        <td style="text-align:center" class="auto-style9">&nbsp;<%=sdr.GetValue(4) %></td>
                 <% 
                       
                     }
                     conn.Close();
                 %>
                    </tr>
                    
                </table>
            </div>

        </div>
    </form>
</body>
</html>