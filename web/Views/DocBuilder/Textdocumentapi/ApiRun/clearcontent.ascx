<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">ClearContent</span>
</h1>

<% Html.RenderPartial("DocBuilderShared/ApiRun/ClearContent", "textdocumentapi");%>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oRun;
oParagraph = oDocument.GetElement(0);
oRun = Api.CreateRun();
oRun.AddText("This is just a sample text. ");
oRun.AddText("But you will not see it in the resulting document, as it will be cleared.");
oParagraph.AddElement(oRun);
oRun.ClearContent();
oParagraph = Api.CreateParagraph();
oRun = Api.CreateRun();
oRun.AddText("The text in the previous paragraph cannot be seen, as it has been cleared.");
oParagraph.AddElement(oRun);
oDocument.Push(oParagraph);
builder.SaveFile("docx", "ClearContent.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=4891445&doc=VmtWSmJiRmhmOGVVT0FmcS9ya0ZmNk1Sa09BQ1NLVjF3Wks3VnNNd2Facz0_IjQ4OTE0NDUi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
