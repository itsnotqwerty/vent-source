package com.b.a.a.a;

import b.c;
import b.r;
import b.t;
import com.b.a.a.i;
import java.io.IOException;
import java.net.ProtocolException;

public final class n
  implements r
{
  private boolean a;
  private final int b;
  public final c bJz = new c();
  
  public n()
  {
    this(-1);
  }
  
  public n(int paramInt)
  {
    this.b = paramInt;
  }
  
  public final void a(c paramc, long paramLong)
    throws IOException
  {
    if (this.a) {
      throw new IllegalStateException("closed");
    }
    i.d(paramc.b, paramLong);
    if ((this.b != -1) && (this.bJz.b > this.b - paramLong)) {
      throw new ProtocolException("exceeded content-length limit of " + this.b + " bytes");
    }
    this.bJz.a(paramc, paramLong);
  }
  
  public final void a(r paramr)
    throws IOException
  {
    c localc = new c();
    this.bJz.a(localc, 0L, this.bJz.b);
    paramr.a(localc, localc.b);
  }
  
  public final void close()
    throws IOException
  {
    if (this.a) {}
    do
    {
      return;
      this.a = true;
    } while (this.bJz.b >= this.b);
    throw new ProtocolException("content-length promised " + this.b + " bytes, but received " + this.bJz.b);
  }
  
  public final void flush()
    throws IOException
  {}
  
  public final t zA()
  {
    return t.cUH;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */