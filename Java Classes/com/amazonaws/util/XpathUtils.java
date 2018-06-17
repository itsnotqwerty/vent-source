package com.amazonaws.util;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class XpathUtils
{
  private static Log alS = LogFactory.getLog(XpathUtils.class);
  private static DocumentBuilderFactory avk = DocumentBuilderFactory.newInstance();
  
  public static String a(String paramString, Node paramNode)
    throws XPathExpressionException
  {
    if (paramNode == null) {}
    for (int i = 1; i != 0; i = 0) {
      return null;
    }
    if (!paramString.equals("."))
    {
      if (paramNode == null) {}
      for (Node localNode = null; localNode == null; localNode = (Node)XPathFactory.newInstance().newXPath().evaluate(paramString, paramNode, XPathConstants.NODE)) {
        return null;
      }
    }
    return XPathFactory.newInstance().newXPath().evaluate(paramString, paramNode).trim();
  }
  
  public static Document aG(String paramString)
    throws SAXException, IOException, ParserConfigurationException
  {
    paramString = new NamespaceRemovingInputStream(new ByteArrayInputStream(paramString.getBytes(StringUtils.avd)));
    Document localDocument = avk.newDocumentBuilder().parse(paramString);
    paramString.close();
    return localDocument;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/XpathUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */