<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="chin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <br />
             <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />


       <%--    //UPDATE PROGRESS FOR  RENDERING --%>

            <asp:UpdateProgress ID="UpdateProgress1" runat="server">

           <ProgressTemplate>

                <div class="modal">
                     <div class="center">
                         <img alt="NO IMG" src="5.gif" />
                     </div>
               </div>
            </ProgressTemplate>

            </asp:UpdateProgress>



          <%-- //UPDATE PANNEL ONE--%>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="catagory" HeaderText="catagory" SortExpression="catagory" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="reting" HeaderText="reting" SortExpression="reting" />
                            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT * FROM [items]"></asp:SqlDataSource>
                    <br />
                  <asp:Button ID="Button1" runat="server" Text="load data" OnClick="Button1_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>





<%--//UPDATE PANNEL TWO--%>
                       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>


                  <asp:Button ID="Button3" runat="server" Text="load text" OnClick="Button3_Click"/>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>



        </div>
    </form>
</body>
</html>
