package io.intercom.a.b.a.b.a;

import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.g;
import io.intercom.a.b.a.i;
import io.intercom.a.b.a.k;
import io.intercom.a.b.a.l;
import io.intercom.a.b.a.n;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class f
  extends c
{
  private static final Writer bid = new Writer()
  {
    public final void close()
      throws IOException
    {
      throw new AssertionError();
    }
    
    public final void flush()
      throws IOException
    {
      throw new AssertionError();
    }
    
    public final void write(char[] paramAnonymousArrayOfChar, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      throw new AssertionError();
    }
  };
  private static final n cSc = new n("closed");
  public final List<i> bif = new ArrayList();
  private String big;
  public i cSd = k.cRt;
  
  public f()
  {
    super(bid);
  }
  
  private i Ki()
  {
    return (i)this.bif.get(this.bif.size() - 1);
  }
  
  private void b(i parami)
  {
    if (this.big != null)
    {
      if ((!(parami instanceof k)) || (this.bgz)) {
        ((l)Ki()).a(this.big, parami);
      }
      this.big = null;
      return;
    }
    if (this.bif.isEmpty())
    {
      this.cSd = parami;
      return;
    }
    i locali = Ki();
    if ((locali instanceof g))
    {
      ((g)locali).a(parami);
      return;
    }
    throw new IllegalStateException();
  }
  
  public final c Kj()
    throws IOException
  {
    g localg = new g();
    b(localg);
    this.bif.add(localg);
    return this;
  }
  
  public final c Kk()
    throws IOException
  {
    if ((this.bif.isEmpty()) || (this.big != null)) {
      throw new IllegalStateException();
    }
    if ((Ki() instanceof g))
    {
      this.bif.remove(this.bif.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final c Kl()
    throws IOException
  {
    l locall = new l();
    b(locall);
    this.bif.add(locall);
    return this;
  }
  
  public final c Km()
    throws IOException
  {
    if ((this.bif.isEmpty()) || (this.big != null)) {
      throw new IllegalStateException();
    }
    if ((Ki() instanceof l))
    {
      this.bif.remove(this.bif.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final c Kn()
    throws IOException
  {
    b(k.cRt);
    return this;
  }
  
  public final c Y(long paramLong)
    throws IOException
  {
    b(new n(Long.valueOf(paramLong)));
    return this;
  }
  
  public final c b(Number paramNumber)
    throws IOException
  {
    if (paramNumber == null) {
      return Kn();
    }
    if (!this.bgE)
    {
      double d = paramNumber.doubleValue();
      if ((Double.isNaN(d)) || (Double.isInfinite(d))) {
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber);
      }
    }
    b(new n(paramNumber));
    return this;
  }
  
  public final c bx(boolean paramBoolean)
    throws IOException
  {
    b(new n(Boolean.valueOf(paramBoolean)));
    return this;
  }
  
  public final c c(Boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean == null) {
      return Kn();
    }
    b(new n(paramBoolean));
    return this;
  }
  
  public final void close()
    throws IOException
  {
    if (!this.bif.isEmpty()) {
      throw new IOException("Incomplete document");
    }
    this.bif.add(cSc);
  }
  
  public final c fd(String paramString)
    throws IOException
  {
    if ((this.bif.isEmpty()) || (this.big != null)) {
      throw new IllegalStateException();
    }
    if ((Ki() instanceof l))
    {
      this.big = paramString;
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final c fe(String paramString)
    throws IOException
  {
    if (paramString == null) {
      return Kn();
    }
    b(new n(paramString));
    return this;
  }
  
  public final void flush()
    throws IOException
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */