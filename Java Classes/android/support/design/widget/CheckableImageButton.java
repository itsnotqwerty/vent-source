package android.support.design.widget;

import android.content.Context;
import android.support.v4.view.a.a;
import android.support.v4.view.b;
import android.support.v4.view.r;
import android.support.v7.a.a.a;
import android.support.v7.widget.p;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;

public class CheckableImageButton
  extends p
  implements Checkable
{
  private static final int[] jQ = { 16842912 };
  private boolean jR;
  
  public CheckableImageButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CheckableImageButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.imageButtonStyle);
  }
  
  public CheckableImageButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    r.a(this, new b()
    {
      public final void a(View paramAnonymousView, a paramAnonymousa)
      {
        super.a(paramAnonymousView, paramAnonymousa);
        paramAnonymousa.setCheckable(true);
        boolean bool = CheckableImageButton.this.isChecked();
        paramAnonymousa.HB.setChecked(bool);
      }
      
      public final void onInitializeAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
      {
        super.onInitializeAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        paramAnonymousAccessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
      }
    });
  }
  
  public boolean isChecked()
  {
    return this.jR;
  }
  
  public int[] onCreateDrawableState(int paramInt)
  {
    if (this.jR) {
      return mergeDrawableStates(super.onCreateDrawableState(jQ.length + paramInt), jQ);
    }
    return super.onCreateDrawableState(paramInt);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (this.jR != paramBoolean)
    {
      this.jR = paramBoolean;
      refreshDrawableState();
      sendAccessibilityEvent(2048);
    }
  }
  
  public void toggle()
  {
    if (!this.jR) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/CheckableImageButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */