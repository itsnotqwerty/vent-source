package com.layer.sdk.internal.lsdkk.lsdka;

import java.util.concurrent.atomic.AtomicReference;

public abstract class c<Tstate, Tcallback>
{
  protected Tcallback a;
  private final AtomicReference<Tstate> b = new AtomicReference();
  
  public c a(Tcallback paramTcallback)
  {
    this.a = paramTcallback;
    return this;
  }
  
  protected Tstate b(Tstate paramTstate)
  {
    Object localObject;
    do
    {
      localObject = this.b.get();
    } while ((localObject != paramTstate) && (!this.b.compareAndSet(localObject, paramTstate)));
    return paramTstate;
  }
  
  public Tstate q()
  {
    return (Tstate)this.b.get();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/lsdka/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */