package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.app.f;
import java.lang.ref.WeakReference;

public final class bt
  extends Resources
{
  private final WeakReference<Context> ajS;
  
  public bt(Context paramContext, Resources paramResources)
  {
    super(paramResources.getAssets(), paramResources.getDisplayMetrics(), paramResources.getConfiguration());
    this.ajS = new WeakReference(paramContext);
  }
  
  public static boolean jb()
  {
    return (f.ex()) && (Build.VERSION.SDK_INT <= 20);
  }
  
  public final Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Context localContext = (Context)this.ajS.get();
    if (localContext != null)
    {
      m localm = m.gh();
      Drawable localDrawable2 = localm.g(localContext, paramInt);
      Drawable localDrawable1 = localDrawable2;
      if (localDrawable2 == null) {
        localDrawable1 = super.getDrawable(paramInt);
      }
      if (localDrawable1 != null) {
        return localm.a(localContext, paramInt, false, localDrawable1);
      }
      return null;
    }
    return super.getDrawable(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */