package a.a.a.g;

import a.a.a.e;
import a.a.a.f.b;
import a.a.a.i.b;
import a.a.a.k.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public class q
  extends g
{
  public final byte[] amX;
  public final f.b ctH;
  public final byte ctI;
  public final int ctJ;
  public final k.b cud;
  public final byte cue;
  public final long cuf;
  public final Date cug;
  public final Date cuh;
  public final e cui;
  
  static
  {
    if (!q.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private q(k.b paramb, byte paramByte1, byte paramByte2, long paramLong, Date paramDate1, Date paramDate2, int paramInt, e parame, byte[] paramArrayOfByte)
  {
    this.cud = paramb;
    if ($assertionsDisabled) {}
    this.ctI = paramByte1;
    this.ctH = f.b.d(paramByte1);
    this.cue = paramByte2;
    this.cuf = paramLong;
    this.cug = paramDate1;
    this.cuh = paramDate2;
    this.ctJ = paramInt;
    this.cui = parame;
    this.amX = paramArrayOfByte;
  }
  
  public static q a(DataInputStream paramDataInputStream, byte[] paramArrayOfByte, int paramInt)
    throws IOException
  {
    k.b localb = k.b.fa(paramDataInputStream.readUnsignedShort());
    byte b1 = paramDataInputStream.readByte();
    byte b2 = paramDataInputStream.readByte();
    long l = paramDataInputStream.readInt();
    Date localDate1 = new Date((paramDataInputStream.readInt() & 0xFFFFFFFF) * 1000L);
    Date localDate2 = new Date((paramDataInputStream.readInt() & 0xFFFFFFFF) * 1000L);
    int i = paramDataInputStream.readUnsignedShort();
    paramArrayOfByte = e.a(paramDataInputStream, paramArrayOfByte);
    byte[] arrayOfByte = new byte[paramInt - paramArrayOfByte.size() - 18];
    if (paramDataInputStream.read(arrayOfByte) != arrayOfByte.length) {
      throw new IOException();
    }
    return new q(localb, b1, b2, l & 0xFFFFFFFF, localDate1, localDate2, i, paramArrayOfByte, arrayOfByte);
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeShort(this.cud.value);
    paramDataOutputStream.writeByte(this.ctI);
    paramDataOutputStream.writeByte(this.cue);
    paramDataOutputStream.writeInt((int)this.cuf);
    paramDataOutputStream.writeInt((int)(this.cug.getTime() / 1000L));
    paramDataOutputStream.writeInt((int)(this.cuh.getTime() / 1000L));
    paramDataOutputStream.writeShort(this.ctJ);
    this.cui.writeToStream(paramDataOutputStream);
    paramDataOutputStream.write(this.amX);
  }
  
  public String toString()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    return this.cud + ' ' + this.ctH + ' ' + this.cue + ' ' + this.cuf + ' ' + localSimpleDateFormat.format(this.cug) + ' ' + localSimpleDateFormat.format(this.cuh) + ' ' + this.ctJ + ' ' + this.cui + ". " + b.encodeToString(this.amX);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */