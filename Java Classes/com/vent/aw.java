package com.vent;

import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.b;
import android.support.design.widget.TabLayout.e;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v4.app.r;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public final class aw
  extends an
{
  private AppBarLayout appBarLayout;
  private TabLayout bVU;
  private boolean cfJ;
  
  public final void DC()
  {
    if ((this.bVe != null) && (this.ceG != null))
    {
      int i = 0;
      while (i < this.ceG.getCount())
      {
        i locali = com.vent.d.c.a(getChildFragmentManager(), this.bVe.getId(), this.ceG, i);
        if (locali != null) {
          ((am)locali).Du();
        }
        i += 1;
      }
    }
  }
  
  final void DR()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (this.bVe != null) {
      switch (this.bVe.getCurrentItem())
      {
      default: 
        localObject1 = localObject2;
      }
    }
    for (;;)
    {
      ax.v(getContext(), (String)localObject1);
      return;
      localObject1 = "MyFeed";
      continue;
      localObject1 = "LatestVents";
      continue;
      localObject1 = "MyGroups";
    }
  }
  
  public final void be(boolean paramBoolean)
  {
    super.be(paramBoolean);
    if (this.appBarLayout != null) {
      this.appBarLayout.a(true, true, true);
    }
  }
  
  public final boolean bi(boolean paramBoolean)
  {
    if ((isResumed()) && (this.bVe != null))
    {
      this.bVe.d(0, paramBoolean);
      this.cfJ = false;
      return true;
    }
    this.cfJ = true;
    return false;
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null) {
      this.cfJ = paramBundle.getBoolean("gotoYourFeed_requested");
    }
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.ceG == null) {
      this.ceG = new a(getChildFragmentManager(), this);
    }
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2131427442, paramViewGroup, false);
    if ((getActivity() instanceof ActMain)) {
      paramLayoutInflater.setBackgroundResource(2131099769);
    }
    this.bVe = ((ViewPager)paramLayoutInflater.findViewById(2131296782));
    this.bVe.setAdapter(this.ceG);
    this.bVe.a(new com.vent.views.c()
    {
      public final void Q(int paramAnonymousInt)
      {
        super.Q(paramAnonymousInt);
        aw.this.DR();
      }
      
      public final void ei(int paramAnonymousInt)
      {
        aw.this.ei(paramAnonymousInt);
      }
    });
    this.bVU = ((TabLayout)paramLayoutInflater.findViewById(2131296902));
    this.bVU.setupWithViewPager(this.bVe);
    this.bVU.a(new TabLayout.b()
    {
      public final void b(TabLayout.e paramAnonymouse) {}
      
      public final void bT()
      {
        aw.this.be(true);
      }
    });
    this.appBarLayout = ((AppBarLayout)paramLayoutInflater.findViewById(2131296315));
    return paramLayoutInflater;
  }
  
  public final void onDestroyView()
  {
    this.bVU = null;
    this.appBarLayout = null;
    super.onDestroyView();
  }
  
  public final void onResume()
  {
    super.onResume();
    DD();
    if ((getActivity() instanceof ActMain))
    {
      ((ActMain)getActivity()).BM();
      ((ActMain)getActivity()).BW();
    }
    if (this.cfJ) {
      bi(false);
    }
    DR();
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("gotoYourFeed_requested", this.cfJ);
  }
  
  static final class a
    extends r
  {
    final WeakReference<ah> caZ;
    
    a(n paramn, ah paramah)
    {
      super();
      this.caZ = new WeakReference(paramah);
    }
    
    public final i ac(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 0: 
        return ar.DF();
      case 1: 
        return FrgVentsList.a("api/v2/vents/latest.json", null, 0, 2131689684, 2, 1, false, 0L);
      }
      return al.Dz();
    }
    
    public final CharSequence aw(int paramInt)
    {
      ah localah = (ah)this.caZ.get();
      if (localah != null) {}
      switch (paramInt)
      {
      default: 
        return null;
      case 0: 
        return localah.getString(2131689857);
      case 1: 
        return localah.getString(2131689631);
      }
      return localah.getString(2131689602);
    }
    
    public final int getCount()
    {
      return 3;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */