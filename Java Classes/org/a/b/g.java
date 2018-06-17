package org.a.b;

import java.io.PrintStream;

public final class g
{
  private static boolean dcE = false;
  
  public static String fL(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("null input");
    }
    try
    {
      paramString = System.getProperty(paramString);
      return paramString;
    }
    catch (SecurityException paramString) {}
    return null;
  }
  
  public static boolean fM(String paramString)
  {
    paramString = fL(paramString);
    if (paramString == null) {
      return false;
    }
    return paramString.equalsIgnoreCase("true");
  }
  
  public static final void fN(String paramString)
  {
    System.err.println("SLF4J: " + paramString);
  }
  
  public static final void h(String paramString, Throwable paramThrowable)
  {
    System.err.println(paramString);
    System.err.println("Reported exception:");
    paramThrowable.printStackTrace();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/org/a/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */