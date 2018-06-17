package com.vent;

import android.os.Bundle;
import android.support.v4.widget.n;
import android.support.v4.widget.n.b;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public abstract class am<A extends l<T>, T extends com.vent.a.a>
  extends ah
  implements n.b, ao
{
  A ceE;
  boolean ceF;
  RecyclerView recyclerView;
  
  public final void Bg()
  {
    if (this.ceE != null) {
      this.ceE.notifyItemRangeChanged(0, this.ceE.getItemCount());
    }
  }
  
  public void By()
  {
    if (this.recyclerView != null) {
      this.recyclerView.bA(0);
    }
  }
  
  public final void DB()
  {
    Du();
  }
  
  public void Du() {}
  
  boolean Dv()
  {
    return false;
  }
  
  void Dw() {}
  
  int Dx()
  {
    return 2131689677;
  }
  
  public void em()
  {
    f(true, true);
  }
  
  public abstract void f(boolean paramBoolean1, boolean paramBoolean2);
  
  int getLayoutId()
  {
    int i = 2131427436;
    Bundle localBundle = getArguments();
    if (localBundle != null) {
      i = localBundle.getInt("layout", 2131427436);
    }
    return i;
  }
  
  public void invalidate()
  {
    if (this.ceE != null)
    {
      this.ceE.CB();
      Dw();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if ((paramBundle != null) && (this.ceE != null))
    {
      this.ceE.t(paramBundle.getBundle("adapter"));
      this.ceE.notifyDataSetChanged();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(getLayoutId(), paramViewGroup, false);
    if (this.ceE != null)
    {
      this.ceE.cbb = ((n)paramLayoutInflater.findViewById(2131296925));
      this.ceE.cbb.setOnRefreshListener(this);
      this.ceE.cba = paramLayoutInflater.findViewById(16908292);
      if ((this.ceE.cba instanceof TextView)) {
        ((TextView)this.ceE.cba).setText(Dx());
      }
    }
    this.recyclerView = ((RecyclerView)paramLayoutInflater.findViewById(16908298));
    this.recyclerView.setDescendantFocusability(393216);
    this.recyclerView.setAdapter(this.ceE);
    this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
    if (!this.ceF) {
      this.recyclerView.a(new com.vent.views.a(getContext()));
    }
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    this.ceE = null;
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    if (this.recyclerView != null)
    {
      this.recyclerView.setAdapter(null);
      this.recyclerView = null;
    }
    if (this.ceE != null)
    {
      if (this.ceE.cbb != null)
      {
        this.ceE.cbb.setOnRefreshListener(null);
        this.ceE.cbb = null;
      }
      this.ceE.cba = null;
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
        Du();
      }
      if (this.ceE != null) {
        this.ceE.g(false, false);
      }
      return;
      localObject = getActivity();
      if ((localObject != null) && ((!(localObject instanceof ap)) || (((ap)localObject).p(this)))) {
        bool = true;
      } else {
        bool = false;
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.ceE != null) {
      paramBundle.putBundle("adapter", this.ceE.CG());
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */