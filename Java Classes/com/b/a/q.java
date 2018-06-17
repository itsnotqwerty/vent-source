package com.b.a;

import b.b;
import b.f;
import java.io.UnsupportedEncodingException;

public final class q
{
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = b.a(f.L((paramString1 + ":" + paramString2).getBytes("ISO-8859-1")).bMw);
      paramString1 = "Basic " + paramString1;
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new AssertionError();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */