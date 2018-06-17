package com.layer.sdk.internal.lsdkk;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public class f
{
  private static final k.a b = k.a(f.class);
  final Executor bsK;
  
  public f(Executor paramExecutor)
  {
    this.bsK = paramExecutor;
  }
  
  public void a(final a parama)
  {
    final AtomicReference localAtomicReference = new AtomicReference(null);
    if ((parama instanceof c)) {
      ((c)parama).a();
    }
    if ((parama instanceof b))
    {
      localAtomicReference.set(((b)parama).c());
      if (localAtomicReference.get() == null) {
        return;
      }
    }
    this.bsK.execute(new Runnable()
    {
      public final void run()
      {
        try
        {
          parama.a(localAtomicReference.get());
          return;
        }
        catch (Exception localException)
        {
          k.d(f.wq(), localException.getMessage(), localException);
          parama.a(localAtomicReference.get(), localException);
        }
      }
    });
  }
  
  public static abstract interface a<T>
  {
    public abstract void a(T paramT);
    
    public abstract void a(T paramT, Throwable paramThrowable);
  }
  
  public static abstract interface b<T>
    extends f.c<T>
  {
    public abstract T c();
  }
  
  public static abstract interface c<T>
    extends f.a<T>
  {
    public abstract void a();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */