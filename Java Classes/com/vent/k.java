package com.vent;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.vent.a.p;
import com.vent.d.c;
import com.vent.d.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;

abstract class k
  extends m<p>
{
  int caT;
  ArrayList<Integer> caU;
  int caV = 0;
  int caW = 3;
  
  k(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  protected abstract void AZ();
  
  public final void CC()
  {
    super.CC();
    this.caU = null;
  }
  
  public final Bundle CG()
  {
    Bundle localBundle = super.CG();
    localBundle.putIntegerArrayList("selected", this.caU);
    return localBundle;
  }
  
  final int CL()
  {
    if (this.caT != 0) {
      return 1;
    }
    return 0;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    switch (paramx.getItemViewType())
    {
    default: 
    case 1: 
      do
      {
        return;
      } while (this.caT == 0);
      ((TextView)paramx.itemView.findViewById(16908308)).setText(this.caT);
      return;
    case 0: 
      AZ();
      return;
    }
    paramInt = ew(paramInt);
    if ((this.cbf) && (paramInt >= Cw() - 12)) {
      AZ();
    }
    if (this.cbg == null) {}
    for (p localp = null;; localp = (p)this.cbg.get(paramInt))
    {
      paramx = (a)paramx;
      paramx.bVB.setText(localp.name);
      paramx.CM();
      return;
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    case 1: 
      return new l.b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427529, paramViewGroup, false));
    }
    return new a(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427528, paramViewGroup, false));
  }
  
  public final void t(Bundle paramBundle)
  {
    super.t(paramBundle);
    if (paramBundle != null)
    {
      this.caU = paramBundle.getIntegerArrayList("selected");
      g(false, false);
    }
  }
  
  final class a
    extends l<p>.a
  {
    final TextView bVB;
    final View caX;
    
    a(View paramView)
    {
      super(paramView);
      paramView.setOnClickListener(this);
      this.bVB = ((TextView)paramView.findViewById(16908308));
      this.bVB.setTypeface(e.cmW);
      this.caX = paramView.findViewById(2131296938);
    }
    
    final void CM()
    {
      int i = CO();
      if (i < 0) {
        return;
      }
      View localView = this.caX;
      if (((Integer)k.this.caU.get(i)).intValue() != 0) {}
      for (i = 0;; i = 8)
      {
        localView.setVisibility(i);
        return;
      }
    }
    
    public final void onClick(View paramView)
    {
      int i = CO();
      if (i < 0) {
        return;
      }
      paramView = (Integer)k.this.caU.get(i);
      FrgInterests localFrgInterests = (FrgInterests)k.this.caZ.get();
      if (paramView.intValue() == 0)
      {
        if (localFrgInterests.ceB.size() < k.this.caW)
        {
          k.this.caU.set(i, Integer.valueOf(1));
          localFrgInterests.ceB.add(((p)k.this.cbg.get(i)).cjy);
          CM();
          return;
        }
        c.a((Context)k.this.bUM.get(), ((a)k.this.bUM.get()).getString(2131690079, new Object[] { Integer.valueOf(k.this.caW) }), -1);
        return;
      }
      k.this.caU.set(i, Integer.valueOf(0));
      localFrgInterests.ceB.remove(((p)k.this.cbg.get(i)).cjy);
      CM();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */