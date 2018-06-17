package okhttp3.internal.c;

import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.u;

public final class k
{
  public final u cWq;
  public final int code;
  public final String message;
  
  public k(u paramu, int paramInt, String paramString)
  {
    this.cWq = paramu;
    this.code = paramInt;
    this.message = paramString;
  }
  
  public static k fD(String paramString)
    throws IOException
  {
    int i = 9;
    int j;
    u localu;
    if (paramString.startsWith("HTTP/1."))
    {
      if ((paramString.length() < 9) || (paramString.charAt(8) != ' ')) {
        throw new ProtocolException("Unexpected status line: " + paramString);
      }
      j = paramString.charAt(7) - '0';
      if (j == 0) {
        localu = u.cZe;
      }
    }
    while (paramString.length() < i + 3)
    {
      throw new ProtocolException("Unexpected status line: " + paramString);
      if (j == 1)
      {
        localu = u.cZf;
      }
      else
      {
        throw new ProtocolException("Unexpected status line: " + paramString);
        if (paramString.startsWith("ICY "))
        {
          localu = u.cZe;
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
      return new k(localNumberFormatException, j, paramString);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.cWq == u.cZe) {}
    for (String str = "HTTP/1.0";; str = "HTTP/1.1")
    {
      localStringBuilder.append(str);
      localStringBuilder.append(' ').append(this.code);
      if (this.message != null) {
        localStringBuilder.append(' ').append(this.message);
      }
      return localStringBuilder.toString();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/c/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */