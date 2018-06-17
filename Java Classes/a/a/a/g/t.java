package a.a.a.g;

import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;

public final class t
  extends g
{
  public final byte cuq;
  public final byte cus;
  public final byte cut;
  private final byte[] cuu;
  
  public t(byte paramByte1, byte paramByte2, byte paramByte3, byte[] paramArrayOfByte)
  {
    this.cuq = paramByte1;
    this.cus = paramByte2;
    this.cut = paramByte3;
    this.cuu = paramArrayOfByte;
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeByte(this.cuq);
    paramDataOutputStream.writeByte(this.cus);
    paramDataOutputStream.writeByte(this.cut);
    paramDataOutputStream.write(this.cuu);
  }
  
  public final String toString()
  {
    return this.cuq + ' ' + this.cus + ' ' + this.cut + ' ' + new BigInteger(1, this.cuu).toString(16);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */