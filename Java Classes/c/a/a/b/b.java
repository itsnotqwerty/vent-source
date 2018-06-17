package c.a.a.b;

import c.a.a.d.c;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public final class b
  extends h
{
  private static final m cVb = new m();
  protected boolean a = false;
  protected boolean b = true;
  private byte[] cVc = new byte[1];
  private byte[] cVd = new byte[2];
  private byte[] cVe = new byte[4];
  private byte[] cVf = new byte[8];
  private byte[] cVg = new byte[1];
  private byte[] cVh = new byte[2];
  private byte[] cVi = new byte[4];
  private byte[] cVj = new byte[8];
  
  public b(c paramc, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramc);
    this.a = paramBoolean1;
    this.b = paramBoolean2;
  }
  
  private String dW(int paramInt)
    throws c.a.a.g
  {
    try
    {
      Object localObject = new byte[paramInt];
      this.cVI.h((byte[])localObject, paramInt);
      localObject = new String((byte[])localObject, "UTF-8");
      return (String)localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new c.a.a.g("JVM DOES NOT SUPPORT UTF-8");
    }
  }
  
  private int g(byte[] paramArrayOfByte, int paramInt)
    throws c.a.a.g
  {
    return this.cVI.h(paramArrayOfByte, paramInt);
  }
  
  public final long LA()
    throws c.a.a.g
  {
    byte[] arrayOfByte = this.cVj;
    int i = 0;
    if (this.cVI.d() >= 8)
    {
      arrayOfByte = this.cVI.LT();
      i = this.cVI.c();
      this.cVI.a(8);
    }
    for (;;)
    {
      long l1 = arrayOfByte[i] & 0xFF;
      long l2 = arrayOfByte[(i + 1)] & 0xFF;
      long l3 = arrayOfByte[(i + 2)] & 0xFF;
      long l4 = arrayOfByte[(i + 3)] & 0xFF;
      long l5 = arrayOfByte[(i + 4)] & 0xFF;
      long l6 = arrayOfByte[(i + 5)] & 0xFF;
      long l7 = arrayOfByte[(i + 6)] & 0xFF;
      return arrayOfByte[(i + 7)] & 0xFF | l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8;
      g(this.cVj, 8);
    }
  }
  
  public final double LB()
    throws c.a.a.g
  {
    return Double.longBitsToDouble(LA());
  }
  
  public final String LC()
    throws c.a.a.g
  {
    int i = Lz();
    if (this.cVI.d() >= i) {
      try
      {
        String str = new String(this.cVI.LT(), this.cVI.c(), i, "UTF-8");
        this.cVI.a(i);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new c.a.a.g("JVM DOES NOT SUPPORT UTF-8");
      }
    }
    return dW(i);
  }
  
  public final ByteBuffer LD()
    throws c.a.a.g
  {
    int i = Lz();
    if (this.cVI.d() >= i)
    {
      localObject = ByteBuffer.wrap(this.cVI.LT(), this.cVI.c(), i);
      this.cVI.a(i);
      return (ByteBuffer)localObject;
    }
    Object localObject = new byte[i];
    this.cVI.h((byte[])localObject, i);
    return ByteBuffer.wrap((byte[])localObject);
  }
  
  public final void Ls() {}
  
  public final g Lt()
    throws c.a.a.g
  {
    return new g(Lx(), Lx(), Lz());
  }
  
  public final f Lu()
    throws c.a.a.g
  {
    return new f(Lx(), Lz());
  }
  
  public final l Lv()
    throws c.a.a.g
  {
    return new l(Lx(), Lz());
  }
  
  public final void Lw() {}
  
  public final byte Lx()
    throws c.a.a.g
  {
    if (this.cVI.d() > 0)
    {
      byte b1 = this.cVI.LT()[this.cVI.c()];
      this.cVI.a(1);
      return b1;
    }
    g(this.cVg, 1);
    return this.cVg[0];
  }
  
  public final short Ly()
    throws c.a.a.g
  {
    byte[] arrayOfByte = this.cVh;
    int i = 0;
    if (this.cVI.d() >= 2)
    {
      arrayOfByte = this.cVI.LT();
      i = this.cVI.c();
      this.cVI.a(2);
    }
    for (;;)
    {
      int j = arrayOfByte[i];
      return (short)(arrayOfByte[(i + 1)] & 0xFF | (j & 0xFF) << 8);
      g(this.cVh, 2);
    }
  }
  
  public final int Lz()
    throws c.a.a.g
  {
    byte[] arrayOfByte = this.cVi;
    int i = 0;
    if (this.cVI.d() >= 4)
    {
      arrayOfByte = this.cVI.LT();
      i = this.cVI.c();
      this.cVI.a(4);
    }
    for (;;)
    {
      int j = arrayOfByte[i];
      int k = arrayOfByte[(i + 1)];
      int m = arrayOfByte[(i + 2)];
      return arrayOfByte[(i + 3)] & 0xFF | (j & 0xFF) << 24 | (k & 0xFF) << 16 | (m & 0xFF) << 8;
      g(this.cVi, 4);
    }
  }
  
  public final void a() {}
  
  public final void a(int paramInt)
    throws c.a.a.g
  {
    this.cVe[0] = ((byte)(paramInt >> 24 & 0xFF));
    this.cVe[1] = ((byte)(paramInt >> 16 & 0xFF));
    this.cVe[2] = ((byte)(paramInt >> 8 & 0xFF));
    this.cVe[3] = ((byte)(paramInt & 0xFF));
    this.cVI.h(this.cVe, 0, 4);
  }
  
  public final void a(long paramLong)
    throws c.a.a.g
  {
    this.cVf[0] = ((byte)(int)(paramLong >> 56 & 0xFF));
    this.cVf[1] = ((byte)(int)(paramLong >> 48 & 0xFF));
    this.cVf[2] = ((byte)(int)(paramLong >> 40 & 0xFF));
    this.cVf[3] = ((byte)(int)(paramLong >> 32 & 0xFF));
    this.cVf[4] = ((byte)(int)(paramLong >> 24 & 0xFF));
    this.cVf[5] = ((byte)(int)(paramLong >> 16 & 0xFF));
    this.cVf[6] = ((byte)(int)(paramLong >> 8 & 0xFF));
    this.cVf[7] = ((byte)(int)(0xFF & paramLong));
    this.cVI.h(this.cVf, 0, 8);
  }
  
  public final void a(d paramd)
    throws c.a.a.g
  {
    g(paramd.bKG);
    int i = paramd.cVp;
    this.cVd[0] = ((byte)(i >> 8 & 0xFF));
    this.cVd[1] = ((byte)(i & 0xFF));
    this.cVI.h(this.cVd, 0, 2);
  }
  
  public final void a(f paramf)
    throws c.a.a.g
  {
    g(paramf.cVH);
    a(paramf.b);
  }
  
  public final void a(g paramg)
    throws c.a.a.g
  {
    g(paramg.cVH);
    g(paramg.bKG);
    a(paramg.c);
  }
  
  public final void a(l paraml)
    throws c.a.a.g
  {
    g(paraml.cVH);
    a(paraml.b);
  }
  
  public final void a(String paramString)
    throws c.a.a.g
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      a(paramString.length);
      this.cVI.h(paramString, 0, paramString.length);
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new c.a.a.g("JVM DOES NOT SUPPORT UTF-8");
    }
  }
  
  public final void a(boolean paramBoolean)
    throws c.a.a.g
  {
    if (paramBoolean) {}
    for (byte b1 = 1;; b1 = 0)
    {
      g(b1);
      return;
    }
  }
  
  public final void b() {}
  
  public final void c()
    throws c.a.a.g
  {
    g((byte)0);
  }
  
  public final void d() {}
  
  public final void e() {}
  
  public final void f() {}
  
  public final void g(byte paramByte)
    throws c.a.a.g
  {
    this.cVc[0] = paramByte;
    this.cVI.h(this.cVc, 0, 1);
  }
  
  public final void h() {}
  
  public final void h(ByteBuffer paramByteBuffer)
    throws c.a.a.g
  {
    int i = paramByteBuffer.limit() - paramByteBuffer.position();
    a(i);
    this.cVI.h(paramByteBuffer.array(), paramByteBuffer.position() + paramByteBuffer.arrayOffset(), i);
  }
  
  public final void j() {}
  
  public final void l() {}
  
  public final void n() {}
  
  public final boolean q()
    throws c.a.a.g
  {
    return Lx() == 1;
  }
  
  public final m xd()
  {
    return cVb;
  }
  
  public final d xf()
    throws c.a.a.g
  {
    byte b1 = Lx();
    if (b1 == 0) {}
    for (short s = 0;; s = Ly()) {
      return new d("", b1, s);
    }
  }
  
  public static final class a
    implements j
  {
    protected boolean a = false;
    protected boolean b = true;
    
    public a()
    {
      this((byte)0);
    }
    
    private a(byte paramByte) {}
    
    public final h a(c paramc)
    {
      return new b(paramc, this.a, this.b);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/b/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */