package com.layer.atlas.util.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.layer.atlas.b.b;

public final class SwipeableItem
  extends FrameLayout
{
  private static final int[] bpA = { b.b.state_swiping };
  private boolean bpB = false;
  
  public SwipeableItem(Context paramContext)
  {
    super(paramContext);
  }
  
  public SwipeableItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SwipeableItem(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected final int[] onCreateDrawableState(int paramInt)
  {
    if (this.bpB)
    {
      int[] arrayOfInt = super.onCreateDrawableState(bpA.length + paramInt);
      mergeDrawableStates(arrayOfInt, bpA);
      return arrayOfInt;
    }
    return super.onCreateDrawableState(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/views/SwipeableItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */