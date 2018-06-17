package android.support.v4.widget;

import android.os.Build.VERSION;
import android.support.v4.view.e;
import android.support.v4.view.r;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class l
{
  static final d JL = new d();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      JL = new c();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      JL = new b();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      JL = new a();
      return;
    }
  }
  
  public static void a(PopupWindow paramPopupWindow, int paramInt)
  {
    JL.a(paramPopupWindow, paramInt);
  }
  
  public static void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    JL.a(paramPopupWindow, paramView, paramInt1, paramInt2, paramInt3);
  }
  
  public static void a(PopupWindow paramPopupWindow, boolean paramBoolean)
  {
    JL.a(paramPopupWindow, paramBoolean);
  }
  
  static class a
    extends l.d
  {
    public final void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
    {
      paramPopupWindow.showAsDropDown(paramView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  static class b
    extends l.a
  {
    private static Field JM;
    
    static
    {
      try
      {
        Field localField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
        JM = localField;
        localField.setAccessible(true);
        return;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", localNoSuchFieldException);
      }
    }
    
    public void a(PopupWindow paramPopupWindow, boolean paramBoolean)
    {
      if (JM != null) {}
      try
      {
        JM.set(paramPopupWindow, Boolean.valueOf(paramBoolean));
        return;
      }
      catch (IllegalAccessException paramPopupWindow)
      {
        Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", paramPopupWindow);
      }
    }
  }
  
  static final class c
    extends l.b
  {
    public final void a(PopupWindow paramPopupWindow, int paramInt)
    {
      paramPopupWindow.setWindowLayoutType(paramInt);
    }
    
    public final void a(PopupWindow paramPopupWindow, boolean paramBoolean)
    {
      paramPopupWindow.setOverlapAnchor(paramBoolean);
    }
  }
  
  static class d
  {
    private static Method JN;
    private static boolean JO;
    
    public void a(PopupWindow paramPopupWindow, int paramInt)
    {
      if (!JO) {}
      try
      {
        Method localMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", new Class[] { Integer.TYPE });
        JN = localMethod;
        localMethod.setAccessible(true);
        JO = true;
        if (JN != null) {}
        try
        {
          JN.invoke(paramPopupWindow, new Object[] { Integer.valueOf(paramInt) });
          return;
        }
        catch (Exception paramPopupWindow) {}
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
    
    public void a(PopupWindow paramPopupWindow, View paramView, int paramInt1, int paramInt2, int paramInt3)
    {
      int i = paramInt1;
      if ((e.getAbsoluteGravity(paramInt3, r.K(paramView)) & 0x7) == 5) {
        i = paramInt1 - (paramPopupWindow.getWidth() - paramView.getWidth());
      }
      paramPopupWindow.showAsDropDown(paramView, i, paramInt2);
    }
    
    public void a(PopupWindow paramPopupWindow, boolean paramBoolean) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */