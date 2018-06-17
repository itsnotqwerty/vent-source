package com.vent;

import android.support.v4.app.i;
import android.support.v4.app.r;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import com.vent.d.c;

public class an
  extends ah
  implements ap
{
  ViewPager bVe;
  r ceG;
  
  private i eC(int paramInt)
  {
    if (this.bVe != null) {
      return c.a(getChildFragmentManager(), this.bVe.getId(), this.ceG, paramInt);
    }
    return null;
  }
  
  public final void DB()
  {
    if (this.bVe != null) {
      ei(this.bVe.getCurrentItem());
    }
  }
  
  public void DC()
  {
    if ((this.ceG != null) && (this.bVe != null))
    {
      int j = this.ceG.getCount();
      int i = 0;
      while (i < j)
      {
        i locali = c.a(getChildFragmentManager(), this.bVe.getId(), this.ceG, i);
        if (locali != null) {
          ((am)locali).Du();
        }
        i += 1;
      }
    }
  }
  
  public final void DD()
  {
    if ((this.ceG != null) && (this.bVe != null))
    {
      i locali = c.a(getChildFragmentManager(), this.bVe);
      if (locali != null) {
        ((am)locali).Du();
      }
    }
  }
  
  public final void DE()
  {
    if ((this.bVe != null) && (this.ceG != null))
    {
      int j = this.ceG.getCount();
      int i = 0;
      while (i < j)
      {
        i locali = c.a(getChildFragmentManager(), this.bVe.getId(), this.ceG, i);
        if (locali != null) {
          ((am)locali).invalidate();
        }
        i += 1;
      }
    }
  }
  
  public void be(boolean paramBoolean)
  {
    Object localObject;
    if (this.bVe != null)
    {
      localObject = c.a(getChildFragmentManager(), this.bVe);
      if ((localObject instanceof am))
      {
        localObject = (am)localObject;
        if (((am)localObject).recyclerView != null)
        {
          if ((paramBoolean) || (this.bVe.getCurrentItem() == 0) || (((LinearLayoutManager)((am)localObject).recyclerView.getLayoutManager()).hr() != 0)) {
            break label77;
          }
          this.bVe.setCurrentItem(0);
        }
      }
    }
    return;
    label77:
    ((am)localObject).By();
  }
  
  public final void eD(int paramInt)
  {
    if ((this.bVe != null) && (this.ceG != null))
    {
      i locali = c.a(getChildFragmentManager(), this.bVe.getId(), this.ceG, paramInt);
      if (locali != null) {
        ((am)locali).invalidate();
      }
    }
  }
  
  final void ei(int paramInt)
  {
    i locali = eC(paramInt);
    if ((locali instanceof ao)) {
      ((ao)locali).DB();
    }
  }
  
  public void onDestroy()
  {
    this.ceG = null;
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    if (this.bVe != null)
    {
      this.bVe.setAdapter(null);
      this.bVe = null;
    }
    super.onDestroyView();
  }
  
  public void onResume()
  {
    super.onResume();
    Object localObject = getParentFragment();
    boolean bool;
    if ((localObject instanceof ap)) {
      bool = ((ap)localObject).p(this);
    }
    for (;;)
    {
      if (bool) {
        DB();
      }
      return;
      localObject = getActivity();
      if ((!(localObject instanceof ap)) || (((ap)localObject).p(this))) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  public boolean p(i parami)
  {
    return (this.bVe != null) && (parami == eC(this.bVe.getCurrentItem()));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */