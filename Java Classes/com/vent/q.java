package com.vent;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.vent.a.m;
import com.vent.a.v;
import com.vent.a.x;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

abstract class q
  extends o
{
  ArrayList<v> cbx;
  
  q(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  public final void CC()
  {
    super.CC();
    this.cbx = null;
  }
  
  public final Bundle CG()
  {
    Bundle localBundle = super.CG();
    localBundle.putParcelableArrayList("searchsuggestions", this.cbx);
    return localBundle;
  }
  
  public final int CL()
  {
    if ((CS() > 0) && (super.Cw() == 0)) {
      return 1;
    }
    return 0;
  }
  
  final int CS()
  {
    if (this.cbx != null) {
      return this.cbx.size();
    }
    return 0;
  }
  
  final int Cw()
  {
    return CS() + super.Cw();
  }
  
  final void b(x paramx)
  {
    if (this.cbg != null)
    {
      int i = this.cbg.indexOf(paramx);
      if (i >= 0)
      {
        this.cbg.set(i, paramx);
        notifyItemChanged(i + (CL() + CS()));
      }
    }
  }
  
  public long getItemId(int paramInt)
  {
    int i = CL();
    if (paramInt < i) {
      return -3L;
    }
    paramInt -= i;
    i = CS();
    if (paramInt < i) {
      return ((v)this.cbx.get(paramInt)).cjy.hashCode();
    }
    paramInt -= i;
    if (paramInt < super.Cw()) {
      return ((x)this.cbg.get(paramInt)).cjy.hashCode();
    }
    return -2L;
  }
  
  public int getItemViewType(int paramInt)
  {
    int i = CL();
    if (paramInt < i) {
      return 1;
    }
    paramInt -= i;
    i = CS();
    if (paramInt < i) {
      return 3;
    }
    if (paramInt - i < super.Cw()) {
      return 2;
    }
    return 0;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    b localb = null;
    a locala = null;
    switch (paramx.getItemViewType())
    {
    default: 
      super.onBindViewHolder(paramx, paramInt);
      return;
    case 2: 
      paramInt -= CL() + CS();
      if ((this.cbf) && (paramInt >= super.Cw() - 7)) {
        AZ();
      }
      localb = (b)paramx;
      if (this.cbg == null) {}
      for (paramx = locala;; paramx = (x)this.cbg.get(paramInt))
      {
        a(localb, paramx, MyApplication.cgk);
        return;
      }
    }
    locala = (a)paramx;
    paramInt -= CL();
    if (this.cbx == null)
    {
      paramx = localb;
      locala.cby.setText(paramx.value);
      if ((paramInt != CS() - 1) || (super.Cw() == 0)) {
        break label198;
      }
    }
    label198:
    for (paramInt = 0;; paramInt = 8)
    {
      locala.bVX.setVisibility(paramInt);
      locala.bVY.setVisibility(paramInt);
      return;
      paramx = (v)this.cbx.get(paramInt);
      break;
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    case 1: 
      return new l.b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427535, paramViewGroup, false));
    case 2: 
      return new b(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427541, paramViewGroup, false));
    }
    return new a(LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427537, paramViewGroup, false));
  }
  
  public final void t(Bundle paramBundle)
  {
    super.t(paramBundle);
    if (paramBundle != null) {
      this.cbx = paramBundle.getParcelableArrayList("searchsuggestions");
    }
  }
  
  final class a
    extends l.b
  {
    final View bVX;
    final View bVY;
    final TextView cby;
    
    a(View paramView)
    {
      super();
      this.cby = ((TextView)paramView.findViewById(16908308));
      this.bVX = paramView.findViewById(2131296779);
      this.bVY = paramView.findViewById(2131296780);
    }
    
    public final void onClick(View paramView)
    {
      int i;
      if (q.this.cbx != null)
      {
        i = getAdapterPosition() - q.this.CL();
        if ((i >= 0) && (i < q.this.CS())) {
          break label39;
        }
      }
      label39:
      do
      {
        return;
        paramView = (v)q.this.cbx.get(i);
      } while ((paramView == null) || (paramView.value == null));
      ((FrgSearchBoth)q.this.caZ.get()).dY(paramView.value);
    }
  }
  
  final class b
    extends o.a
  {
    b(View paramView)
    {
      super(paramView);
    }
    
    final x CR()
    {
      int i = getAdapterPosition() - q.this.CL() - q.this.CS();
      if ((i < 0) || (q.this.cbg == null)) {
        return null;
      }
      return (x)q.this.cbg.get(i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */