package com.google.android.gms.internal;

import com.google.android.gms.ads.a;

public class oh
  extends a
{
  a bbs;
  final Object lock = new Object();
  
  public void cv(int paramInt)
  {
    synchronized (this.lock)
    {
      if (this.bbs != null) {
        this.bbs.cv(paramInt);
      }
      return;
    }
  }
  
  public void lj()
  {
    synchronized (this.lock)
    {
      if (this.bbs != null) {
        this.bbs.lj();
      }
      return;
    }
  }
  
  public final void lk()
  {
    synchronized (this.lock)
    {
      if (this.bbs != null) {
        this.bbs.lk();
      }
      return;
    }
  }
  
  public final void ll()
  {
    synchronized (this.lock)
    {
      if (this.bbs != null) {
        this.bbs.ll();
      }
      return;
    }
  }
  
  public final void lm()
  {
    synchronized (this.lock)
    {
      if (this.bbs != null) {
        this.bbs.lm();
      }
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/oh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */