package a.a.a.g;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;

public class m
  extends g
{
  public final l.a ctT;
  public final byte ctU;
  public final int ctV;
  private final byte[] ctW;
  public final byte flags;
  
  static
  {
    if (!m.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private m(byte paramByte1, byte paramByte2, int paramInt, byte[] paramArrayOfByte)
  {
    if ($assertionsDisabled) {}
    this.ctU = paramByte1;
    this.ctT = l.a.e(paramByte1);
    this.flags = paramByte2;
    this.ctV = paramInt;
    this.ctW = paramArrayOfByte;
  }
  
  private m(byte paramByte1, byte paramByte2, int paramInt, byte[] paramArrayOfByte, byte paramByte3)
  {
    this(paramByte1, paramByte2, paramInt, paramArrayOfByte);
  }
  
  public static m a(DataInputStream paramDataInputStream)
    throws IOException
  {
    byte b1 = paramDataInputStream.readByte();
    byte b2 = paramDataInputStream.readByte();
    int i = paramDataInputStream.readUnsignedShort();
    int j = paramDataInputStream.readUnsignedByte();
    byte[] arrayOfByte = new byte[j];
    if ((paramDataInputStream.read(arrayOfByte) != j) && (j != 0)) {
      throw new IOException();
    }
    return new m(b1, b2, i, arrayOfByte, (byte)0);
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeByte(this.ctU);
    paramDataOutputStream.writeByte(this.flags);
    paramDataOutputStream.writeShort(this.ctV);
    paramDataOutputStream.writeByte(this.ctW.length);
    paramDataOutputStream.write(this.ctW);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(this.ctT).append(' ').append(this.flags).append(' ').append(this.ctV).append(' ');
    if (this.ctW.length == 0) {}
    for (String str = "-";; str = new BigInteger(1, this.ctW).toString(16).toUpperCase()) {
      return str;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */