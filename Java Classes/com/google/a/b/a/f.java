package com.google.a.b.a;

import com.google.a.d.c;
import com.google.a.i;
import com.google.a.k;
import com.google.a.m;
import com.google.a.n;
import com.google.a.p;
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
  private static final p bie = new p("closed");
  private final List<k> bif = new ArrayList();
  private String big;
  private k bih = m.bgT;
  
  public f()
  {
    super(bid);
  }
  
  private void b(k paramk)
  {
    if (this.big != null)
    {
      if ((!(paramk instanceof m)) || (this.bgz)) {
        ((n)vA()).a(this.big, paramk);
      }
      this.big = null;
      return;
    }
    if (this.bif.isEmpty())
    {
      this.bih = paramk;
      return;
    }
    k localk = vA();
    if ((localk instanceof i))
    {
      ((i)localk).a(paramk);
      return;
    }
    throw new IllegalStateException();
  }
  
  private k vA()
  {
    return (k)this.bif.get(this.bif.size() - 1);
  }
  
  public final c I(long paramLong)
    throws IOException
  {
    b(new p(Long.valueOf(paramLong)));
    return this;
  }
  
  public final c a(Number paramNumber)
    throws IOException
  {
    if (paramNumber == null) {
      return vF();
    }
    if (!this.bgE)
    {
      double d = paramNumber.doubleValue();
      if ((Double.isNaN(d)) || (Double.isInfinite(d))) {
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber);
      }
    }
    b(new p(paramNumber));
    return this;
  }
  
  public final c aG(boolean paramBoolean)
    throws IOException
  {
    b(new p(Boolean.valueOf(paramBoolean)));
    return this;
  }
  
  public final c b(Boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean == null) {
      return vF();
    }
    b(new p(paramBoolean));
    return this;
  }
  
  public final void close()
    throws IOException
  {
    if (!this.bif.isEmpty()) {
      throw new IOException("Incomplete document");
    }
    this.bif.add(bie);
  }
  
  public final c jdMethod_do(String paramString)
    throws IOException
  {
    if ((this.bif.isEmpty()) || (this.big != null)) {
      throw new IllegalStateException();
    }
    if ((vA() instanceof n))
    {
      this.big = paramString;
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final c dp(String paramString)
    throws IOException
  {
    if (paramString == null) {
      return vF();
    }
    b(new p(paramString));
    return this;
  }
  
  public final void flush()
    throws IOException
  {}
  
  public final c vB()
    throws IOException
  {
    i locali = new i();
    b(locali);
    this.bif.add(locali);
    return this;
  }
  
  public final c vC()
    throws IOException
  {
    if ((this.bif.isEmpty()) || (this.big != null)) {
      throw new IllegalStateException();
    }
    if ((vA() instanceof i))
    {
      this.bif.remove(this.bif.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final c vD()
    throws IOException
  {
    n localn = new n();
    b(localn);
    this.bif.add(localn);
    return this;
  }
  
  public final c vE()
    throws IOException
  {
    if ((this.bif.isEmpty()) || (this.big != null)) {
      throw new IllegalStateException();
    }
    if ((vA() instanceof n))
    {
      this.bif.remove(this.bif.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public final c vF()
    throws IOException
  {
    b(m.bgT);
    return this;
  }
  
  public final k vz()
  {
    if (!this.bif.isEmpty()) {
      throw new IllegalStateException("Expected one JSON element but was " + this.bif);
    }
    return this.bih;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */