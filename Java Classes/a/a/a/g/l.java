package a.a.a.g;

import a.a.a.i.a;
import a.a.a.k.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;

public class l
  extends g
{
  private static final Map<Byte, a> ctS;
  private final byte[] ctQ;
  public final k.b[] ctR;
  public final a ctT;
  public final byte ctU;
  public final int ctV;
  public final byte[] ctW;
  public final byte[] ctX;
  public final byte flags;
  
  static
  {
    if (!l.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      ctS = new HashMap();
      return;
    }
  }
  
  private l(byte paramByte1, byte paramByte2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, k.b[] paramArrayOfb)
  {
    if ($assertionsDisabled) {}
    this.ctU = paramByte1;
    this.ctT = a.e(paramByte1);
    this.flags = paramByte2;
    this.ctV = paramInt;
    this.ctW = paramArrayOfByte1;
    this.ctX = paramArrayOfByte2;
    this.ctR = paramArrayOfb;
    this.ctQ = k.a(paramArrayOfb);
  }
  
  private l(byte paramByte1, byte paramByte2, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, k.b[] paramArrayOfb, byte paramByte3)
  {
    this(paramByte1, paramByte2, paramInt, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfb);
  }
  
  public static l d(DataInputStream paramDataInputStream, int paramInt)
    throws IOException
  {
    byte b1 = paramDataInputStream.readByte();
    byte b2 = paramDataInputStream.readByte();
    int i = paramDataInputStream.readUnsignedShort();
    int j = paramDataInputStream.readUnsignedByte();
    byte[] arrayOfByte1 = new byte[j];
    if (paramDataInputStream.read(arrayOfByte1) != j) {
      throw new IOException();
    }
    int k = paramDataInputStream.readUnsignedByte();
    byte[] arrayOfByte2 = new byte[k];
    if (paramDataInputStream.read(arrayOfByte2) != k) {
      throw new IOException();
    }
    byte[] arrayOfByte3 = new byte[paramInt - (j + 6 + k)];
    if (paramDataInputStream.read(arrayOfByte3) != arrayOfByte3.length) {
      throw new IOException();
    }
    return new l(b1, b2, i, arrayOfByte1, arrayOfByte2, k.w(arrayOfByte3), (byte)0);
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeByte(this.ctU);
    paramDataOutputStream.writeByte(this.flags);
    paramDataOutputStream.writeShort(this.ctV);
    paramDataOutputStream.writeByte(this.ctW.length);
    paramDataOutputStream.write(this.ctW);
    paramDataOutputStream.writeByte(this.ctX.length);
    paramDataOutputStream.write(this.ctX);
    paramDataOutputStream.write(this.ctQ);
  }
  
  public String toString()
  {
    Object localObject2 = new StringBuilder().append(this.ctT).append(' ').append(this.flags).append(' ').append(this.ctV).append(' ');
    if (this.ctW.length == 0) {}
    for (Object localObject1 = "-";; localObject1 = new BigInteger(1, this.ctW).toString(16).toUpperCase())
    {
      localObject1 = ((StringBuilder)localObject2).append((String)localObject1).append(' ').append(a.encodeToString(this.ctX));
      localObject2 = this.ctR;
      int j = localObject2.length;
      int i = 0;
      while (i < j)
      {
        Object localObject3 = localObject2[i];
        ((StringBuilder)localObject1).append(' ').append(localObject3);
        i += 1;
      }
    }
    return ((StringBuilder)localObject1).toString();
  }
  
  public static enum a
  {
    public final String description;
    public final byte value;
    
    private a(int paramInt, String paramString)
    {
      if ((paramInt < 0) || (paramInt > 255)) {
        throw new IllegalArgumentException();
      }
      this.value = ((byte)paramInt);
      this.description = paramString;
      l.FU().put(Byte.valueOf(this.value), this);
    }
    
    public static a e(byte paramByte)
    {
      return (a)l.FU().get(Byte.valueOf(paramByte));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */