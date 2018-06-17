package a.a.a.g;

import a.a.a.k.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public final class v
  extends g
{
  private final k.b cqT;
  private final byte[] data;
  
  public v(DataInputStream paramDataInputStream, int paramInt, k.b paramb)
    throws IOException
  {
    this.cqT = paramb;
    this.data = new byte[paramInt];
    paramDataInputStream.readFully(this.data);
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.write(this.data);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */