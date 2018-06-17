package android.support.v4.widget;

import android.os.Build.VERSION;
import android.widget.EdgeEffect;

public final class i
{
  private static final b Jo = new b();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      Jo = new a();
      return;
    }
  }
  
  public static void a(EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
  {
    Jo.a(paramEdgeEffect, paramFloat1, paramFloat2);
  }
  
  static final class a
    extends i.b
  {
    public final void a(EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
    {
      paramEdgeEffect.onPull(paramFloat1, paramFloat2);
    }
  }
  
  static class b
  {
    public void a(EdgeEffect paramEdgeEffect, float paramFloat1, float paramFloat2)
    {
      paramEdgeEffect.onPull(paramFloat1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */