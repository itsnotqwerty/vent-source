package com.google.android.gms.c;

import java.util.ArrayDeque;
import java.util.Queue;

final class p<TResult>
{
  private Queue<o<TResult>> bef;
  private boolean beh;
  private final Object mLock = new Object();
  
  public final void a(o<TResult> paramo)
  {
    synchronized (this.mLock)
    {
      if (this.bef == null) {
        this.bef = new ArrayDeque();
      }
      this.bef.add(paramo);
      return;
    }
  }
  
  public final void c(e<TResult> parame)
  {
    for (;;)
    {
      o localo;
      synchronized (this.mLock)
      {
        if ((this.bef == null) || (this.beh)) {
          return;
        }
        this.beh = true;
        synchronized (this.mLock)
        {
          localo = (o)this.bef.poll();
          if (localo == null)
          {
            this.beh = false;
            return;
          }
        }
      }
      localo.a(parame);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/c/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */