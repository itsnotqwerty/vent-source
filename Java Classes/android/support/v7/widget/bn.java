package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

final class bn
  extends bc
{
  private final WeakReference<Context> ajS;
  
  public bn(Context paramContext, Resources paramResources)
  {
    super(paramResources);
    this.ajS = new WeakReference(paramContext);
  }
  
  public final Drawable getDrawable(int paramInt)
    throws Resources.NotFoundException
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    Context localContext = (Context)this.ajS.get();
    if ((localDrawable != null) && (localContext != null))
    {
      m.gh();
      m.a(localContext, paramInt, localDrawable);
    }
    return localDrawable;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */