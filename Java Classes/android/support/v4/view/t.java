package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.a.a.a;
import android.view.ViewGroup;

public final class t
{
  static final c Ge = new c();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      Ge = new b();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      Ge = new a();
      return;
    }
  }
  
  public static int d(ViewGroup paramViewGroup)
  {
    return Ge.d(paramViewGroup);
  }
  
  public static boolean e(ViewGroup paramViewGroup)
  {
    return Ge.e(paramViewGroup);
  }
  
  static class a
    extends t.c
  {
    public final int d(ViewGroup paramViewGroup)
    {
      return paramViewGroup.getLayoutMode();
    }
  }
  
  static final class b
    extends t.a
  {
    public final boolean e(ViewGroup paramViewGroup)
    {
      return paramViewGroup.isTransitionGroup();
    }
  }
  
  static class c
  {
    public int d(ViewGroup paramViewGroup)
    {
      return 0;
    }
    
    public boolean e(ViewGroup paramViewGroup)
    {
      Boolean localBoolean = (Boolean)paramViewGroup.getTag(a.a.tag_transition_group);
      return ((localBoolean != null) && (localBoolean.booleanValue())) || (paramViewGroup.getBackground() != null) || (r.U(paramViewGroup) != null);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/view/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */