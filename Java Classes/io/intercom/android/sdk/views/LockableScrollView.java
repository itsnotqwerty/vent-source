package io.intercom.android.sdk.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.widget.ScrollView;
import io.intercom.android.sdk.R.styleable;

public class LockableScrollView
  extends ScrollView
{
  private boolean interceptTouch = false;
  private boolean isExpanded = true;
  private int maxHeight = 0;
  private boolean scrollable = true;
  
  public LockableScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public LockableScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setUp(paramAttributeSet);
  }
  
  public LockableScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setUp(paramAttributeSet);
  }
  
  public int getMaxHeight()
  {
    return this.maxHeight;
  }
  
  public boolean isExpanded()
  {
    return this.isExpanded;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.interceptTouch;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (!this.isExpanded)
    {
      i = View.MeasureSpec.getMode(paramInt2);
      switch (i)
      {
      }
    }
    for (i = View.MeasureSpec.makeMeasureSpec(this.maxHeight, Integer.MIN_VALUE);; i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt2), this.maxHeight), i))
    {
      super.onMeasure(paramInt1, i);
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return (this.scrollable) && (super.onTouchEvent(paramMotionEvent));
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    if (this.scrollable) {
      super.scrollTo(paramInt1, paramInt2);
    }
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    if (paramBoolean != this.isExpanded)
    {
      this.isExpanded = paramBoolean;
      requestLayout();
      invalidate();
    }
  }
  
  public void setScrollingEnabled(boolean paramBoolean)
  {
    this.scrollable = paramBoolean;
  }
  
  public void setUp(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.LockableScrollView);
    this.maxHeight = paramAttributeSet.getDimensionPixelSize(R.styleable.LockableScrollView_intercomHeightLimit, 0);
    this.isExpanded = paramAttributeSet.getBoolean(R.styleable.LockableScrollView_intercomExpanded, true);
    this.interceptTouch = paramAttributeSet.getBoolean(R.styleable.LockableScrollView_intercomInterceptTouch, true);
    paramAttributeSet.recycle();
  }
  
  public void toggleExpanded()
  {
    if (!this.isExpanded) {}
    for (boolean bool = true;; bool = false)
    {
      setExpanded(bool);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/LockableScrollView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */