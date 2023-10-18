using System;
using System.Xml;
using System.Collections.Generic;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Forecast : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 创建一个新的 XmlDocument 实例
            XmlDocument doc = new XmlDocument();

            // 加载 XML 数据
            string city = (string)Session["City"];
            string url = $"http://opendata.fmi.fi/wfs?service=WFS&version=2.0.0&request=getFeature&storedquery_id=fmi::forecast::harmonie::surface::point::multipointcoverage&place={city}&";
            doc.Load(url);

            // 创建一个 XmlNamespaceManager 并添加命名空间
            XmlNamespaceManager ns = new XmlNamespaceManager(doc.NameTable);
            ns.AddNamespace("gml", "http://www.opengis.net/gml/3.2");
            ns.AddNamespace("swe", "http://www.opengis.net/swe/2.0");
            ns.AddNamespace("gmlcov", "http://www.opengis.net/gmlcov/1.0");

            // 获取所有的 swe:field 节点
            XmlNodeList fieldNodes = doc.SelectNodes("//swe:field", ns);

            // 创建一个列表来存储字段名称
            List<string> fields = new List<string>();

            // 遍历每个 swe:field 节点，获取 name 属性并添加到字段列表中
            int count = 0;
            foreach (XmlNode fieldNode in fieldNodes)
            {
                if (count >= 10) break; // 只获取前十个字段

                string name = fieldNode.Attributes["name"].Value;
                fields.Add(name);
                count++;
            }

            // 获取观测值
            XmlNode valuesNode = doc.SelectSingleNode("//gml:doubleOrNilReasonTupleList", ns);
            string[] allValues = valuesNode.InnerText.Split(new[] { ' ', '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);

            // 只获取前十个数据
            string[] values = new string[10];
            Array.Copy(allValues, values, 10);

            // 确保字段和值的数量相同
            if (fields.Count != values.Length)
            {
                Console.WriteLine("字段和值的数量不匹配！");
                return;
            }

            // 将每个字段和对应的值添加到Session中
            for (int i = 0; i < fields.Count; i++)
            {
                double value;
                if (double.TryParse(values[i], out value))
                {
                    Session[fields[i]] = value;
                }
                else
                {
                    Session[fields[i]] = null; // 对于无法解析为数字的值，我们将其视为null
                }

            }
        }
    }
}