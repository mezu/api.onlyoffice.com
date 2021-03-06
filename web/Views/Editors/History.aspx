﻿<%@ Page
    Title=""
    Language="C#"
    MasterPageFile="~/Views/Shared/Site.Master"
    Inherits="System.Web.Mvc.ViewPage"
    ContentType="text/html" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Document History
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>
        <span class="hdr">Document history</span>
    </h1>
    <p class="dscr">If the document has been previously edited using Document Editor, you can view the document history.</p>
    <div class="note">The history is currently available for text document files only.</div>

    <p>After editing in Document Editor the information about the changes during the editing session is sent together with the changed document:</p>
    <ul>
        <li>
            <p><a href="<%= Url.Action("callback") %>#history">history</a> - this information allows to display the time and the author for each document version when you view the document history in the side panel. Must be sent as a property changes of the object sent as the argument to the <a href="<%= Url.Action("methods") %>#refreshHistory">refreshHistory</a> method. This method must be called after the <a href="<%= Url.Action("config/events") %>#onRequestHistory">onRequestHistory</a> events.</p>
            <img alt="history" src="<%= Url.Content("~/content/img/editor/history.png") %>" />
        </li>
        <li>
            <p><a href="<%= Url.Action("callback") %>#changesurl">changesurl</a> - the link to the file with the document editing data used to show the changes corresponding to the specific document version. The file must be saved and its address must be sent as changesUrl parameter using the <a href="<%= Url.Action("methods") %>#setHistoryData">setHistoryData</a> method. This method must be called after the <a href="<%= Url.Action("config/events") %>#onRequestHistoryData">onRequestHistoryData</a> events.</p>
            <img alt="changesurl" src="<%= Url.Content("~/content/img/editor/changesurl.png") %>" />
        </li>
    </ul>

    <br />
    <p>This way the following events must be added to the config file to enable the document changes history display:</p>
    <ul>
        <li><a href="<%= Url.Action("config/events") %>#onRequestHistory">onRequestHistory</a> with <a href="<%= Url.Action("methods") %>#refreshHistory">refreshHistory</a> which contains document history for each document version if the history parameter has been present for each version.</li>
        <li><a href="<%= Url.Action("config/events") %>#onRequestHistoryData">onRequestHistoryData</a> with <a href="<%= Url.Action("methods") %>#setHistoryData">setHistoryData</a> which contains the link to the file of the corresponding version, the link to the previous version and the link to the file received using the <em>changesUrl</em>.</li>
    </ul>
</asp:Content>
