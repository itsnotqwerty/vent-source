package com.vent.views;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;

public final class MyToolbar
  extends Toolbar
{
  private Integer coF = null;
  
  public MyToolbar(Context paramContext)
  {
    super(paramContext);
  }
  
  public MyToolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public MyToolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public final int getTitleMarginBottom()
  {
    if (this.coF == null) {
      return super.getTitleMarginBottom();
    }
    return getTop() - this.coF.intValue() + super.getTitleMarginBottom();
  }
  
  public final int getTitleMarginTop()
  {
    if (this.coF == null) {
      return super.getTitleMarginTop();
    }
    return -getTop() + this.coF.intValue() + super.getTitleMarginTop();
  }
  
  public final void offsetTopAndBottom(int paramInt)
  {
    super.offsetTopAndBottom(paramInt);
    if (this.coF == null) {
      this.coF = Integer.valueOf(paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/views/MyToolbar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */