package a.a.a.g;

import a.a.a.f.a;
import a.a.a.f.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;

public class f
  extends g
{
  public final f.b ctH;
  public final byte ctI;
  public final int ctJ;
  public final f.a ctK;
  public final byte ctL;
  protected final byte[] ctM;
  
  static
  {
    if (!f.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private f(int paramInt, byte paramByte1, byte paramByte2, byte[] paramArrayOfByte)
  {
    this(paramInt, null, paramByte1, null, paramByte2, paramArrayOfByte);
  }
  
  private f(int paramInt, f.b paramb, byte paramByte1, f.a parama, byte paramByte2, byte[] paramArrayOfByte)
  {
    this.ctJ = paramInt;
    if (!$assertionsDisabled)
    {
      if (paramb != null) {}
      for (paramInt = paramb.cqE; paramByte1 != paramInt; paramInt = paramByte1) {
        throw new AssertionError();
      }
    }
    this.ctI = paramByte1;
    if (paramb != null)
    {
      this.ctH = paramb;
      if ($assertionsDisabled) {
        break label101;
      }
      if (parama == null) {
        break label95;
      }
    }
    label95:
    for (paramInt = parama.value;; paramInt = paramByte2)
    {
      if (paramByte2 == paramInt) {
        break label101;
      }
      throw new AssertionError();
      paramb = f.b.d(paramByte1);
      break;
    }
    label101:
    this.ctL = paramByte2;
    if (parama != null) {}
    for (;;)
    {
      this.ctK = parama;
      if (($assertionsDisabled) || (paramArrayOfByte != null)) {
        break;
      }
      throw new AssertionError();
      parama = f.a.c(paramByte2);
    }
    this.ctM = paramArrayOfByte;
  }
  
  public f(int paramInt, f.b paramb, f.a parama, byte[] paramArrayOfByte)
  {
    this(paramInt, paramb, paramb.cqE, parama, parama.value, paramArrayOfByte);
  }
  
  public static f c(DataInputStream paramDataInputStream, int paramInt)
    throws IOException
  {
    int i = paramDataInputStream.readUnsignedShort();
    byte b1 = paramDataInputStream.readByte();
    byte b2 = paramDataInputStream.readByte();
    byte[] arrayOfByte = new byte[paramInt - 4];
    if (paramDataInputStream.read(arrayOfByte) != arrayOfByte.length) {
      throw new IOException();
    }
    return new f(i, b1, b2, arrayOfByte);
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeShort(this.ctJ);
    paramDataOutputStream.writeByte(this.ctI);
    paramDataOutputStream.writeByte(this.ctL);
    paramDataOutputStream.write(this.ctM);
  }
  
  public String toString()
  {
    return this.ctJ + ' ' + this.ctH + ' ' + this.ctK + ' ' + new BigInteger(1, this.ctM).toString(16).toUpperCase();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */