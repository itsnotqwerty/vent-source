package io.intercom.a.a.a.c.d.a;

import android.graphics.Bitmap;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.b.q;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.i.h;
import io.intercom.a.a.a.i.i;

public final class d
  implements q, u<Bitmap>
{
  private final Bitmap avo;
  private final e cFr;
  
  public d(Bitmap paramBitmap, e parame)
  {
    this.avo = ((Bitmap)h.checkNotNull(paramBitmap, "Bitmap must not be null"));
    this.cFr = ((e)h.checkNotNull(parame, "BitmapPool must not be null"));
  }
  
  public static d a(Bitmap paramBitmap, e parame)
  {
    if (paramBitmap == null) {
      return null;
    }
    return new d(paramBitmap, parame);
  }
  
  public final Class<Bitmap> Iu()
  {
    return Bitmap.class;
  }
  
  public final int getSize()
  {
    return i.l(this.avo);
  }
  
  public final void initialize()
  {
    this.avo.prepareToDraw();
  }
  
  public final void recycle()
  {
    this.cFr.g(this.avo);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */