﻿<%@ Page Language="C#" MasterPageFile="~/Manage/PageWin.Master" AutoEventWireup="true"
    CodeBehind="SSOApi_Edit.aspx.cs" Inherits="Song.Site.Manage.Site.SSOApi_Edit"
    Title="无标题页" %>

<%@ MasterType VirtualPath="~/Manage/PageWin.Master" %>
<%@ Register Assembly="WeiSha.WebControl" Namespace="WeiSha.WebControl" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphMain" runat="server">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td class="right" width="80px">
                名称：
            </td>
            <td>
                <asp:TextBox ID="SSO_Name" nullable="false" MaxLength="50" Width="200" runat="server"></asp:TextBox>
                <asp:CheckBox ID="SSO_IsUse" runat="server" Text="启用" Checked="true" />
            </td>
        </tr>
        <tr>
            <td class="right">
                APPID：
            </td>
            <td>
                <asp:Label ID="SSO_APPID" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="right">
                请求域：
            </td>
            <td>
                <asp:TextBox ID="SSO_Domain" begin="http://|https://" nullable="false" MaxLength="500"
                    Width="98%" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="right">
                联系电话：
            </td>
            <td>
                <asp:TextBox ID="SSO_Phone" datatype="mobile|tel" MaxLength="500" Width="150" runat="server"></asp:TextBox>
                &nbsp; 邮箱：<asp:TextBox ID="SSO_Email" datatype="email" MaxLength="500" Width="150"
                    runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="right">
                备注：
            </td>
            <td>
                <asp:TextBox ID="SSO_Info" MaxLength="500" Width="98%" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="right">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="right" valign="top">
            调用说明：
            </td>
            <td>
            1、示例：<br />
            http://当前系统的域名/api/sso.ashx?appid=xx&user=xx&domain=xx&action=login|logout&return=xml|json
            <br />
            2、参数说明：<br />
            user:用户账号名<br />
            domain:请求此调用的来源网站域名<br />
            action：登录还是退出登录<br />
            return：返回值是xml还是json格式<br />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBtn" runat="server">
    <cc1:EnterButton verify="true" ID="btnEnter" runat="server" Text="确定" OnClick="btnEnter_Click"
        ValidationGroup="enter" />
    <cc1:CloseButton ID="CloseButton1" runat="server" />
</asp:Content>