package com.intercom.input.gallery.adapter;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.intercom.input.gallery.m.h;

public class SquareLayout
  extends FrameLayout
{
  private int bms;
  
  public SquareLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public SquareLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b(paramContext, paramAttributeSet);
  }
  
  public SquareLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b(paramContext, paramAttributeSet);
  }
  
  @TargetApi(21)
  public SquareLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    b(paramContext, paramAttributeSet);
  }
  
  private void b(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, m.h.intercom_composer_square_layout, 0, 0);
    try
    {
      this.bms = paramContext.getInteger(m.h.intercom_composer_square_layout_intercom_composer_measure_type, 0);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.bms == 0)
    {
      super.onMeasure(paramInt1, paramInt1);
      return;
    }
    super.onMeasure(paramInt2, paramInt2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/adapter/SquareLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */