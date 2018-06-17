package com.vent;

import android.content.Context;
import android.os.Build.VERSION;
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
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.EditText;
import android.widget.SearchView;
import com.vent.views.c;
import java.lang.ref.WeakReference;

public final class at
  extends an
  implements View.OnClickListener
{
  private AppBarLayout appBarLayout;
  private TabLayout bVU;
  private EditText cfA;
  private SearchView cfB;
  
  final void DR()
  {
    Context localContext;
    if (this.bVe != null)
    {
      localContext = getContext();
      if (this.bVe.getCurrentItem() != 0) {
        break label31;
      }
    }
    label31:
    for (String str = "Most discussed";; str = "On The Rise")
    {
      ax.v(localContext, str);
      return;
    }
  }
  
  final void DU()
  {
    View localView = getView();
    if (localView != null) {
      localView.requestFocus();
    }
    ActSearch.a(getActivity(), this);
  }
  
  public final void be(boolean paramBoolean)
  {
    super.be(paramBoolean);
    if (this.appBarLayout != null) {
      this.appBarLayout.a(true, true, true);
    }
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if ((getActivity() instanceof ActMain))
    {
      ((ActMain)getActivity()).BM();
      ((ActMain)getActivity()).BW();
    }
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    DU();
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
    paramLayoutInflater = paramLayoutInflater.inflate(2131427439, paramViewGroup, false);
    if ((getActivity() instanceof ActMain)) {
      paramLayoutInflater.setBackgroundResource(2131099769);
    }
    this.bVe = ((ViewPager)paramLayoutInflater.findViewById(2131296782));
    this.bVe.setAdapter(this.ceG);
    this.bVe.a(new c()
    {
      public final void Q(int paramAnonymousInt)
      {
        super.Q(paramAnonymousInt);
        at.this.DR();
      }
      
      public final void ei(int paramAnonymousInt)
      {
        at.this.ei(paramAnonymousInt);
      }
    });
    this.bVU = ((TabLayout)paramLayoutInflater.findViewById(2131296902));
    this.bVU.setupWithViewPager(this.bVe);
    this.bVU.a(new TabLayout.b()
    {
      public final void b(TabLayout.e paramAnonymouse) {}
      
      public final void bT()
      {
        at.this.be(true);
      }
    });
    if (Build.VERSION.SDK_INT >= 11)
    {
      this.cfB = ((SearchView)paramLayoutInflater.findViewById(2131296863));
      paramViewGroup = (ViewGroup.MarginLayoutParams)this.cfB.getLayoutParams();
      paramViewGroup.height = MyApplication.cgi;
      this.cfB.setLayoutParams(paramViewGroup);
      this.cfB.setMinimumHeight(MyApplication.cgi);
      this.cfB.requestLayout();
      this.cfB.addOnLayoutChangeListener(new View.OnLayoutChangeListener()
      {
        public final void onLayoutChange(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int paramAnonymousInt5, int paramAnonymousInt6, int paramAnonymousInt7, int paramAnonymousInt8)
        {
          if (paramAnonymousInt4 - paramAnonymousInt2 == 0)
          {
            ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramAnonymousView.getLayoutParams();
            if (localMarginLayoutParams.height == 0)
            {
              localMarginLayoutParams.height = MyApplication.cgi;
              paramAnonymousView.setLayoutParams(localMarginLayoutParams);
            }
            paramAnonymousView.setMinimumHeight(MyApplication.cgi);
            paramAnonymousView.requestLayout();
          }
        }
      });
    }
    for (;;)
    {
      this.appBarLayout = ((AppBarLayout)paramLayoutInflater.findViewById(2131296315));
      paramLayoutInflater.findViewById(2131296865).setOnClickListener(this);
      return paramLayoutInflater;
      this.cfA = ((EditText)paramLayoutInflater.findViewById(2131296863));
    }
  }
  
  public final void onDestroyView()
  {
    this.bVU = null;
    this.cfA = null;
    this.cfB = null;
    this.appBarLayout = null;
    super.onDestroyView();
  }
  
  public final void onResume()
  {
    super.onResume();
    DR();
  }
  
  public final void onStart()
  {
    super.onStart();
    getView();
  }
  
  public final void onViewStateRestored(Bundle paramBundle)
  {
    super.onViewStateRestored(paramBundle);
    if (Build.VERSION.SDK_INT >= 11)
    {
      this.cfB.setOnQueryTextFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean) {
            at.this.DU();
          }
        }
      });
      return;
    }
    this.cfA.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          at.this.DU();
        }
      }
    });
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
        return FrgVentsList.a("api/v2/vents/most_discussed.json", null, 1, 2131689684, 3, 2, false, 0L);
      }
      return FrgVentsList.a("api/v2/vents/on_the_rise.json", null, 1, 2131689684, 4, 3, false, 0L);
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
        return localah.getString(2131689654);
      }
      return localah.getString(2131689797);
    }
    
    public final int getCount()
    {
      return 2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */