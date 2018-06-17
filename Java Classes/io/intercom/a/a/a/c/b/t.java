package io.intercom.a.a.a.c.b;

import android.support.v4.g.k.a;
import io.intercom.a.a.a.i.a.a;
import io.intercom.a.a.a.i.a.a.a;
import io.intercom.a.a.a.i.a.a.c;
import io.intercom.a.a.a.i.a.b;
import io.intercom.a.a.a.i.a.b.a;
import io.intercom.a.a.a.i.h;

final class t<Z>
  implements u<Z>, a.c
{
  private static final k.a<t<?>> cKT = a.a(20, new a.a() {});
  private final b cJl = new b.a();
  private boolean cKL;
  private u<Z> cKU;
  private boolean cKV;
  
  static <Z> t<Z> c(u<Z> paramu)
  {
    t localt = (t)h.checkNotNull((t)cKT.as(), "Argument must not be null");
    localt.cKL = false;
    localt.cKV = true;
    localt.cKU = paramu;
    return localt;
  }
  
  public final b Ij()
  {
    return this.cJl;
  }
  
  public final Class<Z> Iu()
  {
    return this.cKU.Iu();
  }
  
  public final Z get()
  {
    return (Z)this.cKU.get();
  }
  
  public final int getSize()
  {
    return this.cKU.getSize();
  }
  
  public final void recycle()
  {
    try
    {
      this.cJl.JX();
      this.cKL = true;
      if (!this.cKV)
      {
        this.cKU.recycle();
        this.cKU = null;
        cKT.j(this);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void unlock()
  {
    try
    {
      this.cJl.JX();
      if (!this.cKV) {
        throw new IllegalStateException("Already unlocked");
      }
    }
    finally {}
    this.cKV = false;
    if (this.cKL) {
      recycle();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */