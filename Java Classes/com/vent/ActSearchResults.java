package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.b;
import android.support.design.widget.TabLayout.e;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v4.app.r;
import android.support.v4.view.ViewPager;
import android.support.v7.app.a;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.View.OnClickListener;
import java.lang.ref.WeakReference;

public final class ActSearchResults
  extends c
  implements View.OnClickListener, ay<au>
{
  private AppBarLayout appBarLayout;
  String q;
  
  public static void b(Activity paramActivity, String paramString)
  {
    Intent localIntent = new Intent(paramActivity, ActSearchResults.class);
    localIntent.putExtra("q", paramString);
    paramActivity.startActivityForResult(localIntent, 26);
  }
  
  final void By()
  {
    if (this.bVe != null)
    {
      i locali = com.vent.d.c.a(getSupportFragmentManager(), this.bVe);
      if (locali != null) {
        ((am)locali).By();
      }
    }
    if (this.appBarLayout != null) {
      this.appBarLayout.a(true, true, true);
    }
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1)
      {
        i locali = com.vent.d.c.a(getSupportFragmentManager(), this.bVe);
        if (locali != null) {
          ((am)locali).Bg();
        }
      }
    }
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    By();
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427383);
    paramBundle = (Toolbar)findViewById(2131296949);
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    paramBundle.setOnClickListener(this);
    this.q = getIntent().getStringExtra("q");
    getSupportActionBar().setTitle("'" + this.q + "'");
    this.bWq = new a(getSupportFragmentManager(), this);
    this.bVe = ((ViewPager)findViewById(2131296782));
    this.bVe.setAdapter(this.bWq);
    this.bVe.a(new com.vent.views.c()
    {
      public final void Q(int paramAnonymousInt)
      {
        super.Q(paramAnonymousInt);
        ActSearchResults localActSearchResults = ActSearchResults.this;
        if (localActSearchResults.bVe != null) {}
        switch (localActSearchResults.bVe.getCurrentItem())
        {
        default: 
          return;
        case 0: 
          ax.aT(localActSearchResults);
          return;
        }
        ax.aU(localActSearchResults);
      }
      
      public final void ei(int paramAnonymousInt)
      {
        ActSearchResults.this.ei(paramAnonymousInt);
      }
    });
    paramBundle = (TabLayout)findViewById(2131296902);
    paramBundle.setupWithViewPager(this.bVe);
    paramBundle.a(new TabLayout.b()
    {
      public final void b(TabLayout.e paramAnonymouse) {}
      
      public final void bT()
      {
        ActSearchResults.this.By();
      }
    });
    this.appBarLayout = ((AppBarLayout)findViewById(2131296315));
  }
  
  protected final void onDestroy()
  {
    this.bVe = null;
    this.bWq = null;
    this.appBarLayout = null;
    super.onDestroy();
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, "Search");
  }
  
  static final class a
    extends r
  {
    final WeakReference<ActSearchResults> bUM;
    
    a(n paramn, ActSearchResults paramActSearchResults)
    {
      super();
      this.bUM = new WeakReference(paramActSearchResults);
    }
    
    public final i ac(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 0: 
        return FrgVentsList.a("api/v2/vents/search.json?q=" + Uri.encode(((ActSearchResults)this.bUM.get()).q.toUpperCase()), null, 1, 2131689684, 0, 4, true, 0L);
      }
      return au.DV();
    }
    
    public final CharSequence aw(int paramInt)
    {
      ActSearchResults localActSearchResults = (ActSearchResults)this.bUM.get();
      if (localActSearchResults != null) {}
      switch (paramInt)
      {
      default: 
        return null;
      case 0: 
        return localActSearchResults.getString(2131689826).toUpperCase();
      }
      return localActSearchResults.getString(2131689822).toUpperCase();
    }
    
    public final int getCount()
    {
      return 2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActSearchResults.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */