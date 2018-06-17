package com.amazonaws.util;

import java.nio.charset.Charset;
import java.util.Locale;

public class StringUtils
{
  public static final Charset avd = Charset.forName("UTF-8");
  
  public static String aC(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (paramString.isEmpty()) {
      return "";
    }
    return paramString.toLowerCase(Locale.ENGLISH);
  }
  
  public static String aD(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (paramString.isEmpty()) {
      return "";
    }
    return paramString.toUpperCase(Locale.ENGLISH);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/StringUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */