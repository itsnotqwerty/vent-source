package io.intercom.a.a.a.c.b;

import android.os.Looper;

public final class o<Z>
  implements u<Z>
{
  private a cIF;
  private io.intercom.a.a.a.c.h cIL;
  final boolean cIM;
  final u<Z> cIN;
  private final boolean cKJ;
  private int cKK;
  private boolean cKL;
  
  public o(u<Z> paramu, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.cIN = ((u)io.intercom.a.a.a.i.h.checkNotNull(paramu, "Argument must not be null"));
    this.cIM = paramBoolean1;
    this.cKJ = paramBoolean2;
  }
  
  public final Class<Z> Iu()
  {
    return this.cIN.Iu();
  }
  
  final void a(io.intercom.a.a.a.c.h paramh, a parama)
  {
    this.cIL = paramh;
    this.cIF = parama;
  }
  
  public final void acquire()
  {
    if (this.cKL) {
      throw new IllegalStateException("Cannot acquire a recycled resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call acquire on the main thread");
    }
    this.cKK += 1;
  }
  
  public final Z get()
  {
    return (Z)this.cIN.get();
  }
  
  public final int getSize()
  {
    return this.cIN.getSize();
  }
  
  public final void recycle()
  {
    if (this.cKK > 0) {
      throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
    }
    if (this.cKL) {
      throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
    }
    this.cKL = true;
    if (this.cKJ) {
      this.cIN.recycle();
    }
  }
  
  public final void release()
  {
    if (this.cKK <= 0) {
      throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call release on the main thread");
    }
    int i = this.cKK - 1;
    this.cKK = i;
    if (i == 0) {
      this.cIF.b(this.cIL, this);
    }
  }
  
  public final String toString()
  {
    return "EngineResource{isCacheable=" + this.cIM + ", listener=" + this.cIF + ", key=" + this.cIL + ", acquired=" + this.cKK + ", isRecycled=" + this.cKL + ", resource=" + this.cIN + '}';
  }
  
  static abstract interface a
  {
    public abstract void b(io.intercom.a.a.a.c.h paramh, o<?> paramo);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */