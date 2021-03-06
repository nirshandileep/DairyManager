<%@ Control Language="C#" AutoEventWireup="true" Inherits="AppointmentToolTip" Codebehind="AppointmentToolTip.ascx.cs" %>
<%@ Register Assembly="DevExpress.Web.v12.2, Version=12.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>
<div runat="server" id="buttonDiv">
    <dxe:ASPxButton ID="btnShowMenu" runat="server" AutoPostBack="False" AllowFocus="False">
        <Border BorderWidth="0px" />
        <Paddings Padding="0px" />
        <FocusRectPaddings Padding="4px" />
        <FocusRectBorder BorderStyle="None" BorderWidth="0px" />
    </dxe:ASPxButton>
</div>    

<script type="text/javascript" id="dxss_ASPxClientAppointmentToolTip">
    ASPxClientAppointmentToolTip = _aspxCreateClass(ASPxClientToolTipBase, {
        Initialize: function () {
            ASPxClientUtils.AttachEventToElement(this.controls.buttonDiv, "click", _aspxCreateDelegate(this.OnButtonDivClick, this));
        },
        OnButtonDivClick: function (s, e) {
            this.ShowAppointmentMenu(s);
        },
        CanShowToolTip: function (toolTipData) {
            return this.scheduler.CanShowAppointmentMenu(toolTipData.GetAppointment());
        }
    });    
</script>
