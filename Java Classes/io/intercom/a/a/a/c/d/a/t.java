package io.intercom.a.a.a.c.d.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import io.intercom.a.a.a.c.b.a.e;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class t
{
  private static final Paint cOi = new Paint(6);
  private static final Paint cOj = new Paint(7);
  private static final Paint cOk;
  private static final List<String> cOl;
  private static final Lock cOm;
  
  static
  {
    Object localObject = Arrays.asList(new String[] { "XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098" });
    cOl = (List)localObject;
    if ((((List)localObject).contains(Build.MODEL)) && (Build.VERSION.SDK_INT == 22)) {}
    for (localObject = new ReentrantLock();; localObject = new a())
    {
      cOm = (Lock)localObject;
      localObject = new Paint(7);
      cOk = (Paint)localObject;
      ((Paint)localObject).setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      return;
    }
  }
  
  public static Lock Jh()
  {
    return cOm;
  }
  
  public static Bitmap a(e parame, Bitmap paramBitmap, int paramInt)
  {
    if (!fn(paramInt)) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    switch (paramInt)
    {
    }
    for (;;)
    {
      RectF localRectF = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
      localMatrix.mapRect(localRectF);
      parame = parame.get(Math.round(localRectF.width()), Math.round(localRectF.height()), k(paramBitmap));
      localMatrix.postTranslate(-localRectF.left, -localRectF.top);
      a(paramBitmap, parame, localMatrix);
      return parame;
      localMatrix.setScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(180.0F);
      continue;
      localMatrix.setRotate(180.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(90.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(90.0F);
      continue;
      localMatrix.setRotate(-90.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      continue;
      localMatrix.setRotate(-90.0F);
    }
  }
  
  public static Bitmap a(e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2)) {
      return paramBitmap;
    }
    Matrix localMatrix = new Matrix();
    float f1;
    float f3;
    float f2;
    if (paramBitmap.getWidth() * paramInt2 > paramBitmap.getHeight() * paramInt1)
    {
      f1 = paramInt2 / paramBitmap.getHeight();
      f3 = (paramInt1 - paramBitmap.getWidth() * f1) * 0.5F;
      f2 = 0.0F;
    }
    for (;;)
    {
      localMatrix.setScale(f1, f1);
      localMatrix.postTranslate((int)(f3 + 0.5F), (int)(f2 + 0.5F));
      parame = parame.get(paramInt1, paramInt2, k(paramBitmap));
      a(paramBitmap, parame);
      a(paramBitmap, parame, localMatrix);
      return parame;
      f1 = paramInt1 / paramBitmap.getWidth();
      f2 = (paramInt2 - paramBitmap.getHeight() * f1) * 0.5F;
      f3 = 0.0F;
    }
  }
  
  private static void a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    paramBitmap2.setHasAlpha(paramBitmap1.hasAlpha());
  }
  
  private static void a(Bitmap paramBitmap1, Bitmap paramBitmap2, Matrix paramMatrix)
  {
    cOm.lock();
    try
    {
      paramBitmap2 = new Canvas(paramBitmap2);
      paramBitmap2.drawBitmap(paramBitmap1, paramMatrix, cOi);
      paramBitmap2.setBitmap(null);
      return;
    }
    finally
    {
      cOm.unlock();
    }
  }
  
  public static Bitmap b(e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2)) {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "requested target size matches input, returning input");
      }
    }
    float f;
    do
    {
      return paramBitmap;
      f = Math.min(paramInt1 / paramBitmap.getWidth(), paramInt2 / paramBitmap.getHeight());
      int i = Math.round(paramBitmap.getWidth() * f);
      int j = Math.round(paramBitmap.getHeight() * f);
      if ((paramBitmap.getWidth() != i) || (paramBitmap.getHeight() != j)) {
        break;
      }
    } while (!Log.isLoggable("TransformationUtils", 2));
    Log.v("TransformationUtils", "adjusted target size matches input, returning input");
    return paramBitmap;
    parame = parame.get((int)(paramBitmap.getWidth() * f), (int)(paramBitmap.getHeight() * f), k(paramBitmap));
    a(paramBitmap, parame);
    if (Log.isLoggable("TransformationUtils", 2))
    {
      Log.v("TransformationUtils", "request: " + paramInt1 + "x" + paramInt2);
      Log.v("TransformationUtils", "toFit:   " + paramBitmap.getWidth() + "x" + paramBitmap.getHeight());
      Log.v("TransformationUtils", "toReuse: " + parame.getWidth() + "x" + parame.getHeight());
      Log.v("TransformationUtils", "minPct:   " + f);
    }
    Matrix localMatrix = new Matrix();
    localMatrix.setScale(f, f);
    a(paramBitmap, parame, localMatrix);
    return parame;
  }
  
  public static Bitmap c(e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() <= paramInt1) && (paramBitmap.getHeight() <= paramInt2))
    {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
      }
      return paramBitmap;
    }
    if (Log.isLoggable("TransformationUtils", 2)) {
      Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
    }
    return b(parame, paramBitmap, paramInt1, paramInt2);
  }
  
  public static int fm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 5: 
    case 6: 
      return 90;
    case 3: 
    case 4: 
      return 180;
    }
    return 270;
  }
  
  public static boolean fn(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  private static Bitmap.Config k(Bitmap paramBitmap)
  {
    if (paramBitmap.getConfig() != null) {
      return paramBitmap.getConfig();
    }
    return Bitmap.Config.ARGB_8888;
  }
  
  private static final class a
    implements Lock
  {
    public final void lock() {}
    
    public final void lockInterruptibly()
      throws InterruptedException
    {}
    
    public final Condition newCondition()
    {
      throw new UnsupportedOperationException("Should not be called");
    }
    
    public final boolean tryLock()
    {
      return true;
    }
    
    public final boolean tryLock(long paramLong, TimeUnit paramTimeUnit)
      throws InterruptedException
    {
      return true;
    }
    
    public final void unlock() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */