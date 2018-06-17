package com.b.a.a.a;

import com.b.a.y;
import java.io.IOException;
import java.net.ProtocolException;

public final class s
{
  public final int b;
  public final y bJR;
  public final String c;
  
  private s(y paramy, int paramInt, String paramString)
  {
    this.bJR = paramy;
    this.b = paramInt;
    this.c = paramString;
  }
  
  public static s dG(String paramString)
    throws IOException
  {
    int i = 9;
    int j;
    y localy;
    if (paramString.startsWith("HTTP/1."))
    {
      if ((paramString.length() < 9) || (paramString.charAt(8) != ' ')) {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      j = paramString.charAt(7) - '0';
      if (j == 0) {
        localy = y.bJR;
      }
    }
    while (paramString.length() < i + 3)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
      if (j == 1)
      {
        localy = y.bMk;
      }
      else
      {
        throw new ProtocolException("Unexpected status line: " + paramString);
        if (paramString.startsWith("ICY "))
        {
          localy = y.bJR;
          i = 4;
        }
        else
        {
          throw new ProtocolException("Unexpected status line: " + paramString);
        }
      }
    }
    try
    {
      j = Integer.parseInt(paramString.substring(i, i + 3));
      if (paramString.length() > i + 3) {
        if (paramString.charAt(i + 3) != ' ') {
          throw new ProtocolException("Unexpected status line: " + paramString);
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
    }
    for (paramString = paramString.substring(i + 4);; paramString = "") {
      return new s(localNumberFormatException, j, paramString);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.bJR == y.bJR) {}
    for (String str = "HTTP/1.0";; str = "HTTP/1.1")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(' ').append(this.b);
      if (this.c != null) {
        localStringBuilder.append(' ').append(this.c);
      }
      return localStringBuilder.toString();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */