package com.b.a;

import java.io.IOException;

public enum y
{
  private final String e;
  
  private y(String paramString)
  {
    this.e = paramString;
  }
  
  public static y dL(String paramString)
    throws IOException
  {
    if (paramString.equals(bJR.e)) {
      return bJR;
    }
    if (paramString.equals(bMk.e)) {
      return bMk;
    }
    if (paramString.equals(bMl.e)) {
      return bMl;
    }
    if (paramString.equals(bJL.e)) {
      return bJL;
    }
    throw new IOException("Unexpected protocol: " + paramString);
  }
  
  public final String toString()
  {
    return this.e;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */