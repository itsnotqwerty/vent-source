package io.intercom.a.a.a.c.d.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import io.intercom.a.a.a.c.b.q;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.i.h;

public final class p
  implements q, u<BitmapDrawable>
{
  private final Resources cNn;
  private final u<Bitmap> cOf;
  
  private p(Resources paramResources, u<Bitmap> paramu)
  {
    this.cNn = ((Resources)h.checkNotNull(paramResources, "Argument must not be null"));
    this.cOf = ((u)h.checkNotNull(paramu, "Argument must not be null"));
  }
  
  public static u<BitmapDrawable> a(Resources paramResources, u<Bitmap> paramu)
  {
    if (paramu == null) {
      return null;
    }
    return new p(paramResources, paramu);
  }
  
  public final Class<BitmapDrawable> Iu()
  {
    return BitmapDrawable.class;
  }
  
  public final int getSize()
  {
    return this.cOf.getSize();
  }
  
  public final void initialize()
  {
    if ((this.cOf instanceof q)) {
      ((q)this.cOf).initialize();
    }
  }
  
  public final void recycle()
  {
    this.cOf.recycle();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */