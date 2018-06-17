package com.b.a.a.a;

import com.b.a.a.g;
import com.b.a.aa;
import com.b.a.aa.a;
import com.b.a.ac;
import com.b.a.e;
import com.b.a.k;
import com.b.a.t;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public final class j
{
  static final String a = g.b();
  public static final String b = a + "-Sent-Millis";
  private static final Comparator<String> bJx = new Comparator() {};
  public static final String c = a + "-Received-Millis";
  public static final String d = a + "-Selected-Protocol";
  
  static
  {
    g.zw();
  }
  
  public static aa a(e parame, ac paramac, Proxy paramProxy)
    throws IOException
  {
    if (paramac.c == 407) {
      return parame.b(paramProxy, paramac);
    }
    return parame.a(paramProxy, paramac);
  }
  
  public static void a(aa.a parama, Map<String, List<String>> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      String str = (String)paramMap.getKey();
      if ((("Cookie".equalsIgnoreCase(str)) || ("Cookie2".equalsIgnoreCase(str))) && (!((List)paramMap.getValue()).isEmpty()))
      {
        paramMap = (List)paramMap.getValue();
        if (paramMap.size() == 1) {}
        StringBuilder localStringBuilder;
        for (paramMap = (String)paramMap.get(0);; paramMap = localStringBuilder.toString())
        {
          parama.Q(str, paramMap);
          break;
          localStringBuilder = new StringBuilder();
          int j = paramMap.size();
          int i = 0;
          while (i < j)
          {
            if (i > 0) {
              localStringBuilder.append("; ");
            }
            localStringBuilder.append((String)paramMap.get(i));
            i += 1;
          }
        }
      }
    }
  }
  
  static boolean a(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }
  
  private static long b(String paramString)
  {
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  public static List<k> b(t paramt, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramt.a.length / 2;
    int i = 0;
    while (i < k)
    {
      if (paramString.equalsIgnoreCase(paramt.dV(i)))
      {
        String str1 = paramt.dW(i);
        int j = 0;
        while (j < str1.length())
        {
          int m = d.b(str1, j, " ");
          String str2 = str1.substring(j, m).trim();
          j = d.f(str1, m);
          if (!str1.regionMatches(true, j, "realm=\"", 0, 7)) {
            break;
          }
          j += 7;
          m = d.b(str1, j, "\"");
          String str3 = str1.substring(j, m);
          j = d.f(str1, d.b(str1, m + 1, ",") + 1);
          localArrayList.add(new k(str2, str3));
        }
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public static long c(t paramt)
  {
    return b(paramt.a("Content-Length"));
  }
  
  public static long d(aa paramaa)
  {
    return c(paramaa.bMo);
  }
  
  public static Map<String, List<String>> d(t paramt)
  {
    TreeMap localTreeMap = new TreeMap(bJx);
    int j = paramt.a.length / 2;
    int i = 0;
    while (i < j)
    {
      String str1 = paramt.dV(i);
      String str2 = paramt.dW(i);
      ArrayList localArrayList = new ArrayList();
      List localList = (List)localTreeMap.get(str1);
      if (localList != null) {
        localArrayList.addAll(localList);
      }
      localArrayList.add(str2);
      localTreeMap.put(str1, Collections.unmodifiableList(localArrayList));
      i += 1;
    }
    return Collections.unmodifiableMap(localTreeMap);
  }
  
  public static long i(ac paramac)
  {
    return c(paramac.bMy);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */