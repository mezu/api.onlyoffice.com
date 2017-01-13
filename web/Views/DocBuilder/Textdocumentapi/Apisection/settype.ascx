<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">SetType</span>
</h1>

<h4 class="header-gray" id="SetType">SetType(sType)</h4>
<p class="dscr">Specify the type of the current section. The section type defines how the contents of the current
             
            <h2>Parameters:</h2>
                <table class="table">
                    <thead>
                        <tr class="tablerow">
                            <td>Name</td>
                            <td>Type</td>
                            <td>Description</td>
                        </tr>
                    </thead>
                    <tbody>
                    <tr class="tablerow">
                        <td><em>sType</em></td>
                        <td>
                
<em>"nextPage"</em>
|
<em>"oddPage"</em>
|
<em>"evenPage"</em>
|
<em>"continuous"</em>
|
<em>"nextColumn"</em>
                        </td>
                        <td>Type of the section break.</td>
                    </tr>
                </tbody>
                </table>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oParagraph, oFooter;
oParagraph = oDocument.GetElement(0);
var oSection = oDocument.CreateSection(oParagraph);
oParagraph.AddText("This is section #1 of the document. ");
var oSection = oDocument.GetFinalSection();
oSection.SetType("continuous");
oParagraph = Api.CreateParagraph();
oParagraph.AddText("This is section #2 and we set 'Continuous' type to it. ");
oParagraph.AddText("As you can see, the section is not on a new page. ");
oParagraph.AddText("If this section had some other type (nextPage, oddPage, evenPage), it would start a new page.");
oDocument.Push(oParagraph);
builder.SaveFile("docx", "SetType.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=4892463&doc=WmE4Qmk0NmJhN0RqazE1Zm9PNW1zSkFSZWlBTDZyd0tGWWpVSS80M1hTbz0_IjQ4OTI0NjMi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>