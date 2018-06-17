package com.vent;

import android.os.Bundle;
import android.view.View;
import com.vent.a.b;
import com.vent.d.c;
import java.util.ArrayList;

abstract class m<T extends b>
  extends l<T>
{
  public long bZY;
  public boolean cbf;
  ArrayList<T> cbg;
  
  m(a parama, am paramam)
  {
    super(parama, paramam);
  }
  
  public void CB()
  {
    this.bZY = 0L;
  }
  
  public void CC()
  {
    super.CC();
    this.cbg = null;
  }
  
  final boolean CD()
  {
    return this.cbf;
  }
  
  public Bundle CG()
  {
    Bundle localBundle = super.CG();
    localBundle.putParcelableArrayList("data", this.cbg);
    localBundle.putBoolean("needmore", this.cbf);
    localBundle.putLong("age", this.bZY);
    return localBundle;
  }
  
  public final T CP()
  {
    if (c.f(this.cbg)) {
      return null;
    }
    return (b)this.cbg.get(this.cbg.size() - 1);
  }
  
  int Cw()
  {
    if (this.cbg != null) {
      return this.cbg.size();
    }
    return 0;
  }
  
  final void aZ(boolean paramBoolean)
  {
    this.cbf = paramBoolean;
  }
  
  public long getItemId(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    }
    do
    {
      return super.getItemId(paramInt);
    } while (this.cbg == null);
    return ((b)this.cbg.get(ew(paramInt))).cjy.hashCode();
  }
  
  public boolean isEmpty()
  {
    return c.f(this.cbg);
  }
  
  public void t(Bundle paramBundle)
  {
    super.t(paramBundle);
    if (paramBundle != null)
    {
      this.cbg = paramBundle.getParcelableArrayList("data");
      this.cbf = paramBundle.getBoolean("needmore");
      this.bZY = paramBundle.getLong("age");
      g(false, false);
    }
  }
  
  class a
    extends l<T>.a
  {
    a(View paramView)
    {
      super(paramView);
    }
    
    final T CQ()
    {
      int i = CO();
      if ((i >= 0) && (i < m.this.Cw()) && (m.this.cbg != null)) {
        return (b)m.this.cbg.get(i);
      }
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */