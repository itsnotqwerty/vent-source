package io.intercom.a.a.a.c.d.a;

import android.content.Context;
import android.graphics.Bitmap;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.m;
import io.intercom.a.a.a.i.i;

public abstract class e
  implements m<Bitmap>
{
  public e() {}
  
  @Deprecated
  public e(Context paramContext)
  {
    this();
  }
  
  @Deprecated
  public e(io.intercom.a.a.a.c.b.a.e parame)
  {
    this();
  }
  
  public abstract Bitmap transform(io.intercom.a.a.a.c.b.a.e parame, Bitmap paramBitmap, int paramInt1, int paramInt2);
  
  public final u<Bitmap> transform(Context paramContext, u<Bitmap> paramu, int paramInt1, int paramInt2)
  {
    if (!i.aR(paramInt1, paramInt2)) {
      throw new IllegalArgumentException("Cannot apply transformation on width: " + paramInt1 + " or height: " + paramInt2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }
    paramContext = c.bY(paramContext).cFr;
    Bitmap localBitmap1 = (Bitmap)paramu.get();
    int i = paramInt1;
    if (paramInt1 == Integer.MIN_VALUE) {
      i = localBitmap1.getWidth();
    }
    paramInt1 = paramInt2;
    if (paramInt2 == Integer.MIN_VALUE) {
      paramInt1 = localBitmap1.getHeight();
    }
    Bitmap localBitmap2 = transform(paramContext, localBitmap1, i, paramInt1);
    if (localBitmap1.equals(localBitmap2)) {
      return paramu;
    }
    return d.a(localBitmap2, paramContext);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */