<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="WebForm1.aspx.vb" 
         Inherits="WebViewer_CustomizeCSS.WebForm1" %>

<%@ Register Assembly="DevExpress.Dashboard.v15.2.Web, Version=15.2.20.0, 
                                                       Culture=neutral, 
                                                       PublicKeyToken=b88d1754d700e49a" 
             Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Viewer</title>
    <style type="text/css" >
        .dx-list-item-content
        {
            font-size: 25px ;
        }
        .dx-pivotgrid
        {
            font-size: 12px ;
        }
        .dx-widget-viewer-container .dx-cardItem {
            background-color: aqua ;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxDashboardViewer ID="ASPxDashboardViewer1" runat="server" 
            DashboardSource="~/App_Data/Dashboard.xml" 
            FullscreenMode="True" Height="100%" Width="100%"  
            OnConfigureDataConnection="ASPxDashboardViewer1_ConfigureDataConnection">
        </dx:ASPxDashboardViewer>
    </div>
    </form>
</body>
</html>