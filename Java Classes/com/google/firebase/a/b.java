package com.google.firebase.a;

import java.util.concurrent.atomic.AtomicReference;

public final class b
{
  private static final AtomicReference<b> beA = new AtomicReference();
  
  public static b uX()
  {
    beA.compareAndSet(null, new b());
    return (b)beA.get();
  }
  
  public static void uY() {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */