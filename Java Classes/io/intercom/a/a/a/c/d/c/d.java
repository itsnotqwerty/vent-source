package io.intercom.a.a.a.c.d.c;

import android.graphics.drawable.Drawable;
import io.intercom.a.a.a.c.b.u;

final class d
  extends b<Drawable>
{
  private d(Drawable paramDrawable)
  {
    super(paramDrawable);
  }
  
  static u<Drawable> n(Drawable paramDrawable)
  {
    return new d(paramDrawable);
  }
  
  public final Class<Drawable> Iu()
  {
    return this.cOs.getClass();
  }
  
  public final int getSize()
  {
    return Math.max(1, this.cOs.getIntrinsicWidth() * this.cOs.getIntrinsicHeight() * 4);
  }
  
  public final void recycle() {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/c/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */