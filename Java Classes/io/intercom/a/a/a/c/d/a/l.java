package io.intercom.a.a.a.c.d.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.b.a.f;
import io.intercom.a.a.a.c.b.u;
import java.util.concurrent.locks.Lock;

final class l
{
  private static final e cNY = new f()
  {
    public final void g(Bitmap paramAnonymousBitmap) {}
  };
  
  static u<Bitmap> a(e parame, Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    Drawable localDrawable = paramDrawable.getCurrent();
    paramDrawable = null;
    if ((localDrawable instanceof BitmapDrawable))
    {
      paramDrawable = ((BitmapDrawable)localDrawable).getBitmap();
      paramInt1 = 0;
    }
    for (;;)
    {
      if (paramInt1 != 0) {}
      for (;;)
      {
        return d.a(paramDrawable, parame);
        if ((localDrawable instanceof Animatable)) {
          break label66;
        }
        paramDrawable = b(parame, localDrawable, paramInt1, paramInt2);
        paramInt1 = 1;
        break;
        parame = cNY;
      }
      label66:
      paramInt1 = 0;
    }
  }
  
  private static Bitmap b(e parame, Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == Integer.MIN_VALUE) && (paramDrawable.getIntrinsicWidth() <= 0)) {
      if (Log.isLoggable("DrawableToBitmap", 5)) {
        Log.w("DrawableToBitmap", "Unable to draw " + paramDrawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
      }
    }
    do
    {
      return null;
      if ((paramInt2 != Integer.MIN_VALUE) || (paramDrawable.getIntrinsicHeight() > 0)) {
        break;
      }
    } while (!Log.isLoggable("DrawableToBitmap", 5));
    Log.w("DrawableToBitmap", "Unable to draw " + paramDrawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
    return null;
    if (paramDrawable.getIntrinsicWidth() > 0) {
      paramInt1 = paramDrawable.getIntrinsicWidth();
    }
    if (paramDrawable.getIntrinsicHeight() > 0) {
      paramInt2 = paramDrawable.getIntrinsicHeight();
    }
    Lock localLock = t.Jh();
    localLock.lock();
    parame = parame.get(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    try
    {
      Canvas localCanvas = new Canvas(parame);
      paramDrawable.setBounds(0, 0, paramInt1, paramInt2);
      paramDrawable.draw(localCanvas);
      localCanvas.setBitmap(null);
      return parame;
    }
    finally
    {
      localLock.unlock();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */