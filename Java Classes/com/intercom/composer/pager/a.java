package com.intercom.composer.pager;

import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v4.app.r;
import android.view.ViewGroup;
import com.intercom.composer.b.b;
import java.util.List;

public final class a
  extends r
{
  private final List<? extends b> inputs;
  
  public a(n paramn, List<? extends b> paramList)
  {
    super(paramn);
    this.inputs = paramList;
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (i)super.a(paramViewGroup, paramInt);
    ((b)this.inputs.get(paramInt)).setFragmentTag(paramViewGroup.getTag());
    return paramViewGroup;
  }
  
  public final i ac(int paramInt)
  {
    return ((b)this.inputs.get(paramInt)).createFragment();
  }
  
  public final int getCount()
  {
    return this.inputs.size();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/pager/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */