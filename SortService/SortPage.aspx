<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SortPage.aspx.cs" Inherits="SortService.SortPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Web服务</title>
    <link rel="stylesheet" type="text/css" href="Style/Sort.css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>

<div class="page-header">实验4：Web服务</div>
<form class="form" id="form1" runat="server">
    <p class="title">数值排序 </p>
    <p class="message">请在下面的框内输入一行数字，每个数字间以“,（英文）”间隔 </p>
            
    <label>
          <span>输入待排序数组：</span>
        <br />
        <asp:TextBox ID="txtInput" runat="server" CssClass="input" placeholder="" required=""></asp:TextBox>
      
    </label> 
    <asp:Button ID="btnSort" runat="server" CssClass="submit" Text="排序" OnClick="btnSort_Click1"  />
    <br />
    <br />
    <span>排序完成的数组如下：</span>
    <br />
    <asp:Label ID="lblResult" runat="server" CssClass="input" Text="" placeholder="" ></asp:Label>
</form>
</body>

</html>