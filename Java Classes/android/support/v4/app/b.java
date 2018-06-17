package android.support.v4.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;

public class b
{
  public static b a(Activity paramActivity, View paramView, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return a(ActivityOptions.makeSceneTransitionAnimation(paramActivity, paramView, paramString));
    }
    return new b();
  }
  
  private static b a(ActivityOptions paramActivityOptions)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return new c(paramActivityOptions);
    }
    if (Build.VERSION.SDK_INT >= 23) {
      return new b(paramActivityOptions);
    }
    return new a(paramActivityOptions);
  }
  
  public static b a(Context paramContext, int paramInt1, int paramInt2)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      return a(ActivityOptions.makeCustomAnimation(paramContext, paramInt1, paramInt2));
    }
    return new b();
  }
  
  public Bundle toBundle()
  {
    return null;
  }
  
  private static class a
    extends b
  {
    protected final ActivityOptions wi;
    
    a(ActivityOptions paramActivityOptions)
    {
      this.wi = paramActivityOptions;
    }
    
    public final Bundle toBundle()
    {
      return this.wi.toBundle();
    }
  }
  
  private static class b
    extends b.a
  {
    b(ActivityOptions paramActivityOptions)
    {
      super();
    }
  }
  
  private static final class c
    extends b.b
  {
    c(ActivityOptions paramActivityOptions)
    {
      super();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */