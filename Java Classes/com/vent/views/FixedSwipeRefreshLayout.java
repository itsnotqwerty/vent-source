package com.vent.views;

import android.content.Context;
import android.support.v4.widget.n;
import android.util.AttributeSet;

public final class FixedSwipeRefreshLayout
  extends n
{
  private boolean coh = false;
  private boolean coi = false;
  
  public FixedSwipeRefreshLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public FixedSwipeRefreshLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!this.coh)
    {
      this.coh = true;
      setRefreshing(this.coi);
    }
  }
  
  public final void setRefreshing(boolean paramBoolean)
  {
    if (this.coh)
    {
      super.setRefreshing(paramBoolean);
      return;
    }
    this.coi = paramBoolean;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/views/FixedSwipeRefreshLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */