package io.intercom.b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class k
  implements s
{
  private final Inflater cUc;
  private int cUe;
  private boolean closed;
  private final e source;
  
  k(e parame, Inflater paramInflater)
  {
    if (parame == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramInflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    this.source = parame;
    this.cUc = paramInflater;
  }
  
  private void KL()
    throws IOException
  {
    if (this.cUe == 0) {
      return;
    }
    int i = this.cUe - this.cUc.getRemaining();
    this.cUe -= i;
    this.source.ah(i);
  }
  
  public final void close()
    throws IOException
  {
    if (this.closed) {
      return;
    }
    this.cUc.end();
    this.closed = true;
    this.source.close();
  }
  
  public final long read(c paramc, long paramLong)
    throws IOException
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return 0L;
    }
    for (;;)
    {
      int i;
      if (!this.cUc.needsInput()) {
        i = 0;
      }
      try
      {
        o localo;
        for (;;)
        {
          localo = paramc.fy(1);
          int j = (int)Math.min(paramLong, 8192 - localo.limit);
          j = this.cUc.inflate(localo.data, localo.limit, j);
          if (j <= 0) {
            break;
          }
          localo.limit += j;
          paramc.size += j;
          return j;
          KL();
          if (this.cUc.getRemaining() != 0) {
            throw new IllegalStateException("?");
          }
          if (this.source.Kr())
          {
            i = 1;
          }
          else
          {
            localo = this.source.Kp().cTW;
            this.cUe = (localo.limit - localo.pos);
            this.cUc.setInput(localo.data, localo.pos, this.cUe);
            i = 0;
          }
        }
        if ((this.cUc.finished()) || (this.cUc.needsDictionary()))
        {
          KL();
          if (localo.pos == localo.limit)
          {
            paramc.cTW = localo.KO();
            p.b(localo);
          }
        }
        else
        {
          if (i == 0) {
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
  
  public final t timeout()
  {
    return this.source.timeout();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/b/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */