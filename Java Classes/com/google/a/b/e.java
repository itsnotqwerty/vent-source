package com.google.a.b;

public final class e
{
  private static final int bhu;
  
  static
  {
    String str = System.getProperty("java.version");
    int j = dm(str);
    int i = j;
    if (j == -1) {
      i = dn(str);
    }
    j = i;
    if (i == -1) {
      j = 6;
    }
    bhu = j;
  }
  
  private static int dm(String paramString)
  {
    try
    {
      paramString = paramString.split("[._]");
      int j = Integer.parseInt(paramString[0]);
      int i = j;
      if (j == 1)
      {
        i = j;
        if (paramString.length > 1) {
          i = Integer.parseInt(paramString[1]);
        }
      }
      return i;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  private static int dn(String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      int i = 0;
      while (i < paramString.length())
      {
        char c = paramString.charAt(i);
        if (!Character.isDigit(c)) {
          break;
        }
        localStringBuilder.append(c);
        i += 1;
      }
      i = Integer.parseInt(localStringBuilder.toString());
      return i;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  public static int vr()
  {
    return bhu;
  }
  
  public static boolean vs()
  {
    return bhu >= 9;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */