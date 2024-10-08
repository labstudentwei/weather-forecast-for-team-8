using System;
using System.Net;
using System.Xml;

class Program
{
    static async Task Main()
    {
       
        string url = "https://opendata.fmi.fi/wfs?service=WFS&version=2.0.0&request=getFeature&storedquery_id=ecmwf::forecast::surface::point::simple&place=lahti";
        WebClient client = new WebClient();
        string xmlContent = client.DownloadString(url);

        XmlDocument doc = new XmlDocument();
        doc.LoadXml(xmlContent);

        XmlNamespaceManager nsmgr = new XmlNamespaceManager(doc.NameTable);
        nsmgr.AddNamespace("BsWfs", "http://xml.fmi.fi/schema/wfs/2.0");
        nsmgr.AddNamespace("gml", "http://www.opengis.net/gml/3.2");

        XmlNodeList nodes = doc.SelectNodes("//BsWfs:BsWfsElement", nsmgr);

        foreach (XmlNode node in nodes)
        {
            string time = node.SelectSingleNode("BsWfs:Time", nsmgr)?.InnerText;
            string temperature = node.SelectSingleNode("//BsWfs:BsWfsElement[BsWfs:ParameterName='Temperature']/BsWfs:ParameterValue", nsmgr)?.InnerText;

            if (time != null && temperature != null)
            {
                Console.WriteLine("Time: " + time + ", Temperature: " + temperature);
            }
        }
    }
 }

