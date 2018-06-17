package com.b.a.a;

import java.net.InetAddress;
import java.net.UnknownHostException;

public abstract interface e
{
  public static final e bIt = new e()
  {
    public final InetAddress[] dC(String paramAnonymousString)
      throws UnknownHostException
    {
      if (paramAnonymousString == null) {
        throw new UnknownHostException("host == null");
      }
      return InetAddress.getAllByName(paramAnonymousString);
    }
  };
  
  public abstract InetAddress[] dC(String paramString)
    throws UnknownHostException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */