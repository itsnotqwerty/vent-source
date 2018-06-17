package io.intercom.android.sdk.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

public class ContentAwareScrollView
  extends ScrollView
{
  private Listener listener;
  
  public ContentAwareScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ContentAwareScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ContentAwareScrollView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private boolean isAtBottom()
  {
    int i = getChildAt(0).getBottom();
    if (i == 0) {}
    while (getBottom() + getScrollY() < i) {
      return false;
    }
    return true;
  }
  
  public Listener getListener()
  {
    return this.listener;
  }
  
  protected void notifyListenerIfAtBottom()
  {
    if ((this.listener != null) && (isAtBottom())) {
      this.listener.onBottomReached();
    }
  }
  
  protected void notifyListenerScrollChanged(int paramInt)
  {
    if (this.listener != null) {
      this.listener.onScrollChanged(paramInt);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    notifyListenerIfAtBottom();
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    notifyListenerIfAtBottom();
    notifyListenerScrollChanged(paramInt2);
  }
  
  public void setListener(Listener paramListener)
  {
    this.listener = paramListener;
    notifyListenerIfAtBottom();
  }
  
  public static abstract interface Listener
  {
    public abstract void onBottomReached();
    
    public abstract void onScrollChanged(int paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ContentAwareScrollView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */