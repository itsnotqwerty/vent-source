package com.b.a.a.a;

public final class d
{
  public static int b(String paramString1, int paramInt, String paramString2)
  {
    while ((paramInt < paramString1.length()) && (paramString2.indexOf(paramString1.charAt(paramInt)) == -1)) {
      paramInt += 1;
    }
    return paramInt;
  }
  
  public static int f(String paramString, int paramInt)
  {
    while (paramInt < paramString.length())
    {
      int i = paramString.charAt(paramInt);
      if ((i != 32) && (i != 9)) {
        break;
      }
      paramInt += 1;
    }
    return paramInt;
  }
  
  public static int g(String paramString, int paramInt)
  {
    try
    {
      long l = Long.parseLong(paramString);
      if (l > 2147483647L) {
        return Integer.MAX_VALUE;
      }
      if (l < 0L) {
        return 0;
      }
      return (int)l;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */