package io.intercom.a.b.a;

import java.lang.reflect.Field;
import java.util.Locale;

public enum c
  implements d
{
  private c() {}
  
  static String L(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = paramString1.length();
    while (i < j)
    {
      char c = paramString1.charAt(i);
      if ((Character.isUpperCase(c)) && (localStringBuilder.length() != 0)) {
        localStringBuilder.append(paramString2);
      }
      localStringBuilder.append(c);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  static String dl(String paramString)
  {
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder();
    char c = paramString.charAt(0);
    int j = paramString.length();
    while ((i < j - 1) && (!Character.isLetter(c)))
    {
      localStringBuilder.append(c);
      i += 1;
      c = paramString.charAt(i);
    }
    String str = paramString;
    if (!Character.isUpperCase(c))
    {
      c = Character.toUpperCase(c);
      i += 1;
      if (i >= paramString.length()) {
        break label120;
      }
    }
    label120:
    for (paramString = c + paramString.substring(i);; paramString = String.valueOf(c))
    {
      str = paramString;
      return str;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */