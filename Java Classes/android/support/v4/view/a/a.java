package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;

public final class a
{
  public final AccessibilityNodeInfo HB;
  public int HC = -1;
  
  private a(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    this.HB = paramAccessibilityNodeInfo;
  }
  
  public static a a(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    return new a(paramAccessibilityNodeInfo);
  }
  
  public final void G(Object paramObject)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      this.HB.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo)((b)paramObject).HD);
    }
  }
  
  public final void addAction(int paramInt)
  {
    this.HB.addAction(paramInt);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (a)paramObject;
        if (this.HB != null) {
          break;
        }
      } while (((a)paramObject).HB == null);
      return false;
    } while (this.HB.equals(((a)paramObject).HB));
    return false;
  }
  
  public final int hashCode()
  {
    if (this.HB == null) {
      return 0;
    }
    return this.HB.hashCode();
  }
  
  public final void setCheckable(boolean paramBoolean)
  {
    this.HB.setCheckable(paramBoolean);
  }
  
  public final void setClassName(CharSequence paramCharSequence)
  {
    this.HB.setClassName(paramCharSequence);
  }
  
  public final void setScrollable(boolean paramBoolean)
  {
    this.HB.setScrollable(paramBoolean);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append(super.toString());
    Object localObject = new Rect();
    this.HB.getBoundsInParent((Rect)localObject);
    localStringBuilder1.append("; boundsInParent: " + localObject);
    this.HB.getBoundsInScreen((Rect)localObject);
    localStringBuilder1.append("; boundsInScreen: " + localObject);
    localStringBuilder1.append("; packageName: ").append(this.HB.getPackageName());
    localStringBuilder1.append("; className: ").append(this.HB.getClassName());
    localStringBuilder1.append("; text: ").append(this.HB.getText());
    localStringBuilder1.append("; contentDescription: ").append(this.HB.getContentDescription());
    StringBuilder localStringBuilder2 = localStringBuilder1.append("; viewId: ");
    int i;
    if (Build.VERSION.SDK_INT >= 18)
    {
      localObject = this.HB.getViewIdResourceName();
      localStringBuilder2.append((String)localObject);
      localStringBuilder1.append("; checkable: ").append(this.HB.isCheckable());
      localStringBuilder1.append("; checked: ").append(this.HB.isChecked());
      localStringBuilder1.append("; focusable: ").append(this.HB.isFocusable());
      localStringBuilder1.append("; focused: ").append(this.HB.isFocused());
      localStringBuilder1.append("; selected: ").append(this.HB.isSelected());
      localStringBuilder1.append("; clickable: ").append(this.HB.isClickable());
      localStringBuilder1.append("; longClickable: ").append(this.HB.isLongClickable());
      localStringBuilder1.append("; enabled: ").append(this.HB.isEnabled());
      localStringBuilder1.append("; password: ").append(this.HB.isPassword());
      localStringBuilder1.append("; scrollable: " + this.HB.isScrollable());
      localStringBuilder1.append("; [");
      i = this.HB.getActions();
      label397:
      if (i == 0) {
        break label706;
      }
      int j = 1 << Integer.numberOfTrailingZeros(i);
      i = (j ^ 0xFFFFFFFF) & i;
      switch (j)
      {
      default: 
        localObject = "ACTION_UNKNOWN";
      }
    }
    for (;;)
    {
      localStringBuilder1.append((String)localObject);
      if (i != 0) {
        localStringBuilder1.append(", ");
      }
      break label397;
      localObject = null;
      break;
      localObject = "ACTION_FOCUS";
      continue;
      localObject = "ACTION_CLEAR_FOCUS";
      continue;
      localObject = "ACTION_SELECT";
      continue;
      localObject = "ACTION_CLEAR_SELECTION";
      continue;
      localObject = "ACTION_CLICK";
      continue;
      localObject = "ACTION_LONG_CLICK";
      continue;
      localObject = "ACTION_ACCESSIBILITY_FOCUS";
      continue;
      localObject = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
      continue;
      localObject = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
      continue;
      localObject = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
      continue;
      localObject = "ACTION_NEXT_HTML_ELEMENT";
      continue;
      localObject = "ACTION_PREVIOUS_HTML_ELEMENT";
      continue;
      localObject = "ACTION_SCROLL_FORWARD";
      continue;
      localObject = "ACTION_SCROLL_BACKWARD";
      continue;
      localObject = "ACTION_CUT";
      continue;
      localObject = "ACTION_COPY";
      continue;
      localObject = "ACTION_PASTE";
      continue;
      localObject = "ACTION_SET_SELECTION";
    }
    label706:
    localStringBuilder1.append("]");
    return localStringBuilder1.toString();
  }
  
  public static final class a
  {
    public final Object HD;
    
    public a(Object paramObject)
    {
      this.HD = paramObject;
    }
  }
  
  public static final class b
  {
    final Object HD;
    
    private b(Object paramObject)
    {
      this.HD = paramObject;
    }
    
    public static b a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      if (Build.VERSION.SDK_INT >= 21) {
        return new b(AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean, false));
      }
      if (Build.VERSION.SDK_INT >= 19) {
        return new b(AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean));
      }
      return new b(null);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */