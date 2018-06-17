package a.a.a.i;

import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;

public final class e
{
  public static Inet4Address w(CharSequence paramCharSequence)
  {
    try
    {
      paramCharSequence = InetAddress.getByName(paramCharSequence.toString());
      if ((paramCharSequence instanceof Inet4Address)) {
        return (Inet4Address)paramCharSequence;
      }
    }
    catch (UnknownHostException paramCharSequence)
    {
      throw new IllegalArgumentException(paramCharSequence);
    }
    throw new IllegalArgumentException();
  }
  
  public static Inet6Address x(CharSequence paramCharSequence)
  {
    try
    {
      paramCharSequence = InetAddress.getByName(paramCharSequence.toString());
      if ((paramCharSequence instanceof Inet6Address)) {
        return (Inet6Address)paramCharSequence;
      }
    }
    catch (UnknownHostException paramCharSequence)
    {
      throw new IllegalArgumentException(paramCharSequence);
    }
    throw new IllegalArgumentException();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/i/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */