<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mywebform.aspx.cs" Inherits="mywebsite.Mywebform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=New+Rocker&display=swap');
        .auto-style1 {
            height: 29px;
        }

        


        h1 {
            -webkit-font-smoothing: antialiased;
             font-family:'New Rocker';
           	text-transform: uppercase;
        	margin: 0;
        	height: 100%;
        	width: 100%;
	        display: table;
        }

        
        .container {
            margin-left: 30%;
            margin-top: 10%;
            background-color: #03001C;
            margin-right: 30%;
            border: 5px solid red;
            padding: 5%;
            
            color:white;
        }
           body{
                background-image: url('black-white-bokeh-particles.jpg')  ;
   background-size: 100%;
  min-width:100%;
        }
           h1{
               color:white;
           }
    </style>
</head>
<body>
    <h1><center>USER &nbsp; REGISTRATION &nbsp; PORTAL</center> </h1>
    
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr>
                    <td>Username</td>
                    <td> <asp:TextBox ID="Username" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style1">Password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Password" runat="server"></asp:TextBox>

                    </td>
                </tr>
                
                
                <tr>
                    <td>City</td>
                    <td>
                        <asp:TextBox ID="City" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" Text="Display" OnClick="Button4_Click" />
                    </td>
                </tr>

                <tr>
                    <td>Id for Updation:</td>
                    <td>
                        <asp:TextBox ID="oldid" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>

        <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
