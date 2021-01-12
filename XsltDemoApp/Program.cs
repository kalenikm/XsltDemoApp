using System.Xml.Xsl;

namespace XsltDemoApp
{
    class Program
    {
        static void Main()
        {
            var resultFileName = "D:/result.html";
            var myXslTrans = new XslCompiledTransform();
            myXslTrans.Load("../../style.xsl");
            myXslTrans.Transform("../../books.xml", resultFileName);

            OpenInBrowser(resultFileName);
        }

        static void OpenInBrowser(string htmlPath)
        {
            System.Diagnostics.Process.Start(htmlPath);
        }
    }
}
