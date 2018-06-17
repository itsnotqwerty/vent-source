package com.theartofdev.edmodo.cropper;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.support.d.a;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;

final class c
{
  static final Rect bPI = new Rect();
  static final RectF bPJ = new RectF();
  static final RectF bPK = new RectF();
  static final float[] bPL = new float[6];
  static final float[] bPM = new float[6];
  private static int bPN;
  static Pair<String, WeakReference<Bitmap>> bPO;
  
  private static int AF()
  {
    for (;;)
    {
      int i;
      int k;
      try
      {
        EGL10 localEGL10 = (EGL10)EGLContext.getEGL();
        EGLDisplay localEGLDisplay = localEGL10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        localEGL10.eglInitialize(localEGLDisplay, new int[2]);
        int[] arrayOfInt1 = new int[1];
        localEGL10.eglGetConfigs(localEGLDisplay, null, 0, arrayOfInt1);
        EGLConfig[] arrayOfEGLConfig = new EGLConfig[arrayOfInt1[0]];
        localEGL10.eglGetConfigs(localEGLDisplay, arrayOfEGLConfig, arrayOfInt1[0], arrayOfInt1);
        int[] arrayOfInt2 = new int[1];
        i = 0;
        j = 0;
        if (i < arrayOfInt1[0])
        {
          localEGL10.eglGetConfigAttrib(localEGLDisplay, arrayOfEGLConfig[i], 12332, arrayOfInt2);
          k = j;
          if (j < arrayOfInt2[0]) {
            k = arrayOfInt2[0];
          }
        }
        else
        {
          localEGL10.eglTerminate(localEGLDisplay);
          i = Math.max(j, 2048);
          return i;
        }
      }
      catch (Exception localException)
      {
        return 2048;
      }
      i += 1;
      int j = k;
    }
  }
  
  private static Bitmap a(ContentResolver paramContentResolver, Uri paramUri, BitmapFactory.Options paramOptions)
    throws FileNotFoundException
  {
    for (;;)
    {
      Object localObject2 = null;
      Object localObject1 = null;
      try
      {
        InputStream localInputStream = paramContentResolver.openInputStream(paramUri);
        localObject1 = localInputStream;
        localObject2 = localInputStream;
        Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream, bPI, paramOptions);
        b(localInputStream);
        return localBitmap;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        localObject3 = localObject1;
        paramOptions.inSampleSize *= 2;
        b((Closeable)localObject1);
        if (paramOptions.inSampleSize <= 512) {
          continue;
        }
        throw new RuntimeException("Failed to decode image: " + paramUri);
      }
      finally
      {
        Object localObject3;
        b((Closeable)localObject3);
      }
    }
  }
  
  static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = paramBitmap;
    if (paramInt1 > 0)
    {
      localObject = paramBitmap;
      if (paramInt2 > 0) {
        try
        {
          if ((paramInt3 != CropImageView.i.bRX) && (paramInt3 != CropImageView.i.bRW))
          {
            localObject = paramBitmap;
            if (paramInt3 != CropImageView.i.bRY) {}
          }
          else
          {
            Bitmap localBitmap = null;
            if (paramInt3 == CropImageView.i.bRY) {}
            int i;
            int j;
            float f;
            for (localBitmap = Bitmap.createScaledBitmap(paramBitmap, paramInt1, paramInt2, false);; localBitmap = Bitmap.createScaledBitmap(paramBitmap, (int)(i / f), (int)(j / f), false)) {
              do
              {
                localObject = paramBitmap;
                if (localBitmap == null) {
                  break label163;
                }
                if (localBitmap == paramBitmap) {
                  break;
                }
                paramBitmap.recycle();
                break;
                i = paramBitmap.getWidth();
                j = paramBitmap.getHeight();
                f = Math.max(i / paramInt1, j / paramInt2);
              } while ((f <= 1.0F) && (paramInt3 != CropImageView.i.bRX));
            }
            localObject = localException;
          }
        }
        catch (Exception localException)
        {
          Log.w("AIC", "Failed to resize cropped image, return bitmap before resize", localException);
          return paramBitmap;
        }
      }
    }
    label163:
    return (Bitmap)localObject;
  }
  
  private static Bitmap a(Bitmap paramBitmap, float[] paramArrayOfFloat, int paramInt1, boolean paramBoolean1, int paramInt2, int paramInt3, float paramFloat, boolean paramBoolean2, boolean paramBoolean3)
  {
    Rect localRect = a(paramArrayOfFloat, paramBitmap.getWidth(), paramBitmap.getHeight(), paramBoolean1, paramInt2, paramInt3);
    Object localObject = new Matrix();
    ((Matrix)localObject).setRotate(paramInt1, paramBitmap.getWidth() / 2, paramBitmap.getHeight() / 2);
    if (paramBoolean2) {}
    for (float f1 = -paramFloat;; f1 = paramFloat)
    {
      float f2 = paramFloat;
      if (paramBoolean3) {
        f2 = -paramFloat;
      }
      ((Matrix)localObject).postScale(f1, f2);
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, localRect.left, localRect.top, localRect.width(), localRect.height(), (Matrix)localObject, true);
      localObject = localBitmap;
      if (localBitmap == paramBitmap) {
        localObject = paramBitmap.copy(paramBitmap.getConfig(), false);
      }
      paramBitmap = (Bitmap)localObject;
      if (paramInt1 % 90 != 0) {
        paramBitmap = a((Bitmap)localObject, paramArrayOfFloat, localRect, paramInt1, paramBoolean1, paramInt2, paramInt3);
      }
      return paramBitmap;
    }
  }
  
  private static Bitmap a(Bitmap paramBitmap, float[] paramArrayOfFloat, Rect paramRect, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3)
  {
    Bitmap localBitmap = paramBitmap;
    int k;
    int j;
    int i;
    if (paramInt1 % 90 != 0)
    {
      k = 0;
      j = 0;
      double d = Math.toRadians(paramInt1);
      if ((paramInt1 >= 90) && ((paramInt1 <= 180) || (paramInt1 >= 270))) {
        break label251;
      }
      i = paramRect.left;
      paramInt1 = 0;
      label51:
      if (paramInt1 >= paramArrayOfFloat.length) {
        break label267;
      }
      if ((paramArrayOfFloat[paramInt1] < i - 1) || (paramArrayOfFloat[paramInt1] > i + 1)) {
        break label260;
      }
      k = (int)Math.abs(Math.sin(d) * (paramRect.bottom - paramArrayOfFloat[(paramInt1 + 1)]));
      j = (int)Math.abs(Math.cos(d) * (paramArrayOfFloat[(paramInt1 + 1)] - paramRect.top));
      i = (int)Math.abs((paramArrayOfFloat[(paramInt1 + 1)] - paramRect.top) / Math.sin(d));
      int m = (int)Math.abs((paramRect.bottom - paramArrayOfFloat[(paramInt1 + 1)]) / Math.cos(d));
      paramInt1 = i;
      i = paramInt1;
      paramInt1 = m;
    }
    for (;;)
    {
      paramRect.set(k, j, i + k, paramInt1 + j);
      if (paramBoolean) {
        b(paramRect, paramInt2, paramInt3);
      }
      localBitmap = Bitmap.createBitmap(paramBitmap, paramRect.left, paramRect.top, paramRect.width(), paramRect.height());
      if (paramBitmap != localBitmap) {
        paramBitmap.recycle();
      }
      return localBitmap;
      label251:
      i = paramRect.right;
      break;
      label260:
      paramInt1 += 2;
      break label51;
      label267:
      paramInt1 = 0;
      i = 0;
    }
  }
  
  static Rect a(float[] paramArrayOfFloat, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    paramArrayOfFloat = new Rect(Math.round(Math.max(0.0F, c(paramArrayOfFloat))), Math.round(Math.max(0.0F, d(paramArrayOfFloat))), Math.round(Math.min(paramInt1, e(paramArrayOfFloat))), Math.round(Math.min(paramInt2, f(paramArrayOfFloat))));
    if (paramBoolean) {
      b(paramArrayOfFloat, paramInt3, paramInt4);
    }
    return paramArrayOfFloat;
  }
  
  static Uri a(Context paramContext, Bitmap paramBitmap, Uri paramUri)
  {
    int i = 1;
    if (paramUri == null) {}
    for (;;)
    {
      try
      {
        paramUri = Uri.fromFile(File.createTempFile("aic_state_store_temp", ".jpg", paramContext.getCacheDir()));
        if (i == 0) {
          break;
        }
        a(paramContext, paramBitmap, paramUri, Bitmap.CompressFormat.JPEG, 95);
        return paramUri;
      }
      catch (Exception paramContext)
      {
        boolean bool;
        Log.w("AIC", "Failed to write bitmap to temp file for image-cropper save instance state", paramContext);
        return null;
      }
      bool = new File(paramUri.getPath()).exists();
      if (bool) {
        i = 0;
      }
    }
    return paramUri;
  }
  
  static a a(Context paramContext, Uri paramUri, int paramInt1, int paramInt2)
  {
    for (;;)
    {
      try
      {
        paramContext = paramContext.getContentResolver();
        BitmapFactory.Options localOptions = b(paramContext, paramUri);
        int i = j(localOptions.outWidth, localOptions.outHeight, paramInt1, paramInt2);
        int j = localOptions.outWidth;
        int k = localOptions.outHeight;
        paramInt2 = 1;
        paramInt1 = 1;
        if (bPN == 0) {
          bPN = AF();
        }
        if (bPN > 0)
        {
          if (k / paramInt1 <= bPN)
          {
            paramInt2 = paramInt1;
            if (j / paramInt1 > bPN) {}
          }
        }
        else
        {
          localOptions.inSampleSize = Math.max(i, paramInt2);
          paramContext = new a(a(paramContext, paramUri, localOptions), localOptions.inSampleSize);
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        throw new RuntimeException("Failed to load sampled bitmap: " + paramUri + "\r\n" + paramContext.getMessage(), paramContext);
      }
      paramInt1 *= 2;
    }
  }
  
  /* Error */
  private static a a(Context paramContext, Uri paramUri, Rect paramRect, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: new 110	android/graphics/BitmapFactory$Options
    //   3: dup
    //   4: invokespecial 349	android/graphics/BitmapFactory$Options:<init>	()V
    //   7: astore 9
    //   9: aload 9
    //   11: aload_2
    //   12: invokevirtual 196	android/graphics/Rect:width	()I
    //   15: aload_2
    //   16: invokevirtual 199	android/graphics/Rect:height	()I
    //   19: iload_3
    //   20: iload 4
    //   22: invokestatic 325	com/theartofdev/edmodo/cropper/c:j	(IIII)I
    //   25: iload 5
    //   27: imul
    //   28: putfield 113	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   31: aload_0
    //   32: invokevirtual 312	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   35: aload_1
    //   36: invokevirtual 99	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   39: astore_0
    //   40: aload_0
    //   41: iconst_0
    //   42: invokestatic 355	android/graphics/BitmapRegionDecoder:newInstance	(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    //   45: astore 7
    //   47: aload 7
    //   49: astore 6
    //   51: aload_0
    //   52: astore 8
    //   54: new 6	com/theartofdev/edmodo/cropper/c$a
    //   57: dup
    //   58: aload 7
    //   60: aload_2
    //   61: aload 9
    //   63: invokevirtual 359	android/graphics/BitmapRegionDecoder:decodeRegion	(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   66: aload 9
    //   68: getfield 113	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   71: invokespecial 334	com/theartofdev/edmodo/cropper/c$a:<init>	(Landroid/graphics/Bitmap;I)V
    //   74: astore 10
    //   76: aload_0
    //   77: invokestatic 108	com/theartofdev/edmodo/cropper/c:b	(Ljava/io/Closeable;)V
    //   80: aload 7
    //   82: ifnull +8 -> 90
    //   85: aload 7
    //   87: invokevirtual 360	android/graphics/BitmapRegionDecoder:recycle	()V
    //   90: aload 10
    //   92: areturn
    //   93: astore 6
    //   95: aload 7
    //   97: astore 6
    //   99: aload_0
    //   100: astore 8
    //   102: aload 9
    //   104: aload 9
    //   106: getfield 113	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   109: iconst_2
    //   110: imul
    //   111: putfield 113	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   114: aload 7
    //   116: astore 6
    //   118: aload_0
    //   119: astore 8
    //   121: aload 9
    //   123: getfield 113	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   126: istore_3
    //   127: iload_3
    //   128: sipush 512
    //   131: if_icmple -84 -> 47
    //   134: aload_0
    //   135: invokestatic 108	com/theartofdev/edmodo/cropper/c:b	(Ljava/io/Closeable;)V
    //   138: aload 7
    //   140: ifnull +8 -> 148
    //   143: aload 7
    //   145: invokevirtual 360	android/graphics/BitmapRegionDecoder:recycle	()V
    //   148: new 6	com/theartofdev/edmodo/cropper/c$a
    //   151: dup
    //   152: aconst_null
    //   153: iconst_1
    //   154: invokespecial 334	com/theartofdev/edmodo/cropper/c$a:<init>	(Landroid/graphics/Bitmap;I)V
    //   157: areturn
    //   158: astore 9
    //   160: aconst_null
    //   161: astore_2
    //   162: aconst_null
    //   163: astore_0
    //   164: aload_2
    //   165: astore 6
    //   167: aload_0
    //   168: astore 8
    //   170: new 115	java/lang/RuntimeException
    //   173: dup
    //   174: new 117	java/lang/StringBuilder
    //   177: dup
    //   178: ldc_w 336
    //   181: invokespecial 122	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   184: aload_1
    //   185: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   188: ldc_w 338
    //   191: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: aload 9
    //   196: invokevirtual 344	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   199: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: aload 9
    //   207: invokespecial 347	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   210: athrow
    //   211: astore_1
    //   212: aload 8
    //   214: astore_0
    //   215: aload_0
    //   216: invokestatic 108	com/theartofdev/edmodo/cropper/c:b	(Ljava/io/Closeable;)V
    //   219: aload 6
    //   221: ifnull +8 -> 229
    //   224: aload 6
    //   226: invokevirtual 360	android/graphics/BitmapRegionDecoder:recycle	()V
    //   229: aload_1
    //   230: athrow
    //   231: astore_1
    //   232: aconst_null
    //   233: astore 6
    //   235: aconst_null
    //   236: astore_0
    //   237: goto -22 -> 215
    //   240: astore_1
    //   241: aconst_null
    //   242: astore 6
    //   244: goto -29 -> 215
    //   247: astore 9
    //   249: aconst_null
    //   250: astore_2
    //   251: goto -87 -> 164
    //   254: astore 9
    //   256: aload 7
    //   258: astore_2
    //   259: goto -95 -> 164
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	262	0	paramContext	Context
    //   0	262	1	paramUri	Uri
    //   0	262	2	paramRect	Rect
    //   0	262	3	paramInt1	int
    //   0	262	4	paramInt2	int
    //   0	262	5	paramInt3	int
    //   49	1	6	localBitmapRegionDecoder1	android.graphics.BitmapRegionDecoder
    //   93	1	6	localOutOfMemoryError	OutOfMemoryError
    //   97	146	6	localObject	Object
    //   45	212	7	localBitmapRegionDecoder2	android.graphics.BitmapRegionDecoder
    //   52	161	8	localContext	Context
    //   7	115	9	localOptions	BitmapFactory.Options
    //   158	48	9	localException1	Exception
    //   247	1	9	localException2	Exception
    //   254	1	9	localException3	Exception
    //   74	17	10	locala	a
    // Exception table:
    //   from	to	target	type
    //   54	76	93	java/lang/OutOfMemoryError
    //   0	40	158	java/lang/Exception
    //   54	76	211	finally
    //   102	114	211	finally
    //   121	127	211	finally
    //   170	211	211	finally
    //   0	40	231	finally
    //   40	47	240	finally
    //   40	47	247	java/lang/Exception
    //   54	76	254	java/lang/Exception
    //   102	114	254	java/lang/Exception
    //   121	127	254	java/lang/Exception
  }
  
  static a a(Context paramContext, Uri paramUri, float[] paramArrayOfFloat, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, int paramInt4, int paramInt5, int paramInt6, int paramInt7, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i = 1;
    int j;
    do
    {
      try
      {
        a locala = a(paramContext, paramUri, paramArrayOfFloat, paramInt1, paramInt2, paramInt3, paramBoolean1, paramInt4, paramInt5, paramInt6, paramInt7, paramBoolean2, paramBoolean3, i);
        return locala;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        j = i * 2;
        i = j;
      }
    } while (j <= 16);
    throw new RuntimeException("Failed to handle OOM by sampling (" + j + "): " + paramUri + "\r\n" + localOutOfMemoryError.getMessage(), localOutOfMemoryError);
  }
  
  /* Error */
  private static a a(Context paramContext, Uri paramUri, float[] paramArrayOfFloat, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, int paramInt4, int paramInt5, int paramInt6, int paramInt7, boolean paramBoolean2, boolean paramBoolean3, int paramInt8)
  {
    // Byte code:
    //   0: aload_2
    //   1: iload 4
    //   3: iload 5
    //   5: iload 6
    //   7: iload 7
    //   9: iload 8
    //   11: invokestatic 176	com/theartofdev/edmodo/cropper/c:a	([FIIZII)Landroid/graphics/Rect;
    //   14: astore 17
    //   16: iload 9
    //   18: ifle +170 -> 188
    //   21: iload 9
    //   23: istore 4
    //   25: iload 10
    //   27: ifle +171 -> 198
    //   30: iload 10
    //   32: istore 5
    //   34: aload_0
    //   35: aload_1
    //   36: aload 17
    //   38: iload 4
    //   40: iload 5
    //   42: iload 13
    //   44: invokestatic 374	com/theartofdev/edmodo/cropper/c:a	(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/theartofdev/edmodo/cropper/c$a;
    //   47: astore 18
    //   49: aload 18
    //   51: getfield 378	com/theartofdev/edmodo/cropper/c$a:avo	Landroid/graphics/Bitmap;
    //   54: astore 16
    //   56: aload 18
    //   58: getfield 381	com/theartofdev/edmodo/cropper/c$a:awZ	I
    //   61: istore 9
    //   63: aload 16
    //   65: ifnull +186 -> 251
    //   68: iload_3
    //   69: ifgt +13 -> 82
    //   72: iload 11
    //   74: ifne +8 -> 82
    //   77: iload 12
    //   79: ifeq +152 -> 231
    //   82: new 178	android/graphics/Matrix
    //   85: dup
    //   86: invokespecial 179	android/graphics/Matrix:<init>	()V
    //   89: astore_0
    //   90: aload_0
    //   91: iload_3
    //   92: i2f
    //   93: invokevirtual 384	android/graphics/Matrix:setRotate	(F)V
    //   96: iload 11
    //   98: ifeq +121 -> 219
    //   101: ldc_w 385
    //   104: fstore 14
    //   106: goto +184 -> 290
    //   109: aload_0
    //   110: fload 14
    //   112: fload 15
    //   114: invokevirtual 187	android/graphics/Matrix:postScale	(FF)Z
    //   117: pop
    //   118: aload 16
    //   120: iconst_0
    //   121: iconst_0
    //   122: aload 16
    //   124: invokevirtual 156	android/graphics/Bitmap:getWidth	()I
    //   127: aload 16
    //   129: invokevirtual 159	android/graphics/Bitmap:getHeight	()I
    //   132: aload_0
    //   133: iconst_0
    //   134: invokestatic 203	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   137: astore_1
    //   138: aload_1
    //   139: astore_0
    //   140: aload_1
    //   141: aload 16
    //   143: if_acmpeq +10 -> 153
    //   146: aload 16
    //   148: invokevirtual 153	android/graphics/Bitmap:recycle	()V
    //   151: aload_1
    //   152: astore_0
    //   153: aload_0
    //   154: astore_1
    //   155: iload_3
    //   156: bipush 90
    //   158: irem
    //   159: ifeq +18 -> 177
    //   162: aload_0
    //   163: aload_2
    //   164: aload 17
    //   166: iload_3
    //   167: iload 6
    //   169: iload 7
    //   171: iload 8
    //   173: invokestatic 214	com/theartofdev/edmodo/cropper/c:a	(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    //   176: astore_1
    //   177: new 6	com/theartofdev/edmodo/cropper/c$a
    //   180: dup
    //   181: aload_1
    //   182: iload 9
    //   184: invokespecial 334	com/theartofdev/edmodo/cropper/c$a:<init>	(Landroid/graphics/Bitmap;I)V
    //   187: areturn
    //   188: aload 17
    //   190: invokevirtual 196	android/graphics/Rect:width	()I
    //   193: istore 4
    //   195: goto -170 -> 25
    //   198: aload 17
    //   200: invokevirtual 199	android/graphics/Rect:height	()I
    //   203: istore 5
    //   205: goto -171 -> 34
    //   208: astore 16
    //   210: aconst_null
    //   211: astore 16
    //   213: iconst_1
    //   214: istore 9
    //   216: goto -153 -> 63
    //   219: fconst_1
    //   220: fstore 14
    //   222: goto +68 -> 290
    //   225: fconst_1
    //   226: fstore 15
    //   228: goto -119 -> 109
    //   231: aload 16
    //   233: astore_0
    //   234: goto -81 -> 153
    //   237: astore_0
    //   238: aload 16
    //   240: astore_1
    //   241: aload_1
    //   242: ifnull +7 -> 249
    //   245: aload_1
    //   246: invokevirtual 153	android/graphics/Bitmap:recycle	()V
    //   249: aload_0
    //   250: athrow
    //   251: aload_0
    //   252: aload_1
    //   253: aload_2
    //   254: iload_3
    //   255: iload 6
    //   257: iload 7
    //   259: iload 8
    //   261: iload 13
    //   263: aload 17
    //   265: iload 4
    //   267: iload 5
    //   269: iload 11
    //   271: iload 12
    //   273: invokestatic 388	com/theartofdev/edmodo/cropper/c:a	(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/theartofdev/edmodo/cropper/c$a;
    //   276: areturn
    //   277: astore_2
    //   278: aload_0
    //   279: astore_1
    //   280: aload_2
    //   281: astore_0
    //   282: goto -41 -> 241
    //   285: astore 18
    //   287: goto -74 -> 213
    //   290: iload 12
    //   292: ifeq -67 -> 225
    //   295: ldc_w 385
    //   298: fstore 15
    //   300: goto -191 -> 109
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	303	0	paramContext	Context
    //   0	303	1	paramUri	Uri
    //   0	303	2	paramArrayOfFloat	float[]
    //   0	303	3	paramInt1	int
    //   0	303	4	paramInt2	int
    //   0	303	5	paramInt3	int
    //   0	303	6	paramBoolean1	boolean
    //   0	303	7	paramInt4	int
    //   0	303	8	paramInt5	int
    //   0	303	9	paramInt6	int
    //   0	303	10	paramInt7	int
    //   0	303	11	paramBoolean2	boolean
    //   0	303	12	paramBoolean3	boolean
    //   0	303	13	paramInt8	int
    //   104	117	14	f1	float
    //   112	1	15	localObject1	Object
    //   226	73	15	f2	float
    //   54	93	16	localBitmap	Bitmap
    //   208	1	16	localException1	Exception
    //   211	28	16	localObject2	Object
    //   14	250	17	localRect	Rect
    //   47	10	18	locala	a
    //   285	1	18	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   34	56	208	java/lang/Exception
    //   82	96	237	java/lang/OutOfMemoryError
    //   109	138	237	java/lang/OutOfMemoryError
    //   146	151	237	java/lang/OutOfMemoryError
    //   162	177	277	java/lang/OutOfMemoryError
    //   56	63	285	java/lang/Exception
  }
  
  /* Error */
  private static a a(Context paramContext, Uri paramUri, float[] paramArrayOfFloat, int paramInt1, boolean paramBoolean1, int paramInt2, int paramInt3, int paramInt4, Rect paramRect, int paramInt5, int paramInt6, boolean paramBoolean2, boolean paramBoolean3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 13
    //   3: new 110	android/graphics/BitmapFactory$Options
    //   6: dup
    //   7: invokespecial 349	android/graphics/BitmapFactory$Options:<init>	()V
    //   10: astore 14
    //   12: iload 7
    //   14: aload 8
    //   16: invokevirtual 196	android/graphics/Rect:width	()I
    //   19: aload 8
    //   21: invokevirtual 199	android/graphics/Rect:height	()I
    //   24: iload 9
    //   26: iload 10
    //   28: invokestatic 325	com/theartofdev/edmodo/cropper/c:j	(IIII)I
    //   31: imul
    //   32: istore 9
    //   34: aload 14
    //   36: iload 9
    //   38: putfield 113	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   41: aload_0
    //   42: invokevirtual 312	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   45: aload_1
    //   46: aload 14
    //   48: invokestatic 331	com/theartofdev/edmodo/cropper/c:a	(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   51: astore 8
    //   53: aload 8
    //   55: ifnull +170 -> 225
    //   58: aload_2
    //   59: arraylength
    //   60: newarray <illegal type>
    //   62: astore_0
    //   63: aload_2
    //   64: iconst_0
    //   65: aload_0
    //   66: iconst_0
    //   67: aload_2
    //   68: arraylength
    //   69: invokestatic 394	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   72: iconst_0
    //   73: istore 7
    //   75: iload 7
    //   77: aload_0
    //   78: arraylength
    //   79: if_icmpge +27 -> 106
    //   82: aload_0
    //   83: iload 7
    //   85: aload_0
    //   86: iload 7
    //   88: faload
    //   89: aload 14
    //   91: getfield 113	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   94: i2f
    //   95: fdiv
    //   96: fastore
    //   97: iload 7
    //   99: iconst_1
    //   100: iadd
    //   101: istore 7
    //   103: goto -28 -> 75
    //   106: aload 8
    //   108: aload_0
    //   109: iload_3
    //   110: iload 4
    //   112: iload 5
    //   114: iload 6
    //   116: fconst_1
    //   117: iload 11
    //   119: iload 12
    //   121: invokestatic 396	com/theartofdev/edmodo/cropper/c:a	(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    //   124: astore_0
    //   125: aload_0
    //   126: aload 8
    //   128: if_acmpeq +46 -> 174
    //   131: aload 8
    //   133: invokevirtual 153	android/graphics/Bitmap:recycle	()V
    //   136: new 6	com/theartofdev/edmodo/cropper/c$a
    //   139: dup
    //   140: aload_0
    //   141: iload 9
    //   143: invokespecial 334	com/theartofdev/edmodo/cropper/c$a:<init>	(Landroid/graphics/Bitmap;I)V
    //   146: areturn
    //   147: astore_0
    //   148: aload 8
    //   150: ifnull +8 -> 158
    //   153: aload 8
    //   155: invokevirtual 153	android/graphics/Bitmap:recycle	()V
    //   158: aload_0
    //   159: athrow
    //   160: astore_0
    //   161: aload 13
    //   163: astore_1
    //   164: aload_1
    //   165: ifnull +7 -> 172
    //   168: aload_1
    //   169: invokevirtual 153	android/graphics/Bitmap:recycle	()V
    //   172: aload_0
    //   173: athrow
    //   174: goto -38 -> 136
    //   177: astore_0
    //   178: new 115	java/lang/RuntimeException
    //   181: dup
    //   182: new 117	java/lang/StringBuilder
    //   185: dup
    //   186: ldc_w 336
    //   189: invokespecial 122	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   192: aload_1
    //   193: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   196: ldc_w 338
    //   199: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: aload_0
    //   203: invokevirtual 344	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   206: invokevirtual 341	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: aload_0
    //   213: invokespecial 347	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   216: athrow
    //   217: astore_2
    //   218: aload_0
    //   219: astore_1
    //   220: aload_2
    //   221: astore_0
    //   222: goto -58 -> 164
    //   225: aconst_null
    //   226: astore_0
    //   227: goto -53 -> 174
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	230	0	paramContext	Context
    //   0	230	1	paramUri	Uri
    //   0	230	2	paramArrayOfFloat	float[]
    //   0	230	3	paramInt1	int
    //   0	230	4	paramBoolean1	boolean
    //   0	230	5	paramInt2	int
    //   0	230	6	paramInt3	int
    //   0	230	7	paramInt4	int
    //   0	230	8	paramRect	Rect
    //   0	230	9	paramInt5	int
    //   0	230	10	paramInt6	int
    //   0	230	11	paramBoolean2	boolean
    //   0	230	12	paramBoolean3	boolean
    //   1	161	13	localObject	Object
    //   10	80	14	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   58	72	147	finally
    //   75	97	147	finally
    //   106	125	147	finally
    //   3	53	160	java/lang/OutOfMemoryError
    //   153	158	160	java/lang/OutOfMemoryError
    //   158	160	160	java/lang/OutOfMemoryError
    //   3	53	177	java/lang/Exception
    //   131	136	177	java/lang/Exception
    //   153	158	177	java/lang/Exception
    //   158	160	177	java/lang/Exception
    //   131	136	217	java/lang/OutOfMemoryError
  }
  
  static a a(Bitmap paramBitmap, float[] paramArrayOfFloat, int paramInt1, boolean paramBoolean1, int paramInt2, int paramInt3, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i = 1;
    for (;;)
    {
      float f = 1.0F / i;
      try
      {
        a locala = new a(a(paramBitmap, paramArrayOfFloat, paramInt1, paramBoolean1, paramInt2, paramInt3, f, paramBoolean2, paramBoolean3), i);
        return locala;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        i *= 2;
        if (i > 8) {
          throw localOutOfMemoryError;
        }
      }
    }
  }
  
  static b a(Bitmap paramBitmap, Context paramContext, Uri paramUri)
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        paramUri = paramContext.getContentResolver().openInputStream(paramUri);
        if (paramUri != null)
        {
          paramContext = new a(paramUri);
          int i;
          return new b(paramBitmap, 0);
        }
      }
      catch (Exception paramContext)
      {
        try
        {
          paramUri.close();
          if (paramContext == null) {
            break label119;
          }
          switch (paramContext.s("Orientation"))
          {
          case 4: 
          case 5: 
          case 7: 
          default: 
            i = 0;
            return new b(paramBitmap, i);
          }
        }
        catch (Exception paramUri)
        {
          continue;
        }
        paramContext = paramContext;
        paramContext = (Context)localObject;
        continue;
        i = 90;
        continue;
        i = 180;
        continue;
        i = 270;
        continue;
      }
      label119:
      paramContext = null;
    }
  }
  
  static void a(Context paramContext, Bitmap paramBitmap, Uri paramUri, Bitmap.CompressFormat paramCompressFormat, int paramInt)
    throws FileNotFoundException
  {
    Context localContext = null;
    try
    {
      paramContext = paramContext.getContentResolver().openOutputStream(paramUri);
      localContext = paramContext;
      paramBitmap.compress(paramCompressFormat, paramInt, paramContext);
      return;
    }
    finally
    {
      b(localContext);
    }
  }
  
  private static BitmapFactory.Options b(ContentResolver paramContentResolver, Uri paramUri)
    throws FileNotFoundException
  {
    ContentResolver localContentResolver = null;
    try
    {
      paramContentResolver = paramContentResolver.openInputStream(paramUri);
      localContentResolver = paramContentResolver;
      paramUri = new BitmapFactory.Options();
      localContentResolver = paramContentResolver;
      paramUri.inJustDecodeBounds = true;
      localContentResolver = paramContentResolver;
      BitmapFactory.decodeStream(paramContentResolver, bPI, paramUri);
      localContentResolver = paramContentResolver;
      paramUri.inJustDecodeBounds = false;
      return paramUri;
    }
    finally
    {
      b(localContentResolver);
    }
  }
  
  private static void b(Rect paramRect, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == paramInt2) && (paramRect.width() != paramRect.height()))
    {
      if (paramRect.height() > paramRect.width()) {
        paramRect.bottom -= paramRect.height() - paramRect.width();
      }
    }
    else {
      return;
    }
    paramRect.right -= paramRect.width() - paramRect.height();
  }
  
  private static void b(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  static float c(float[] paramArrayOfFloat)
  {
    return Math.min(Math.min(Math.min(paramArrayOfFloat[0], paramArrayOfFloat[2]), paramArrayOfFloat[4]), paramArrayOfFloat[6]);
  }
  
  static float d(float[] paramArrayOfFloat)
  {
    return Math.min(Math.min(Math.min(paramArrayOfFloat[1], paramArrayOfFloat[3]), paramArrayOfFloat[5]), paramArrayOfFloat[7]);
  }
  
  static float e(float[] paramArrayOfFloat)
  {
    return Math.max(Math.max(Math.max(paramArrayOfFloat[0], paramArrayOfFloat[2]), paramArrayOfFloat[4]), paramArrayOfFloat[6]);
  }
  
  static float f(float[] paramArrayOfFloat)
  {
    return Math.max(Math.max(Math.max(paramArrayOfFloat[1], paramArrayOfFloat[3]), paramArrayOfFloat[5]), paramArrayOfFloat[7]);
  }
  
  static float g(float[] paramArrayOfFloat)
  {
    return e(paramArrayOfFloat) - c(paramArrayOfFloat);
  }
  
  static float h(float[] paramArrayOfFloat)
  {
    return f(paramArrayOfFloat) - d(paramArrayOfFloat);
  }
  
  static float i(float[] paramArrayOfFloat)
  {
    return (e(paramArrayOfFloat) + c(paramArrayOfFloat)) / 2.0F;
  }
  
  static float j(float[] paramArrayOfFloat)
  {
    return (f(paramArrayOfFloat) + d(paramArrayOfFloat)) / 2.0F;
  }
  
  private static int j(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = 1;
    int k = 1;
    int i = k;
    if (paramInt2 <= paramInt4)
    {
      if (paramInt1 > paramInt3) {
        i = k;
      }
    }
    else {
      for (;;)
      {
        j = i;
        if (paramInt2 / 2 / i <= paramInt4) {
          break;
        }
        j = i;
        if (paramInt1 / 2 / i <= paramInt3) {
          break;
        }
        i *= 2;
      }
    }
    return j;
  }
  
  static final class a
  {
    public final Bitmap avo;
    final int awZ;
    
    a(Bitmap paramBitmap, int paramInt)
    {
      this.avo = paramBitmap;
      this.awZ = paramInt;
    }
  }
  
  static final class b
  {
    public final Bitmap avo;
    final int bPP;
    
    b(Bitmap paramBitmap, int paramInt)
    {
      this.avo = paramBitmap;
      this.bPP = paramInt;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/theartofdev/edmodo/cropper/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */