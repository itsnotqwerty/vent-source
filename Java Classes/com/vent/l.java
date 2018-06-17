package com.vent;

import android.os.Bundle;
import android.support.v4.widget.n;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

abstract class l<T extends com.vent.a.a>
  extends RecyclerView.a<RecyclerView.x>
{
  final WeakReference<a> bUM;
  public boolean bZp;
  final WeakReference<am> caZ;
  View cba;
  n cbb;
  boolean cbc;
  boolean cbd;
  
  l(a parama, am paramam)
  {
    this.bUM = new WeakReference(parama);
    if (paramam != null) {}
    for (parama = new WeakReference(paramam);; parama = null)
    {
      this.caZ = parama;
      setHasStableIds(true);
      return;
    }
  }
  
  private boolean CN()
  {
    return (CD()) && ((CL() != 0) || (Cw() != 0) || (CI() != 0));
  }
  
  public void CB() {}
  
  void CC() {}
  
  abstract boolean CD();
  
  public Bundle CG()
  {
    return new Bundle();
  }
  
  public void CH()
  {
    CC();
    CB();
    aZ(false);
    notifyDataSetChanged();
    g(false, false);
  }
  
  int CI()
  {
    return 0;
  }
  
  int CL()
  {
    return 0;
  }
  
  abstract int Cw();
  
  abstract void aZ(boolean paramBoolean);
  
  final void bb(boolean paramBoolean)
  {
    boolean bool = CD();
    if (paramBoolean != bool)
    {
      int i;
      if (bool)
      {
        bool = CN();
        i = getItemCount();
        aZ(false);
        if (bool) {
          notifyItemRemoved(i - 1);
        }
      }
      if (paramBoolean)
      {
        i = getItemCount();
        aZ(true);
        if (CN()) {
          notifyItemInserted(i);
        }
      }
    }
  }
  
  final int ew(int paramInt)
  {
    if (paramInt < 0) {
      return -1;
    }
    return paramInt - CL();
  }
  
  final int ex(int paramInt)
  {
    if (paramInt < 0) {
      return -1;
    }
    return CL() + paramInt;
  }
  
  public void g(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2 = false;
    View localView;
    if (this.cba != null)
    {
      localView = this.cba;
      if ((this.cbc) && (!this.bZp) && (CL() == 0) && (Cw() == 0) && (CI() == 0)) {
        break label103;
      }
    }
    label103:
    for (int i = 8;; i = 0)
    {
      localView.setVisibility(i);
      if (this.cbb != null)
      {
        boolean bool1 = bool2;
        if (this.bZp) {
          if (!paramBoolean2)
          {
            bool1 = bool2;
            if (!paramBoolean1) {}
          }
          else
          {
            bool1 = true;
          }
        }
        this.cbb.setRefreshing(bool1);
      }
      return;
    }
  }
  
  public final int getItemCount()
  {
    int j = CL();
    int k = Cw();
    int m = CI();
    if (CN()) {}
    for (int i = 1;; i = 0) {
      return i + (m + (j + k));
    }
  }
  
  public long getItemId(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    case 2: 
    case 3: 
    default: 
      return -1L;
    case 0: 
      return -2L;
    case 1: 
      return -3L;
    }
    return -4L;
  }
  
  public int getItemViewType(int paramInt)
  {
    int i = CL();
    if (paramInt < i) {
      return 1;
    }
    paramInt -= i;
    i = Cw();
    if (paramInt < i) {
      return 2;
    }
    if (paramInt - i < CI()) {
      return 4;
    }
    return 0;
  }
  
  abstract boolean isEmpty();
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427530, paramViewGroup, false));
  }
  
  public void t(Bundle paramBundle) {}
  
  class a
    extends l.b
  {
    a(View paramView)
    {
      super();
    }
    
    final int CO()
    {
      return l.this.ew(getAdapterPosition());
    }
  }
  
  static class b
    extends RecyclerView.x
    implements View.OnClickListener
  {
    b(View paramView)
    {
      super();
      paramView.setOnClickListener(this);
    }
    
    public void onClick(View paramView) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */