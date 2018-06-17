package com.google.android.gms.c;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;

public final class h
{
  public static void a(e<?> parame, b paramb)
  {
    parame.a(g.bdW, paramb);
    parame.a(g.bdW, paramb);
  }
  
  public static <TResult> TResult b(e<TResult> parame)
    throws ExecutionException
  {
    if (parame.isSuccessful()) {
      return (TResult)parame.getResult();
    }
    throw new ExecutionException(parame.getException());
  }
  
  public static final class a
    implements h.b
  {
    public final CountDownLatch aDl = new CountDownLatch(1);
    
    public final void uh()
    {
      this.aDl.countDown();
    }
    
    public final void ui()
    {
      this.aDl.countDown();
    }
  }
  
  static abstract interface b
    extends b, c<Object>
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */