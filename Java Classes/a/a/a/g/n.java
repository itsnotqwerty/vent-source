package a.a.a.g;

import a.a.a.i.b;
import java.io.DataOutputStream;
import java.io.IOException;

public final class n
  extends g
{
  private final byte[] cub;
  private String cuc;
  
  public n(byte[] paramArrayOfByte)
  {
    this.cub = paramArrayOfByte;
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.write(this.cub);
  }
  
  public final String toString()
  {
    if (this.cuc == null) {
      this.cuc = b.encodeToString(this.cub);
    }
    return this.cuc;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */