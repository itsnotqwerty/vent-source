package io.intercom.b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class j
  implements s
{
  private int cUb = 0;
  private final Inflater cUc;
  private final k cUd;
  private final CRC32 crc = new CRC32();
  private final e source;
  
  public j(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    this.cUc = new Inflater(true);
    this.source = l.b(params);
    this.cUd = new k(this.source, this.cUc);
  }
  
  private void b(c paramc, long paramLong1, long paramLong2)
  {
    Object localObject;
    long l1;
    long l2;
    for (paramc = paramc.cTW;; paramc = paramc.cUo)
    {
      localObject = paramc;
      l1 = paramLong1;
      l2 = paramLong2;
      if (paramLong1 < paramc.limit - paramc.pos) {
        break;
      }
      paramLong1 -= paramc.limit - paramc.pos;
    }
    while (l2 > 0L)
    {
      int i = (int)(((o)localObject).pos + l1);
      int j = (int)Math.min(((o)localObject).limit - i, l2);
      this.crc.update(((o)localObject).data, i, j);
      l2 -= j;
      localObject = ((o)localObject).cUo;
      l1 = 0L;
    }
  }
  
  private static void m(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    if (paramInt2 != paramInt1) {
      throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", new Object[] { paramString, Integer.valueOf(paramInt2), Integer.valueOf(paramInt1) }));
    }
  }
  
  public final void close()
    throws IOException
  {
    this.cUd.close();
  }
  
  public final long read(c paramc, long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (paramLong == 0L) {
      return 0L;
    }
    long l;
    if (this.cUb == 0)
    {
      this.source.Z(10L);
      int j = this.source.Kp().ab(3L);
      if ((j >> 1 & 0x1) == 1) {}
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          b(this.source.Kp(), 0L, 10L);
        }
        m("ID1ID2", 8075, this.source.readShort());
        this.source.ah(8L);
        if ((j >> 2 & 0x1) == 1)
        {
          this.source.Z(2L);
          if (i != 0) {
            b(this.source.Kp(), 0L, 2L);
          }
          int k = this.source.Kp().Ku();
          this.source.Z(k);
          if (i != 0) {
            b(this.source.Kp(), 0L, k);
          }
          this.source.ah(k);
        }
        if ((j >> 3 & 0x1) != 1) {
          break label322;
        }
        l = this.source.KB();
        if (l != -1L) {
          break;
        }
        throw new EOFException();
      }
      if (i != 0) {
        b(this.source.Kp(), 0L, 1L + l);
      }
      this.source.ah(1L + l);
      label322:
      if ((j >> 4 & 0x1) == 1)
      {
        l = this.source.KB();
        if (l == -1L) {
          throw new EOFException();
        }
        if (i != 0) {
          b(this.source.Kp(), 0L, 1L + l);
        }
        this.source.ah(1L + l);
      }
      if (i != 0)
      {
        m("FHCRC", this.source.Ku(), (short)(int)this.crc.getValue());
        this.crc.reset();
      }
      this.cUb = 1;
    }
    if (this.cUb == 1)
    {
      l = paramc.size;
      paramLong = this.cUd.read(paramc, paramLong);
      if (paramLong != -1L)
      {
        b(paramc, l, paramLong);
        return paramLong;
      }
      this.cUb = 2;
    }
    if (this.cUb == 2)
    {
      m("CRC", this.source.Kv(), (int)this.crc.getValue());
      m("ISIZE", this.source.Kv(), (int)this.cUc.getBytesWritten());
      this.cUb = 3;
      if (!this.source.Kr()) {
        throw new IOException("gzip finished without exhausting source");
      }
    }
    return -1L;
  }
  
  public final t timeout()
  {
    return this.source.timeout();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */