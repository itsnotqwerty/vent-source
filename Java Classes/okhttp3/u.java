package okhttp3;

import java.io.IOException;

public enum u
{
  private final String protocol;
  
  private u(String paramString)
  {
    this.protocol = paramString;
  }
  
  public static u fx(String paramString)
    throws IOException
  {
    if (paramString.equals(cZe.protocol)) {
      return cZe;
    }
    if (paramString.equals(cZf.protocol)) {
      return cZf;
    }
    if (paramString.equals(cZh.protocol)) {
      return cZh;
    }
    if (paramString.equals(cZg.protocol)) {
      return cZg;
    }
    if (paramString.equals(cZi.protocol)) {
      return cZi;
    }
    throw new IOException("Unexpected protocol: " + paramString);
  }
  
  public final String toString()
  {
    return this.protocol;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */