package android.support.v4.a.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

class e
  extends d
{
  e(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  e(d.a parama, Resources paramResources)
  {
    super(parama, paramResources);
  }
  
  d.a df()
  {
    return new a(this.Ca);
  }
  
  public boolean isAutoMirrored()
  {
    return this.Cb.isAutoMirrored();
  }
  
  public void setAutoMirrored(boolean paramBoolean)
  {
    this.Cb.setAutoMirrored(paramBoolean);
  }
  
  private static final class a
    extends d.a
  {
    a(d.a parama)
    {
      super();
    }
    
    public final Drawable newDrawable(Resources paramResources)
    {
      return new e(this, paramResources);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */