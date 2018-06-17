package b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class j
  implements s
{
  private int a = 0;
  private final e bJr;
  private final Inflater cUB;
  private final l cUC;
  private final CRC32 cUD = new CRC32();
  
  public j(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    this.cUB = new Inflater(true);
    this.bJr = m.b(params);
    this.cUC = new l(this.bJr, this.cUB);
  }
  
  private void b(c paramc, long paramLong1, long paramLong2)
  {
    Object localObject;
    long l1;
    long l2;
    for (paramc = paramc.cUy;; paramc = paramc.cUP)
    {
      localObject = paramc;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < paramc.c - paramc.b) {
        break;
      }
      paramLong1 -= paramc.c - paramc.b;
    }
    while (l2 > 0L)
    {
      int i = (int)(((p)localObject).b + l1);
      int j = (int)Math.min(((p)localObject).c - i, l2);
      this.cUD.update(((p)localObject).bIG, i, j);
      l2 -= j;
      localObject = ((p)localObject).cUP;
      l1 = 0L;
    }
  }
  
  private static void f(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 != paramInt1) {
      throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[] { paramString, Integer.valueOf(paramInt2), Integer.valueOf(paramInt1) }));
    }
  }
  
  public final long b(c paramc, long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (paramLong == 0L) {
      return 0L;
    }
    long l;
    if (this.a == 0)
    {
      this.bJr.a(10L);
      int j = this.bJr.KU().ao(3L);
      if ((j >> 1 & 0x1) == 1) {}
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          b(this.bJr.KU(), 0L, 10L);
        }
        f("ID1ID2", 8075, this.bJr.KY());
        this.bJr.at(8L);
        if ((j >> 2 & 0x1) == 1)
        {
          this.bJr.a(2L);
          if (i != 0) {
            b(this.bJr.KU(), 0L, 2L);
          }
          int k = this.bJr.KU().La();
          this.bJr.a(k);
          if (i != 0) {
            b(this.bJr.KU(), 0L, k);
          }
          this.bJr.at(k);
        }
        if ((j >> 3 & 0x1) != 1) {
          break label323;
        }
        l = this.bJr.f((byte)0);
        if (l != -1L) {
          break;
        }
        throw new EOFException();
      }
      if (i != 0) {
        b(this.bJr.KU(), 0L, 1L + l);
      }
      this.bJr.at(1L + l);
      label323:
      if ((j >> 4 & 0x1) == 1)
      {
        l = this.bJr.f((byte)0);
        if (l == -1L) {
          throw new EOFException();
        }
        if (i != 0) {
          b(this.bJr.KU(), 0L, 1L + l);
        }
        this.bJr.at(1L + l);
      }
      if (i != 0)
      {
        f("FHCRC", this.bJr.La(), (short)(int)this.cUD.getValue());
        this.cUD.reset();
      }
      this.a = 1;
    }
    if (this.a == 1)
    {
      l = paramc.b;
      paramLong = this.cUC.b(paramc, paramLong);
      if (paramLong != -1L)
      {
        b(paramc, l, paramLong);
        return paramLong;
      }
      this.a = 2;
    }
    if (this.a == 2)
    {
      f("CRC", this.bJr.Lb(), (int)this.cUD.getValue());
      f("ISIZE", this.bJr.Lb(), this.cUB.getTotalOut());
      this.a = 3;
      if (!this.bJr.xi()) {
        throw new IOException("gzip finished without exhausting source");
      }
    }
    return -1L;
  }
  
  public final void close()
    throws IOException
  {
    this.cUC.close();
  }
  
  public final t zA()
  {
    return this.bJr.zA();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */