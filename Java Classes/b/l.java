package b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class l
  implements s
{
  private final e bKU;
  private int c;
  private final Inflater cUE;
  private boolean d;
  
  l(e parame, Inflater paramInflater)
  {
    if (parame == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramInflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    this.bKU = parame;
    this.cUE = paramInflater;
  }
  
  public l(s params, Inflater paramInflater)
  {
    this(m.b(params), paramInflater);
  }
  
  private void c()
    throws IOException
  {
    if (this.c == 0) {
      return;
    }
    int i = this.c - this.cUE.getRemaining();
    this.c -= i;
    this.bKU.at(i);
  }
  
  public final long b(c paramc, long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.d) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return 0L;
    }
    for (;;)
    {
      boolean bool = b();
      try
      {
        p localp = paramc.fI(1);
        int i = this.cUE.inflate(localp.bIG, localp.c, 2048 - localp.c);
        if (i > 0)
        {
          localp.c += i;
          paramc.b += i;
          return i;
        }
        if ((this.cUE.finished()) || (this.cUE.needsDictionary()))
        {
          c();
          if (localp.b == localp.c)
          {
            paramc.cUy = localp.Lp();
            q.b(localp);
          }
        }
        else
        {
          if (!bool) {
            continue;
          }
          throw new EOFException("source exhausted prematurely");
        }
      }
      catch (DataFormatException paramc)
      {
        throw new IOException(paramc);
      }
    }
    return -1L;
  }
  
  public final boolean b()
    throws IOException
  {
    if (!this.cUE.needsInput()) {
      return false;
    }
    c();
    if (this.cUE.getRemaining() != 0) {
      throw new IllegalStateException("?");
    }
    if (this.bKU.xi()) {
      return true;
    }
    p localp = this.bKU.KU().cUy;
    this.c = (localp.c - localp.b);
    this.cUE.setInput(localp.bIG, localp.b, this.c);
    return false;
  }
  
  public final void close()
    throws IOException
  {
    if (this.d) {
      return;
    }
    this.cUE.end();
    this.d = true;
    this.bKU.close();
  }
  
  public final t zA()
  {
    return this.bKU.zA();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */