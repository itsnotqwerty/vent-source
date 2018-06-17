package a.a.a.g;

import a.a.a.f.b;
import a.a.a.i.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class e
  extends g
{
  public final short ctF;
  public final byte ctG;
  public final f.b ctH;
  public final byte ctI;
  private final byte[] key;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private e(short paramShort, byte paramByte1, byte paramByte2, byte[] paramArrayOfByte)
  {
    this(paramShort, paramByte1, f.b.d(paramByte2), paramArrayOfByte);
  }
  
  private e(short paramShort, byte paramByte1, f.b paramb, byte paramByte2, byte[] paramArrayOfByte)
  {
    this.ctF = paramShort;
    this.ctG = paramByte1;
    if (!$assertionsDisabled)
    {
      if (paramb != null) {}
      for (byte b = paramb.cqE; paramByte2 != b; b = paramByte2) {
        throw new AssertionError();
      }
    }
    this.ctI = paramByte2;
    if (paramb != null) {}
    for (;;)
    {
      this.ctH = paramb;
      this.key = paramArrayOfByte;
      return;
      paramb = f.b.d(paramByte2);
    }
  }
  
  private e(short paramShort, byte paramByte, f.b paramb, byte[] paramArrayOfByte)
  {
    this(paramShort, paramByte, paramb, paramb.cqE, paramArrayOfByte);
  }
  
  public static e b(DataInputStream paramDataInputStream, int paramInt)
    throws IOException
  {
    short s = paramDataInputStream.readShort();
    byte b1 = paramDataInputStream.readByte();
    byte b2 = paramDataInputStream.readByte();
    byte[] arrayOfByte = new byte[paramInt - 4];
    paramDataInputStream.readFully(arrayOfByte);
    return new e(s, b1, b2, arrayOfByte);
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeShort(this.ctF);
    paramDataOutputStream.writeByte(this.ctG);
    paramDataOutputStream.writeByte(this.ctH.cqE);
    paramDataOutputStream.write(this.key);
  }
  
  public String toString()
  {
    return this.ctF + ' ' + this.ctG + ' ' + this.ctH + ' ' + b.encodeToString(this.key);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */