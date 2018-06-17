package com.amazonaws.util;

import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class HttpUtils
{
  private static final Pattern auS;
  private static final Pattern auT;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Pattern.quote("+")).append("|").append(Pattern.quote("*")).append("|").append(Pattern.quote("%7E")).append("|").append(Pattern.quote("%2F"));
    auS = Pattern.compile(localStringBuilder.toString());
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(Pattern.quote("%2A")).append("|").append(Pattern.quote("%2B")).append("|");
    auT = Pattern.compile(localStringBuilder.toString());
  }
  
  public static String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    String str;
    if ((paramString2 != null) && (paramString2.length() > 0)) {
      if (paramString2.startsWith("/"))
      {
        str = paramString1;
        if (paramString1.endsWith("/")) {
          str = paramString1.substring(0, paramString1.length() - 1);
        }
        paramString2 = c(paramString2, true);
        paramString1 = paramString2;
        if (paramBoolean) {
          paramString1 = paramString2.replace("//", "/%2F");
        }
        paramString2 = str + paramString1;
      }
    }
    do
    {
      return paramString2;
      str = paramString1;
      if (paramString1.endsWith("/")) {
        break;
      }
      str = paramString1 + "/";
      break;
      paramString2 = paramString1;
    } while (paramString1.endsWith("/"));
    return paramString1 + "/";
  }
  
  public static String c(String paramString, boolean paramBoolean)
  {
    if (paramString == null) {
      return "";
    }
    Matcher localMatcher;
    StringBuffer localStringBuffer;
    for (;;)
    {
      String str;
      try
      {
        paramString = URLEncoder.encode(paramString, "UTF-8");
        localMatcher = auS.matcher(paramString);
        localStringBuffer = new StringBuffer(paramString.length());
        if (!localMatcher.find()) {
          break;
        }
        str = localMatcher.group(0);
        if ("+".equals(str))
        {
          paramString = "%20";
          localMatcher.appendReplacement(localStringBuffer, paramString);
          continue;
        }
        if (!"*".equals(str)) {
          break label96;
        }
      }
      catch (UnsupportedEncodingException paramString)
      {
        throw new RuntimeException(paramString);
      }
      paramString = "%2A";
      continue;
      label96:
      if ("%7E".equals(str))
      {
        paramString = "~";
      }
      else
      {
        paramString = str;
        if (paramBoolean)
        {
          paramString = str;
          if ("%2F".equals(str)) {
            paramString = "/";
          }
        }
      }
    }
    localMatcher.appendTail(localStringBuffer);
    paramString = localStringBuffer.toString();
    return paramString;
  }
  
  public static boolean f(URI paramURI)
  {
    String str = StringUtils.aC(paramURI.getScheme());
    int i = paramURI.getPort();
    if (i <= 0) {}
    while (((str.equals("http")) && (i == 80)) || ((str.equals("https")) && (i == 443))) {
      return false;
    }
    return true;
  }
  
  public static String k(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, false);
  }
  
  public static boolean n(Request<?> paramRequest)
  {
    boolean bool = HttpMethodName.anY.equals(paramRequest.js());
    if (paramRequest.getContent() == null) {}
    for (int i = 1; (bool) && (i != 0); i = 0) {
      return true;
    }
    return false;
  }
  
  public static String o(Request<?> paramRequest)
  {
    if (paramRequest.getParameters().isEmpty()) {
      return null;
    }
    localStringBuilder = new StringBuilder();
    int i = 1;
    try
    {
      Iterator localIterator = paramRequest.getParameters().entrySet().iterator();
      if (localIterator.hasNext())
      {
        paramRequest = (Map.Entry)localIterator.next();
        String str = URLEncoder.encode((String)paramRequest.getKey(), "UTF-8");
        paramRequest = (String)paramRequest.getValue();
        if (paramRequest == null)
        {
          paramRequest = "";
          label95:
          if (i != 0) {
            break label135;
          }
          localStringBuilder.append("&");
        }
        for (;;)
        {
          localStringBuilder.append(str).append("=").append(paramRequest);
          break;
          paramRequest = URLEncoder.encode(paramRequest, "UTF-8");
          break label95;
          label135:
          i = 0;
        }
      }
      return localStringBuilder.toString();
    }
    catch (UnsupportedEncodingException paramRequest)
    {
      throw new IllegalArgumentException(paramRequest);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/HttpUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */