<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication2.Index" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="globals1.css">
    <link rel="stylesheet" type="text/css" href="style1.css">
</head>
<body>
    <div class="desktop">
        <div class="overlap-wrapper">
            <div class="overlap">
                <div class="rectangle"></div>
                <div class="group">
                    <div class="overlap-group">
                        <div class="sunny">
                            <div class="ellipse-wrapper"><div class="ellipse"></div></div>
                        </div>
                        <div class="overlap-group-wrapper">
                            <div class="div">
                                <div class="rain">
                                    <div class="div-wrapper">
                                        <div class="overlap-2">
                                            <div class="group-2">
                                                <div class="group-3">
                                                    <div class="union-wrapper">
                                                        <img class="union" src="https://c.animaapp.com/WEjAlq7c/img/union.svg" />
                                                    </div>
                                                </div>
                                            </div>
                                            <img class="img" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-35.svg" />
                                            <img class="rectangle-2" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-41.svg" />
                                            <img class="rectangle-3" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-36.svg" />
                                            <img class="rectangle-4" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-37.svg" />
                                            <img class="rectangle-5" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-38.svg" />
                                            <img class="rectangle-6" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-39.svg" />
                                            <img class="rectangle-7" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-40.svg" />
                                        </div>
                                    </div>
                                </div>
                                <div class="group-wrapper">
                                    <div class="group-4">
                                        <div class="overlap-3">
                                            <div class="group-5">
                                                <div class="group-6">
                                                    <div class="img-wrapper">
                                                        <img class="union-2" src="https://c.animaapp.com/WEjAlq7c/img/union-1.svg" />
                                                    </div>
                                                </div>
                                            </div>
                                            <img class="rectangle-8" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-35-1.svg" />
                                            <img class="rectangle-9" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-41-1.svg" />
                                            <img class="rectangle-10" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-36-1.svg" />
                                            <img class="rectangle-11" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-37-1.svg" />
                                            <img class="rectangle-12" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-38-1.svg" />
                                            <img class="rectangle-13" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-39-1.svg" />
                                            <img class="rectangle-14" src="https://c.animaapp.com/WEjAlq7c/img/rectangle-40-1.svg" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
                <div class="text-wrapper">weather in finland</div>
                <div class="text-wrapper-2">team 8</div>
                <form id="form1" runat="server">
                <div class="group-7">
                    <div class="overlap-4">
                        <div class="group-8">
                            <div class="overlap-group-2">
                                <div class="rectangle-15"></div>
                                <div class="text-wrapper-3">                               
                                    <!-- when pressing this button, it should submit and take you to the forecast page -->                                   
                                    <asp:Button ID="GoButton" runat="server" Text="Go" OnClick="GoButton_Click" CssClass="myButton" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <img class="peter-zhang" src="https://c.animaapp.com/WEjAlq7c/img/peter-zhang-0y4woihgldu-unsplash-1.png" />
                <div class="group-9">
                    <div class="group-10">
                        <div class="overlap-group-3">
                            <div class="rectangle-16">
                            <div class="text-wrapper-4">                         
                                    
                                     <asp:DropDownList ID="CityDropDownList" runat="server" CssClass="myDropdown">
                                     <asp:ListItem>Helsinki</asp:ListItem>
                                     <asp:ListItem>Espoo</asp:ListItem>
                                     <asp:ListItem>Tampere</asp:ListItem>
                                     <asp:ListItem>Vantaa</asp:ListItem>
                                     <asp:ListItem>Oulu</asp:ListItem>
                                     <asp:ListItem>Turku</asp:ListItem>
                                     <asp:ListItem>Jyväskylä</asp:ListItem>
                                     <asp:ListItem>Kuopio</asp:ListItem>
                                     <asp:ListItem>Lahti</asp:ListItem>
                                     <asp:ListItem>Pori</asp:ListItem>              
                                     </asp:DropDownList>                              
                            </div>
                                </div>
                        </div>
                    </div>
                </div> 
                </form>
            </div>
        </div>
    </div>
    <script runat="server">
        protected void GoButton_Click(object sender, EventArgs e)
        {
            string city = CityDropDownList.SelectedValue;
            Session["City"] = city;
            Response.Redirect("Forecast.aspx");
        }
    </script>
</body>
</html>

