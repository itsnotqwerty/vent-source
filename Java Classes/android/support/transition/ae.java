package android.support.transition;

import android.os.Build.VERSION;
import android.view.ViewGroup;

final class ae
{
  private static final ah vi = new af();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 18)
    {
      vi = new ag();
      return;
    }
  }
  
  static ad b(ViewGroup paramViewGroup)
  {
    return vi.b(paramViewGroup);
  }
  
  static void c(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    vi.c(paramViewGroup, paramBoolean);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/transition/ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */