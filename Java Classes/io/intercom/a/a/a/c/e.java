package io.intercom.a.a.a.c;

import java.io.IOException;

public final class e
  extends IOException
{
  private final int statusCode;
  
  public e(int paramInt)
  {
    this("Http request failed with status code: " + paramInt, paramInt);
  }
  
  public e(String paramString)
  {
    this(paramString, -1);
  }
  
  public e(String paramString, int paramInt)
  {
    this(paramString, paramInt, (byte)0);
  }
  
  private e(String paramString, int paramInt, byte paramByte)
  {
    super(paramString, null);
    this.statusCode = paramInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */