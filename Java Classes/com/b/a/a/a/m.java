package com.b.a.a.a;

import com.b.a.y;
import java.net.URL;

public final class m
{
  public static String a(y paramy)
  {
    if (paramy == y.bJR) {
      return "HTTP/1.0";
    }
    return "HTTP/1.1";
  }
  
  public static String d(URL paramURL)
  {
    String str = paramURL.getFile();
    if (str == null) {
      paramURL = "/";
    }
    do
    {
      return paramURL;
      paramURL = str;
    } while (str.startsWith("/"));
    return "/" + str;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */