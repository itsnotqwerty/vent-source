package com.layer.atlas.util.b.b;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.c.a.ae;

public final class a
  implements ae
{
  private final PorterDuffXfermode bpy;
  private final PorterDuffXfermode bpz;
  private final Paint jT;
  private float no = 0.0F;
  
  public a(float paramFloat)
  {
    this.no = paramFloat;
    this.jT = new Paint(1);
    this.bpy = null;
    this.bpz = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
  }
  
  public final Bitmap c(Bitmap paramBitmap)
  {
    if (this.no == 0.0F) {}
    while (paramBitmap == null) {
      return paramBitmap;
    }
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Object localObject2 = paramBitmap.getConfig();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = Bitmap.Config.ARGB_8888;
    }
    localObject1 = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject1);
    localObject2 = new Canvas((Bitmap)localObject1);
    RectF localRectF = new RectF(0.0F, 0.0F, i, j);
    this.jT.setXfermode(this.bpy);
    ((Canvas)localObject2).drawRoundRect(localRectF, this.no, this.no, this.jT);
    this.jT.setXfermode(this.bpz);
    ((Canvas)localObject2).drawBitmap(paramBitmap, 0.0F, 0.0F, this.jT);
    paramBitmap.recycle();
    return (Bitmap)localObject1;
  }
  
  public final String key()
  {
    return a.class.getSimpleName() + "." + this.no;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/b/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */