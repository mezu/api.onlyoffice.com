<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<h1>
   <span class="hdr">ApiFill</span>
</h1>

<h4 class="header-gray" id="ApiFill">new ApiFill()</h4>
<p class="dscr">Class representing a base class fill.</p>

<h2>Methods</h2>
            <table class="table table-classlist">
                <thead>
                    <tr class="tablerow">
                        <td class="table-classlist-name">Name</td>
                        <td>Description</td>
                    </tr>
                </thead>
                <tbody>
                    <tr class="tablerow">
                        <td><a href="<%= Url.Action("textdocumentapi/apifill/getclasstype") %>">GetClassType</a></td>
                        <td>Get the type of this class.</td>
                    </tr>
                </tbody>
            </table>

<h2>Example</h2>
<div class="button copy-code">Copy code</div>
<pre>builder.CreateFile("docx");
var oDocument = Api.GetDocument();
var oGs1, oGs2, oFill, oStroke, oDrawing, oParagraph;
oParagraph = oDocument.GetElement(0);
oGs1 = Api.CreateGradientStop(Api.CreateRGBColor(255, 224, 204), 0);
oGs2 = Api.CreateGradientStop(Api.CreateRGBColor(155, 64, 1), 100000);
oFill = Api.CreateRadialGradientFill([oGs1, oGs2]);
oStroke = Api.CreateStroke(0, Api.CreateNoFill());
oDrawing = Api.CreateShape("rect", 1908000, 1404000, oFill, oStroke);
oDrawing.SetDistances(914400, 0, 914400, 0);
oDrawing.SetWrappingStyle("square");
oParagraph.AddDrawing(oDrawing);
var oClassType = oFill.GetClassType();
oParagraph.AddText("Class Type = " + oClassType);
builder.SaveFile("docx", "GetClassType.docx");
builder.CloseFile();</pre>

<h2>Resulting document</h2>
<iframe class="docbuilder_resulting_docs" src="https://help.onlyoffice.com/products/files/doceditor.aspx?fileid=4896230&doc=YjVJT3ZoMTg3QkNPSGNFWDhpcWVoRzBONTAyY1E1aFU1akMzYjRXMkU0TT0_IjQ4OTYyMzAi0&action=embedded" frameborder="0" scrolling="no" allowtransparency></iframe>
