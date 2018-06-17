package c.a.a.b;

import c.a.a.b;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class c
  extends h
{
  private static final m bxy = new m("");
  private static final d bxz = new d("", (byte)0, (short)0);
  private static final byte[] cVe;
  byte[] bIG = new byte[5];
  byte[] bKM = new byte[10];
  byte[] bMw = new byte[1];
  private d byB = null;
  private b cVk = new b();
  private short cVl = 0;
  private Boolean cVm = null;
  private final long cVn;
  private byte[] cVo = new byte[1];
  
  static
  {
    byte[] arrayOfByte = new byte[16];
    cVe = arrayOfByte;
    arrayOfByte[0] = 0;
    cVe[2] = 1;
    cVe[3] = 3;
    cVe[6] = 4;
    cVe[8] = 5;
    cVe[10] = 6;
    cVe[4] = 7;
    cVe[11] = 8;
    cVe[15] = 9;
    cVe[14] = 10;
    cVe[13] = 11;
    cVe[12] = 12;
  }
  
  public c(c.a.a.d.c paramc, long paramLong)
  {
    super(paramc);
    this.cVn = paramLong;
  }
  
  private int LF()
    throws c.a.a.g
  {
    int j;
    int i;
    int k;
    if (this.cVI.d() >= 5)
    {
      byte[] arrayOfByte = this.cVI.LT();
      int m = this.cVI.c();
      j = 0;
      i = 0;
      k = 0;
      for (;;)
      {
        int n = arrayOfByte[(m + j)];
        k |= (n & 0x7F) << i;
        if ((n & 0x80) != 128) {
          break;
        }
        j += 1;
        i += 7;
      }
      this.cVI.a(j + 1);
      return k;
    }
    for (;;)
    {
      k = Lx();
      j |= (k & 0x7F) << i;
      if ((k & 0x80) == 128)
      {
        i += 7;
      }
      else
      {
        return j;
        i = 0;
        j = 0;
      }
    }
  }
  
  private void a(byte paramByte, int paramInt)
    throws c.a.a.g
  {
    if (paramInt <= 14)
    {
      h((byte)(paramInt << 4 | cVe[paramByte]));
      return;
    }
    h((byte)(cVe[paramByte] | 0xF0));
    b(paramInt);
  }
  
  private void a(d paramd, byte paramByte)
    throws c.a.a.g
  {
    int i = paramByte;
    if (paramByte == -1)
    {
      int j = paramd.bKG;
      i = cVe[j];
    }
    if ((paramd.cVp > this.cVl) && (paramd.cVp - this.cVl <= 15)) {
      h((byte)(paramd.cVp - this.cVl << 4 | i));
    }
    for (;;)
    {
      this.cVl = paramd.cVp;
      return;
      h(i);
      b(dQ(paramd.cVp));
    }
  }
  
  private void b(int paramInt)
    throws c.a.a.g
  {
    int j = 0;
    int i = paramInt;
    paramInt = j;
    for (;;)
    {
      if ((i & 0xFFFFFF80) == 0)
      {
        this.bIG[paramInt] = ((byte)i);
        this.cVI.h(this.bIG, 0, paramInt + 1);
        return;
      }
      this.bIG[paramInt] = ((byte)(i & 0x7F | 0x80));
      i >>>= 7;
      paramInt += 1;
    }
  }
  
  private static int dQ(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  private void fM(int paramInt)
    throws i
  {
    if (paramInt < 0) {
      throw new i("Negative length: " + paramInt);
    }
    if ((this.cVn != -1L) && (paramInt > this.cVn)) {
      throw new i("Length exceeded max allowed: " + paramInt);
    }
  }
  
  private static int fN(int paramInt)
  {
    return paramInt >>> 1 ^ -(paramInt & 0x1);
  }
  
  private void g(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws c.a.a.g
  {
    b(paramInt2);
    this.cVI.h(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private void h(byte paramByte)
    throws c.a.a.g
  {
    this.cVo[0] = paramByte;
    this.cVI.b(this.cVo);
  }
  
  private static byte i(byte paramByte)
    throws i
  {
    switch ((byte)(paramByte & 0xF))
    {
    default: 
      throw new i("don't know what type: " + (byte)(paramByte & 0xF));
    case 0: 
      return 0;
    case 1: 
    case 2: 
      return 2;
    case 3: 
      return 3;
    case 4: 
      return 6;
    case 5: 
      return 8;
    case 6: 
      return 10;
    case 7: 
      return 4;
    case 8: 
      return 11;
    case 9: 
      return 15;
    case 10: 
      return 14;
    case 11: 
      return 13;
    }
    return 12;
  }
  
  public final long LA()
    throws c.a.a.g
  {
    int i = 0;
    long l1 = 0L;
    long l2 = l1;
    int j;
    if (this.cVI.d() >= 10)
    {
      byte[] arrayOfByte = this.cVI.LT();
      int k = this.cVI.c();
      j = 0;
      i = 0;
      for (;;)
      {
        int m = arrayOfByte[(k + j)];
        l1 |= (m & 0x7F) << i;
        if ((m & 0x80) != 128) {
          break;
        }
        j += 1;
        i += 7;
      }
      this.cVI.a(j + 1);
      return l1 >>> 1 ^ -(l1 & 1L);
    }
    for (;;)
    {
      j = Lx();
      l2 |= (j & 0x7F) << i;
      l1 = l2;
      if ((j & 0x80) != 128) {
        break;
      }
      i += 7;
    }
  }
  
  public final double LB()
    throws c.a.a.g
  {
    byte[] arrayOfByte = new byte[8];
    this.cVI.h(arrayOfByte, 8);
    long l1 = arrayOfByte[7];
    long l2 = arrayOfByte[6];
    long l3 = arrayOfByte[5];
    long l4 = arrayOfByte[4];
    long l5 = arrayOfByte[3];
    long l6 = arrayOfByte[2];
    long l7 = arrayOfByte[1];
    return Double.longBitsToDouble(arrayOfByte[0] & 0xFF | (l1 & 0xFF) << 56 | (l2 & 0xFF) << 48 | (l3 & 0xFF) << 40 | (l4 & 0xFF) << 32 | (l5 & 0xFF) << 24 | (l6 & 0xFF) << 16 | (l7 & 0xFF) << 8);
  }
  
  public final String LC()
    throws c.a.a.g
  {
    int i = LF();
    fM(i);
    if (i == 0) {
      return "";
    }
    try
    {
      if (this.cVI.d() >= i)
      {
        String str = new String(this.cVI.LT(), this.cVI.c(), i, "UTF-8");
        this.cVI.a(i);
        return str;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new c.a.a.g("UTF-8 not supported!");
    }
    byte[] arrayOfByte;
    if (i == 0) {
      arrayOfByte = new byte[0];
    }
    for (;;)
    {
      return new String(arrayOfByte, "UTF-8");
      arrayOfByte = new byte[i];
      this.cVI.h(arrayOfByte, i);
    }
  }
  
  public final ByteBuffer LD()
    throws c.a.a.g
  {
    int i = LF();
    fM(i);
    if (i == 0) {
      return ByteBuffer.wrap(new byte[0]);
    }
    byte[] arrayOfByte = new byte[i];
    this.cVI.h(arrayOfByte, i);
    return ByteBuffer.wrap(arrayOfByte);
  }
  
  public final void LE()
  {
    this.cVk.b = -1;
    this.cVl = 0;
  }
  
  public final void Ls()
    throws c.a.a.g
  {
    this.cVk.c(this.cVl);
    this.cVl = 0;
  }
  
  public final g Lt()
    throws c.a.a.g
  {
    int j = LF();
    if (j == 0) {}
    for (int i = 0;; i = Lx()) {
      return new g(i((byte)(i >> 4)), i((byte)(i & 0xF)), j);
    }
  }
  
  public final f Lu()
    throws c.a.a.g
  {
    byte b = Lx();
    int j = b >> 4 & 0xF;
    int i = j;
    if (j == 15) {
      i = LF();
    }
    return new f(i(b), i);
  }
  
  public final l Lv()
    throws c.a.a.g
  {
    return new l(Lu());
  }
  
  public final void Lw()
    throws c.a.a.g
  {}
  
  public final byte Lx()
    throws c.a.a.g
  {
    if (this.cVI.d() > 0)
    {
      byte b = this.cVI.LT()[this.cVI.c()];
      this.cVI.a(1);
      return b;
    }
    this.cVI.h(this.bMw, 1);
    return this.bMw[0];
  }
  
  public final short Ly()
    throws c.a.a.g
  {
    return (short)fN(LF());
  }
  
  public final int Lz()
    throws c.a.a.g
  {
    return fN(LF());
  }
  
  public final void a()
    throws c.a.a.g
  {
    this.cVl = this.cVk.Lq();
  }
  
  public final void a(int paramInt)
    throws c.a.a.g
  {
    b(dQ(paramInt));
  }
  
  public final void a(long paramLong)
    throws c.a.a.g
  {
    paramLong = paramLong << 1 ^ paramLong >> 63;
    int i = 0;
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        this.bKM[i] = ((byte)(int)paramLong);
        this.cVI.h(this.bKM, 0, i + 1);
        return;
      }
      this.bKM[i] = ((byte)(int)(0x7F & paramLong | 0x80));
      paramLong >>>= 7;
      i += 1;
    }
  }
  
  public final void a(d paramd)
    throws c.a.a.g
  {
    if (paramd.bKG == 2)
    {
      this.byB = paramd;
      return;
    }
    a(paramd, (byte)-1);
  }
  
  public final void a(f paramf)
    throws c.a.a.g
  {
    a(paramf.cVH, paramf.b);
  }
  
  public final void a(g paramg)
    throws c.a.a.g
  {
    if (paramg.c == 0)
    {
      h((byte)0);
      return;
    }
    b(paramg.c);
    int i = paramg.cVH;
    i = cVe[i];
    int j = paramg.bKG;
    h((byte)(i << 4 | cVe[j]));
  }
  
  public final void a(l paraml)
    throws c.a.a.g
  {
    a(paraml.cVH, paraml.b);
  }
  
  public final void a(String paramString)
    throws c.a.a.g
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      g(paramString, 0, paramString.length);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new c.a.a.g("UTF-8 not supported!");
    }
  }
  
  public final void a(boolean paramBoolean)
    throws c.a.a.g
  {
    byte b2 = 1;
    byte b1 = 1;
    if (this.byB != null)
    {
      d locald = this.byB;
      if (paramBoolean) {}
      for (;;)
      {
        a(locald, b1);
        this.byB = null;
        return;
        b1 = 2;
      }
    }
    if (paramBoolean) {}
    for (b1 = b2;; b1 = 2)
    {
      h(b1);
      return;
    }
  }
  
  public final void b()
    throws c.a.a.g
  {}
  
  public final void c()
    throws c.a.a.g
  {
    h((byte)0);
  }
  
  public final void d()
    throws c.a.a.g
  {}
  
  public final void e()
    throws c.a.a.g
  {}
  
  public final void f()
    throws c.a.a.g
  {}
  
  public final void g(byte paramByte)
    throws c.a.a.g
  {
    h(paramByte);
  }
  
  public final void h()
    throws c.a.a.g
  {
    this.cVl = this.cVk.Lq();
  }
  
  public final void h(ByteBuffer paramByteBuffer)
    throws c.a.a.g
  {
    int i = paramByteBuffer.limit();
    int j = paramByteBuffer.position();
    g(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), i - j);
  }
  
  public final void j()
    throws c.a.a.g
  {}
  
  public final void l()
    throws c.a.a.g
  {}
  
  public final void n()
    throws c.a.a.g
  {}
  
  public final boolean q()
    throws c.a.a.g
  {
    boolean bool = true;
    if (this.cVm != null)
    {
      bool = this.cVm.booleanValue();
      this.cVm = null;
    }
    while (Lx() == 1) {
      return bool;
    }
    return false;
  }
  
  public final m xd()
    throws c.a.a.g
  {
    this.cVk.c(this.cVl);
    this.cVl = 0;
    return bxy;
  }
  
  public final d xf()
    throws c.a.a.g
  {
    int j = Lx();
    if (j == 0) {
      return bxz;
    }
    int i = (short)((j & 0xF0) >> 4);
    short s;
    d locald;
    if (i == 0)
    {
      s = Ly();
      locald = new d("", i((byte)(j & 0xF)), s);
      i = j & 0xF;
      if ((i != 1) && (i != 2)) {
        break label115;
      }
      i = 1;
      label68:
      if (i != 0) {
        if ((byte)(j & 0xF) != 1) {
          break label120;
        }
      }
    }
    label115:
    label120:
    for (Boolean localBoolean = Boolean.TRUE;; localBoolean = Boolean.FALSE)
    {
      this.cVm = localBoolean;
      this.cVl = locald.cVp;
      return locald;
      s = (short)(i + this.cVl);
      break;
      i = 0;
      break label68;
    }
  }
  
  public static final class a
    implements j
  {
    private final long brA = -1L;
    
    public final h a(c.a.a.d.c paramc)
    {
      return new c(paramc, this.brA);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */