package android.support.v4.view.a;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

public final class b
{
  public final Object HE;
  
  public b()
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      this.HE = new b(this);
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      this.HE = new a(this);
      return;
    }
    this.HE = null;
  }
  
  public b(Object paramObject)
  {
    this.HE = paramObject;
  }
  
  static class a
    extends AccessibilityNodeProvider
  {
    final b HF;
    
    a(b paramb)
    {
      this.HF = paramb;
    }
    
    public AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
    {
      return null;
    }
    
    public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
    {
      return null;
    }
    
    public boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      return false;
    }
  }
  
  static final class b
    extends b.a
  {
    b(b paramb)
    {
      super();
    }
    
    public final AccessibilityNodeInfo findFocus(int paramInt)
    {
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */