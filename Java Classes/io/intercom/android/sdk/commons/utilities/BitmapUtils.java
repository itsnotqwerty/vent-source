package io.intercom.android.sdk.commons.utilities;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;

public class BitmapUtils
{
  public static Bitmap transformRound(Bitmap paramBitmap, BitmapCache paramBitmapCache)
  {
    int i = Math.min(paramBitmap.getWidth(), paramBitmap.getHeight());
    int j = (paramBitmap.getWidth() - i) / 2;
    int k = (paramBitmap.getHeight() - i) / 2;
    Object localObject = paramBitmapCache.get(i, i, Bitmap.Config.ARGB_8888);
    paramBitmapCache = (BitmapCache)localObject;
    if (localObject == null) {
      paramBitmapCache = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
    }
    localObject = new Canvas(paramBitmapCache);
    Paint localPaint = new Paint();
    paramBitmap = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    if ((j != 0) || (k != 0))
    {
      Matrix localMatrix = new Matrix();
      localMatrix.setTranslate(-j, -k);
      paramBitmap.setLocalMatrix(localMatrix);
    }
    localPaint.setShader(paramBitmap);
    localPaint.setAntiAlias(true);
    float f = i / 2.0F;
    ((Canvas)localObject).drawCircle(f, f, f, localPaint);
    return paramBitmapCache;
  }
  
  public static Bitmap transformRound(Bitmap paramBitmap, BitmapCache paramBitmapCache, int paramInt1, int paramInt2)
  {
    int i = Math.min(paramBitmap.getWidth(), paramBitmap.getHeight());
    float f1 = i / 2.0F;
    Object localObject = paramBitmapCache.get(i, i, Bitmap.Config.ARGB_8888);
    paramBitmapCache = (BitmapCache)localObject;
    if (localObject == null) {
      paramBitmapCache = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
    }
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader(new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
    localObject = new Canvas(paramBitmapCache);
    float f2 = (paramBitmap.getWidth() - paramInt2) / 2 + paramInt2 / 2;
    float f3 = (paramBitmap.getHeight() - paramInt2) / 2 + paramInt2 / 2;
    ((Canvas)localObject).drawCircle(f2, f3, f1 - paramInt2, localPaint);
    paramBitmap = new Paint();
    paramBitmap.setColor(paramInt1);
    paramBitmap.setStyle(Paint.Style.STROKE);
    paramBitmap.setAntiAlias(true);
    paramBitmap.setStrokeWidth(2.0F);
    ((Canvas)localObject).drawCircle(f2, f3, f1 - paramInt2, paramBitmap);
    return paramBitmapCache;
  }
  
  public static Bitmap transformRoundCorners(Bitmap paramBitmap, BitmapCache paramBitmapCache, int paramInt)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Object localObject = paramBitmapCache.get(i, j, Bitmap.Config.ARGB_8888);
    paramBitmapCache = (BitmapCache)localObject;
    if (localObject == null) {
      paramBitmapCache = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    }
    localObject = new Canvas(paramBitmapCache);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader(new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
    ((Canvas)localObject).drawRoundRect(new RectF(0.0F, 0.0F, i, j), paramInt, paramInt, localPaint);
    return paramBitmapCache;
  }
  
  public static Bitmap transformRoundCorners(Bitmap paramBitmap, BitmapCache paramBitmapCache, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    Object localObject = paramBitmapCache.get(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    paramBitmapCache = (BitmapCache)localObject;
    if (localObject == null) {
      paramBitmapCache = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    }
    localObject = new Canvas(paramBitmapCache);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader(new BitmapShader(Bitmap.createScaledBitmap(paramBitmap, paramInt1, paramInt2, false), Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
    paramBitmap = new RectF(paramInt5, paramInt5, paramInt1 - paramInt5, paramInt2 - paramInt5);
    ((Canvas)localObject).drawRoundRect(paramBitmap, paramInt3, paramInt3, localPaint);
    localPaint = new Paint();
    localPaint.setColor(paramInt4);
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setAntiAlias(true);
    localPaint.setStrokeWidth(paramInt5);
    ((Canvas)localObject).drawRoundRect(paramBitmap, paramInt3, paramInt3, localPaint);
    return paramBitmapCache;
  }
  
  public static abstract interface BitmapCache
  {
    public abstract Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/commons/utilities/BitmapUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */