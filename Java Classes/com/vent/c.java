package com.vent;

import android.support.v4.app.i;
import android.support.v4.app.r;
import android.support.v4.view.ViewPager;

public abstract class c
  extends a
  implements ap
{
  ViewPager bVe;
  r bWq;
  
  private i ej(int paramInt)
  {
    if (this.bVe != null) {
      return com.vent.d.c.a(getSupportFragmentManager(), this.bVe.getId(), this.bWq, paramInt);
    }
    return null;
  }
  
  final void ei(int paramInt)
  {
    i locali = ej(paramInt);
    if ((locali instanceof ao)) {
      ((ao)locali).DB();
    }
  }
  
  protected void onDestroy()
  {
    this.bVe = null;
    this.bWq = null;
    super.onDestroy();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (this.bVe != null) {
      ei(this.bVe.getCurrentItem());
    }
  }
  
  public final boolean p(i parami)
  {
    return parami == ej(this.bVe.getCurrentItem());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */