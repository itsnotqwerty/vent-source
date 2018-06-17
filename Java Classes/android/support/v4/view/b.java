package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.a.a;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

public class b
{
  private static final b EW;
  private static final View.AccessibilityDelegate EX;
  final View.AccessibilityDelegate EY = EW.a(this);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16) {}
    for (EW = new a();; EW = new b())
    {
      EX = new View.AccessibilityDelegate();
      return;
    }
  }
  
  public static android.support.v4.view.a.b F(View paramView)
  {
    return EW.a(EX, paramView);
  }
  
  public static boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return EX.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public static boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return EX.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  public static void sendAccessibilityEvent(View paramView, int paramInt)
  {
    EX.sendAccessibilityEvent(paramView, paramInt);
  }
  
  public static void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    EX.sendAccessibilityEventUnchecked(paramView, paramAccessibilityEvent);
  }
  
  public void a(View paramView, a parama)
  {
    EX.onInitializeAccessibilityNodeInfo(paramView, parama.HB);
  }
  
  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    EX.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    EX.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
  }
  
  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return EW.a(EX, paramView, paramInt, paramBundle);
  }
  
  static final class a
    extends b.b
  {
    public final android.support.v4.view.a.b a(View.AccessibilityDelegate paramAccessibilityDelegate, View paramView)
    {
      paramAccessibilityDelegate = paramAccessibilityDelegate.getAccessibilityNodeProvider(paramView);
      if (paramAccessibilityDelegate != null) {
        return new android.support.v4.view.a.b(paramAccessibilityDelegate);
      }
      return null;
    }
    
    public final View.AccessibilityDelegate a(final b paramb)
    {
      new View.AccessibilityDelegate()
      {
        public final boolean dispatchPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          return b.dispatchPopulateAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final AccessibilityNodeProvider getAccessibilityNodeProvider(View paramAnonymousView)
        {
          paramAnonymousView = b.F(paramAnonymousView);
          if (paramAnonymousView != null) {
            return (AccessibilityNodeProvider)paramAnonymousView.HE;
          }
          return null;
        }
        
        public final void onInitializeAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          paramb.onInitializeAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfo paramAnonymousAccessibilityNodeInfo)
        {
          paramb.a(paramAnonymousView, a.a(paramAnonymousAccessibilityNodeInfo));
        }
        
        public final void onPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          paramb.onPopulateAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final boolean onRequestSendAccessibilityEvent(ViewGroup paramAnonymousViewGroup, View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          return b.onRequestSendAccessibilityEvent(paramAnonymousViewGroup, paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final boolean performAccessibilityAction(View paramAnonymousView, int paramAnonymousInt, Bundle paramAnonymousBundle)
        {
          return paramb.performAccessibilityAction(paramAnonymousView, paramAnonymousInt, paramAnonymousBundle);
        }
        
        public final void sendAccessibilityEvent(View paramAnonymousView, int paramAnonymousInt)
        {
          b.sendAccessibilityEvent(paramAnonymousView, paramAnonymousInt);
        }
        
        public final void sendAccessibilityEventUnchecked(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          b.sendAccessibilityEventUnchecked(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
      };
    }
    
    public final boolean a(View.AccessibilityDelegate paramAccessibilityDelegate, View paramView, int paramInt, Bundle paramBundle)
    {
      return paramAccessibilityDelegate.performAccessibilityAction(paramView, paramInt, paramBundle);
    }
  }
  
  static class b
  {
    public android.support.v4.view.a.b a(View.AccessibilityDelegate paramAccessibilityDelegate, View paramView)
    {
      return null;
    }
    
    public View.AccessibilityDelegate a(final b paramb)
    {
      new View.AccessibilityDelegate()
      {
        public final boolean dispatchPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          return b.dispatchPopulateAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final void onInitializeAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          paramb.onInitializeAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final void onInitializeAccessibilityNodeInfo(View paramAnonymousView, AccessibilityNodeInfo paramAnonymousAccessibilityNodeInfo)
        {
          paramb.a(paramAnonymousView, a.a(paramAnonymousAccessibilityNodeInfo));
        }
        
        public final void onPopulateAccessibilityEvent(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          paramb.onPopulateAccessibilityEvent(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final boolean onRequestSendAccessibilityEvent(ViewGroup paramAnonymousViewGroup, View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          return b.onRequestSendAccessibilityEvent(paramAnonymousViewGroup, paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
        
        public final void sendAccessibilityEvent(View paramAnonymousView, int paramAnonymousInt)
        {
          b.sendAccessibilityEvent(paramAnonymousView, paramAnonymousInt);
        }
        
        public final void sendAccessibilityEventUnchecked(View paramAnonymousView, AccessibilityEvent paramAnonymousAccessibilityEvent)
        {
          b.sendAccessibilityEventUnchecked(paramAnonymousView, paramAnonymousAccessibilityEvent);
        }
      };
    }
    
    public boolean a(View.AccessibilityDelegate paramAccessibilityDelegate, View paramView, int paramInt, Bundle paramBundle)
    {
      return false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */