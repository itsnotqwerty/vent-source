package a.a.a.g;

import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

public abstract class h
  extends g
{
  protected final byte[] ctN;
  private InetAddress ctO;
  
  protected h(byte[] paramArrayOfByte)
  {
    this.ctN = paramArrayOfByte;
  }
  
  public final byte[] Gm()
  {
    return (byte[])this.ctN.clone();
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.write(this.ctN);
  }
  
  public final InetAddress getInetAddress()
  {
    InetAddress localInetAddress2 = this.ctO;
    InetAddress localInetAddress1 = localInetAddress2;
    if (localInetAddress2 == null) {}
    try
    {
      localInetAddress1 = InetAddress.getByAddress(this.ctN);
      this.ctO = localInetAddress1;
      return localInetAddress1;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      throw new IllegalStateException(localUnknownHostException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */