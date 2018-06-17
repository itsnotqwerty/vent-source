package d;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class j
  implements s
{
  private int cUb = 0;
  private final Inflater cUc;
  private final CRC32 crc = new CRC32();
  private final e dad;
  private final k dcf;
  
  public j(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    this.cUc = new Inflater(true);
    this.dad = l.b(params);
    this.dcf = new k(this.dad, this.cUc);
  }
  
  private void b(c paramc, long paramLong1, long paramLong2)
  {
    Object localObject;
    long l1;
    long l2;
    for (paramc = paramc.dbZ;; paramc = paramc.dcl)
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
      localObject = ((o)localObject).dcl;
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
  
  public final t MK()
  {
    return this.dad.MK();
  }
  
  public final long a(c paramc, long paramLong)
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
      this.dad.Z(10L);
      int j = this.dad.Nj().ab(3L);
      if ((j >> 1 & 0x1) == 1) {}
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          b(this.dad.Nj(), 0L, 10L);
        }
        m("ID1ID2", 8075, this.dad.readShort());
        this.dad.ah(8L);
        if ((j >> 2 & 0x1) == 1)
        {
          this.dad.Z(2L);
          if (i != 0) {
            b(this.dad.Nj(), 0L, 2L);
          }
          int k = this.dad.Nj().Ku();
          this.dad.Z(k);
          if (i != 0) {
            b(this.dad.Nj(), 0L, k);
          }
          this.dad.ah(k);
        }
        if ((j >> 3 & 0x1) != 1) {
          break label322;
        }
        l = this.dad.KB();
        if (l != -1L) {
          break;
        }
        throw new EOFException();
      }
      if (i != 0) {
        b(this.dad.Nj(), 0L, 1L + l);
      }
      this.dad.ah(1L + l);
      label322:
      if ((j >> 4 & 0x1) == 1)
      {
        l = this.dad.KB();
        if (l == -1L) {
          throw new EOFException();
        }
        if (i != 0) {
          b(this.dad.Nj(), 0L, 1L + l);
        }
        this.dad.ah(1L + l);
      }
      if (i != 0)
      {
        m("FHCRC", this.dad.Ku(), (short)(int)this.crc.getValue());
        this.crc.reset();
      }
      this.cUb = 1;
    }
    if (this.cUb == 1)
    {
      l = paramc.size;
      paramLong = this.dcf.a(paramc, paramLong);
      if (paramLong != -1L)
      {
        b(paramc, l, paramLong);
        return paramLong;
      }
      this.cUb = 2;
    }
    if (this.cUb == 2)
    {
      m("CRC", this.dad.Kv(), (int)this.crc.getValue());
      m("ISIZE", this.dad.Kv(), (int)this.cUc.getBytesWritten());
      this.cUb = 3;
      if (!this.dad.Kr()) {
        throw new IOException("gzip finished without exhausting source");
      }
    }
    return -1L;
  }
  
  public final void close()
    throws IOException
  {
    this.dcf.close();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */