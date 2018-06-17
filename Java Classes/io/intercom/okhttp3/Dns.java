package io.intercom.okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

public abstract interface Dns
{
  public static final Dns SYSTEM = new Dns()
  {
    public final List<InetAddress> lookup(String paramAnonymousString)
      throws UnknownHostException
    {
      if (paramAnonymousString == null) {
        throw new UnknownHostException("hostname == null");
      }
      try
      {
        List localList = Arrays.asList(InetAddress.getAllByName(paramAnonymousString));
        return localList;
      }
      catch (NullPointerException localNullPointerException)
      {
        paramAnonymousString = new UnknownHostException("Broken system behaviour for dns lookup of " + paramAnonymousString);
        paramAnonymousString.initCause(localNullPointerException);
        throw paramAnonymousString;
      }
    }
  };
  
  public abstract List<InetAddress> lookup(String paramString)
    throws UnknownHostException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/okhttp3/Dns.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */