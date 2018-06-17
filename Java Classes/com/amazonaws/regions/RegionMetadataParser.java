package com.amazonaws.regions;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Deprecated
public class RegionMetadataParser
{
  private static Region a(Element paramElement)
  {
    Region localRegion = new Region(a("Name", paramElement), a("Domain", paramElement));
    paramElement = paramElement.getElementsByTagName("Endpoint");
    int i = 0;
    while (i < paramElement.getLength())
    {
      Object localObject = (Element)paramElement.item(i);
      String str1 = a("ServiceName", (Element)localObject);
      String str2 = a("Hostname", (Element)localObject);
      String str3 = a("Http", (Element)localObject);
      localObject = a("Https", (Element)localObject);
      localRegion.aoS.put(str1, str2);
      localRegion.aoT.put(str1, Boolean.valueOf("true".equals(str3)));
      localRegion.aoU.put(str1, Boolean.valueOf("true".equals(localObject)));
      i += 1;
    }
    return localRegion;
  }
  
  private static String a(String paramString, Element paramElement)
  {
    paramString = paramElement.getElementsByTagName(paramString).item(0);
    if (paramString == null) {
      return null;
    }
    return paramString.getChildNodes().item(0).getNodeValue();
  }
  
  @Deprecated
  public static List<Region> e(InputStream paramInputStream)
    throws IOException
  {
    return f(paramInputStream);
  }
  
  /* Error */
  private static List<Region> f(InputStream paramInputStream)
    throws IOException
  {
    // Byte code:
    //   0: invokestatic 109	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   3: invokevirtual 113	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   6: aload_0
    //   7: invokevirtual 119	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   10: astore_2
    //   11: aload_0
    //   12: invokevirtual 124	java/io/InputStream:close	()V
    //   15: aload_2
    //   16: ldc 126
    //   18: invokeinterface 129 2 0
    //   23: astore_0
    //   24: new 131	java/util/ArrayList
    //   27: dup
    //   28: invokespecial 132	java/util/ArrayList:<init>	()V
    //   31: astore_2
    //   32: iconst_0
    //   33: istore_1
    //   34: iload_1
    //   35: aload_0
    //   36: invokeinterface 39 1 0
    //   41: if_icmpge +89 -> 130
    //   44: aload_0
    //   45: iload_1
    //   46: invokeinterface 43 2 0
    //   51: astore_3
    //   52: aload_3
    //   53: invokeinterface 136 1 0
    //   58: iconst_1
    //   59: if_icmpne +17 -> 76
    //   62: aload_2
    //   63: aload_3
    //   64: checkcast 29	org/w3c/dom/Element
    //   67: invokestatic 138	com/amazonaws/regions/RegionMetadataParser:a	(Lorg/w3c/dom/Element;)Lcom/amazonaws/regions/Region;
    //   70: invokeinterface 143 2 0
    //   75: pop
    //   76: iload_1
    //   77: iconst_1
    //   78: iadd
    //   79: istore_1
    //   80: goto -46 -> 34
    //   83: astore_2
    //   84: aload_2
    //   85: athrow
    //   86: astore_2
    //   87: aload_0
    //   88: invokevirtual 124	java/io/InputStream:close	()V
    //   91: aload_2
    //   92: athrow
    //   93: astore_2
    //   94: new 95	java/io/IOException
    //   97: dup
    //   98: new 145	java/lang/StringBuilder
    //   101: dup
    //   102: ldc -109
    //   104: invokespecial 150	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   107: aload_2
    //   108: invokevirtual 153	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   111: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: invokevirtual 160	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: aload_2
    //   118: invokespecial 163	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   121: athrow
    //   122: astore_0
    //   123: goto -108 -> 15
    //   126: astore_0
    //   127: goto -36 -> 91
    //   130: aload_2
    //   131: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	132	0	paramInputStream	InputStream
    //   33	47	1	i	int
    //   10	53	2	localObject1	Object
    //   83	2	2	localIOException	IOException
    //   86	6	2	localObject2	Object
    //   93	38	2	localException	Exception
    //   51	13	3	localNode	Node
    // Exception table:
    //   from	to	target	type
    //   0	11	83	java/io/IOException
    //   0	11	86	finally
    //   84	86	86	finally
    //   94	122	86	finally
    //   0	11	93	java/lang/Exception
    //   11	15	122	java/io/IOException
    //   87	91	126	java/io/IOException
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/regions/RegionMetadataParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */