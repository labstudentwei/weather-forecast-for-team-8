<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forecast.aspx.cs" Inherits="WebApplication2.Forecast" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="globals2.css">
    <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
    <div class="desktop">
        <div class="div">
            <img class="image" src="https://c.animaapp.com/sIUC1J7B/img/image-2@2x.png" />
            <div class="overlap">
                <div class="overlap-group">
                    <div class="overlap-2">
                        <img class="img" src="https://c.animaapp.com/sIUC1J7B/img/image-3@2x.png" />
                        <div class="text-wrapper">Temperature: </div>
                        <div class="text-wrapper-2">Wind speed: </div>
                        <div class="text-wrapper-3">Wind direction: </div>
                    </div>
                    <div class="text-wrapper-4"><%= Session["Temperature"] %>℃</div>
                    <div class="text-wrapper-5"><%= Session["WindDirection"] %></div>
                </div>
                <div class="text-wrapper-6"><%= Session["WindSpeedMS"] %>M/S</div>
            </div>
            <div class="overlap-3">               
                <div class="text-wrapper-7">today in <%: Session["City"] %></div>
                <div class="group">
                    <div class="div-wrapper"><div class="text-wrapper-8"><a href="Index.aspx" class="button">back to city selection</a></div></div>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>
