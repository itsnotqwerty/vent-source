package io.intercom.a.a.a.c.d.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import io.intercom.a.a.a.c.b.a.e;
import io.intercom.a.a.a.c.b.u;
import io.intercom.a.a.a.c.f;
import io.intercom.a.a.a.c.f.a;
import io.intercom.a.a.a.c.g;
import io.intercom.a.a.a.i.h;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;

public final class k
{
  public static final io.intercom.a.a.a.c.i<io.intercom.a.a.a.c.b> cNP = io.intercom.a.a.a.c.i.n("io.intercom.com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", io.intercom.a.a.a.c.b.cHL);
  public static final io.intercom.a.a.a.c.i<j> cNQ = io.intercom.a.a.a.c.i.n("io.intercom.com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", j.cNL);
  public static final io.intercom.a.a.a.c.i<Boolean> cNR = io.intercom.a.a.a.c.i.n("io.intercom.com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", Boolean.valueOf(false));
  public static final io.intercom.a.a.a.c.i<Boolean> cNS = io.intercom.a.a.a.c.i.n("com.bumtpech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", null);
  private static final Set<String> cNT = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "image/vnd.wap.wbmp", "image/x-ico" })));
  static final a cNU = new a()
  {
    public final void Jc() {}
    
    public final void a(e paramAnonymouse, Bitmap paramAnonymousBitmap)
      throws IOException
    {}
  };
  private static final Set<f.a> cNV = Collections.unmodifiableSet(EnumSet.of(f.a.cHS, f.a.cHU, f.a.cHV));
  private static final Queue<BitmapFactory.Options> cNW = io.intercom.a.a.a.i.i.ft(0);
  private final e cFr;
  private final List<f> cID;
  private final io.intercom.a.a.a.c.b.a.b cIu;
  private final DisplayMetrics cMd;
  private final o cNX = o.Jd();
  
  public k(List<f> paramList, DisplayMetrics paramDisplayMetrics, e parame, io.intercom.a.a.a.c.b.a.b paramb)
  {
    this.cID = paramList;
    this.cMd = ((DisplayMetrics)h.checkNotNull(paramDisplayMetrics, "Argument must not be null"));
    this.cFr = ((e)h.checkNotNull(parame, "Argument must not be null"));
    this.cIu = ((io.intercom.a.a.a.c.b.a.b)h.checkNotNull(paramb, "Argument must not be null"));
  }
  
  public static boolean IZ()
  {
    return true;
  }
  
  public static boolean Ja()
  {
    return true;
  }
  
  /* Error */
  private static BitmapFactory.Options Jb()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 138	io/intercom/a/a/a/c/d/a/k:cNW	Ljava/util/Queue;
    //   6: astore_0
    //   7: aload_0
    //   8: monitorenter
    //   9: getstatic 138	io/intercom/a/a/a/c/d/a/k:cNW	Ljava/util/Queue;
    //   12: invokeinterface 184 1 0
    //   17: checkcast 186	android/graphics/BitmapFactory$Options
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: astore_0
    //   25: aload_1
    //   26: ifnonnull +15 -> 41
    //   29: new 186	android/graphics/BitmapFactory$Options
    //   32: dup
    //   33: invokespecial 187	android/graphics/BitmapFactory$Options:<init>	()V
    //   36: astore_0
    //   37: aload_0
    //   38: invokestatic 191	io/intercom/a/a/a/c/d/a/k:d	(Landroid/graphics/BitmapFactory$Options;)V
    //   41: ldc 2
    //   43: monitorexit
    //   44: aload_0
    //   45: areturn
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    //   51: astore_0
    //   52: ldc 2
    //   54: monitorexit
    //   55: aload_0
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   51	5	0	localObject2	Object
    //   20	6	1	localOptions	BitmapFactory.Options
    //   46	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	23	46	finally
    //   47	49	46	finally
    //   3	9	51	finally
    //   29	41	51	finally
    //   49	51	51	finally
  }
  
  private static int[] a(InputStream paramInputStream, BitmapFactory.Options paramOptions, a parama, e parame)
    throws IOException
  {
    paramOptions.inJustDecodeBounds = true;
    b(paramInputStream, paramOptions, parama, parame);
    paramOptions.inJustDecodeBounds = false;
    return new int[] { paramOptions.outWidth, paramOptions.outHeight };
  }
  
  private static Bitmap b(InputStream paramInputStream, BitmapFactory.Options paramOptions, a parama, e parame)
    throws IOException
  {
    if (paramOptions.inJustDecodeBounds) {
      paramInputStream.mark(10485760);
    }
    int i;
    int j;
    Object localObject;
    for (;;)
    {
      i = paramOptions.outWidth;
      j = paramOptions.outHeight;
      localObject = paramOptions.outMimeType;
      t.Jh().lock();
      try
      {
        Bitmap localBitmap1 = BitmapFactory.decodeStream(paramInputStream, null, paramOptions);
        t.Jh().unlock();
        if (paramOptions.inJustDecodeBounds) {
          paramInputStream.reset();
        }
        return localBitmap1;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localObject = new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + j + ", outMimeType: " + (String)localObject + ", inBitmap: " + j(paramOptions.inBitmap), localIllegalArgumentException);
        if (!Log.isLoggable("Downsampler", 3)) {
          break;
        }
        Log.d("Downsampler", "Failed to decode with inBitmap, trying again without Bitmap re-use", (Throwable)localObject);
        Bitmap localBitmap2 = paramOptions.inBitmap;
        if (localBitmap2 == null) {
          break label231;
        }
        try
        {
          paramInputStream.reset();
          parame.g(paramOptions.inBitmap);
          paramOptions.inBitmap = null;
          paramInputStream = b(paramInputStream, paramOptions, parama, parame);
          return paramInputStream;
        }
        catch (IOException paramInputStream)
        {
          throw ((Throwable)localObject);
        }
      }
      finally
      {
        t.Jh().unlock();
      }
      parama.Jc();
    }
    label231:
    throw ((Throwable)localObject);
  }
  
  private static boolean b(BitmapFactory.Options paramOptions)
  {
    return (paramOptions.inTargetDensity > 0) && (paramOptions.inDensity > 0) && (paramOptions.inTargetDensity != paramOptions.inDensity);
  }
  
  private static int c(double paramDouble)
  {
    if (paramDouble <= 1.0D) {}
    for (;;)
    {
      return (int)Math.round(2.147483647E9D * paramDouble);
      paramDouble = 1.0D / paramDouble;
    }
  }
  
  private static void c(BitmapFactory.Options paramOptions)
  {
    d(paramOptions);
    synchronized (cNW)
    {
      cNW.offer(paramOptions);
      return;
    }
  }
  
  private static void d(BitmapFactory.Options paramOptions)
  {
    paramOptions.inTempStorage = null;
    paramOptions.inDither = false;
    paramOptions.inScaled = false;
    paramOptions.inSampleSize = 1;
    paramOptions.inPreferredConfig = null;
    paramOptions.inJustDecodeBounds = false;
    paramOptions.inDensity = 0;
    paramOptions.inTargetDensity = 0;
    paramOptions.outWidth = 0;
    paramOptions.outHeight = 0;
    paramOptions.outMimeType = null;
    paramOptions.inBitmap = null;
    paramOptions.inMutable = true;
  }
  
  @TargetApi(19)
  private static String j(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return null;
    }
    if (Build.VERSION.SDK_INT >= 19) {}
    for (String str = " (" + paramBitmap.getAllocationByteCount() + ")";; str = "") {
      return "[" + paramBitmap.getWidth() + "x" + paramBitmap.getHeight() + "] " + paramBitmap.getConfig() + str;
    }
  }
  
  public final u<Bitmap> a(InputStream paramInputStream, int paramInt1, int paramInt2, io.intercom.a.a.a.c.j paramj, a parama)
    throws IOException
  {
    h.b(paramInputStream.markSupported(), "You must provide an InputStream that supports mark()");
    byte[] arrayOfByte = (byte[])this.cIu.a(65536, byte[].class);
    BitmapFactory.Options localOptions = Jb();
    localOptions.inTempStorage = arrayOfByte;
    io.intercom.a.a.a.c.b localb = (io.intercom.a.a.a.c.b)paramj.a(cNP);
    j localj = (j)paramj.a(cNQ);
    boolean bool2 = ((Boolean)paramj.a(cNR)).booleanValue();
    if ((paramj.a(cNS) != null) && (((Boolean)paramj.a(cNS)).booleanValue()))
    {
      i = 1;
      if (localb == io.intercom.a.a.a.c.b.cHJ) {
        i = 0;
      }
    }
    int i2;
    int i3;
    label221:
    label314:
    int i1;
    try
    {
      l = io.intercom.a.a.a.i.d.JQ();
      paramj = a(paramInputStream, localOptions, parama, this.cFr);
      i2 = paramj[0];
      i3 = paramj[1];
      str = localOptions.outMimeType;
      if (i2 == -1) {
        break label2052;
      }
      if (i3 != -1) {
        break label2045;
      }
    }
    finally
    {
      long l;
      String str;
      int i6;
      c(localOptions);
      this.cIu.put(arrayOfByte);
    }
    i6 = g.b(this.cID, paramInputStream, this.cIu);
    int i = t.fm(i6);
    boolean bool1 = t.fn(i6);
    int k;
    Object localObject;
    int m;
    label349:
    int j;
    if (paramInt1 == Integer.MIN_VALUE)
    {
      k = i2;
      break label2058;
      localObject = g.a(this.cID, paramInputStream, this.cIu);
      paramj = this.cFr;
      if ((i2 > 0) && (i3 > 0)) {
        break label791;
      }
      if (Log.isLoggable("Downsampler", 3)) {
        Log.d("Downsampler", "Unable to determine dimensions for: " + localObject + " with target [" + k + "x" + m + "]");
      }
      paramj = this.cNX;
      if ((i1 == 0) || (Build.VERSION.SDK_INT < 26) || (localb == io.intercom.a.a.a.c.b.cHJ)) {
        break label2072;
      }
      if (!bool1) {
        break label1637;
      }
      break label2072;
      if (j == 0)
      {
        if ((localb != io.intercom.a.a.a.c.b.cHI) && (localb != io.intercom.a.a.a.c.b.cHJ) && (Build.VERSION.SDK_INT != 16)) {
          break label1700;
        }
        localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
      }
      label386:
      if (Build.VERSION.SDK_INT < 19) {
        break label2139;
      }
    }
    label425:
    label481:
    label785:
    label791:
    label1034:
    label1061:
    label1147:
    label1410:
    label1449:
    label1578:
    label1605:
    label1622:
    label1635:
    label1637:
    label1700:
    label1796:
    label1804:
    label2042:
    label2045:
    label2052:
    label2058:
    label2072:
    label2078:
    label2114:
    label2133:
    label2139:
    for (i = 1;; i = 0)
    {
      if ((localOptions.inSampleSize == 1) || (i != 0))
      {
        if (Build.VERSION.SDK_INT < 19) {
          break label1804;
        }
        bool1 = true;
        break label2078;
        if ((j > 0) && (i > 0))
        {
          paramj = this.cFr;
          if ((Build.VERSION.SDK_INT < 26) || (localOptions.inPreferredConfig != Bitmap.Config.HARDWARE)) {
            localOptions.inBitmap = paramj.e(j, i, localOptions.inPreferredConfig);
          }
        }
      }
      localObject = b(paramInputStream, localOptions, parama, this.cFr);
      parama.a(this.cFr, (Bitmap)localObject);
      if (Log.isLoggable("Downsampler", 2)) {
        Log.v("Downsampler", "Decoded " + j((Bitmap)localObject) + " from [" + i2 + "x" + i3 + "] " + str + " with inBitmap " + j(localOptions.inBitmap) + " for [" + paramInt1 + "x" + paramInt2 + "], sample size: " + localOptions.inSampleSize + ", density: " + localOptions.inDensity + ", target density: " + localOptions.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + io.intercom.a.a.a.i.d.V(l));
      }
      paramInputStream = null;
      if (localObject != null)
      {
        ((Bitmap)localObject).setDensity(this.cMd.densityDpi);
        paramj = t.a(this.cFr, (Bitmap)localObject, i6);
        paramInputStream = paramj;
        if (!localObject.equals(paramj))
        {
          this.cFr.g((Bitmap)localObject);
          paramInputStream = paramj;
        }
      }
      paramInputStream = d.a(paramInputStream, this.cFr);
      c(localOptions);
      this.cIu.put(arrayOfByte);
      return paramInputStream;
      i = 0;
      break;
      k = paramInt1;
      break label2058;
      m = paramInt2;
      break label221;
      if ((i == 90) || (i == 270)) {}
      for (float f = localj.l(i3, i2, k, m); f <= 0.0F; f = localj.l(i2, i3, k, m)) {
        throw new IllegalArgumentException("Cannot scale with factor: " + f + " from: " + localj + ", source: [" + i2 + "x" + i3 + "], target: [" + k + "x" + m + "]");
      }
      j = localj.IY();
      if (j == 0) {
        throw new IllegalArgumentException("Cannot round with null rounding");
      }
      int n = (int)(i2 * f + 0.5D);
      i = (int)(i3 * f + 0.5D);
      n = i2 / n;
      i = i3 / i;
      double d1;
      if (j == j.g.cNM)
      {
        i = Math.max(n, i);
        if ((Build.VERSION.SDK_INT > 23) || (!cNT.contains(localOptions.outMimeType))) {
          break label1410;
        }
        n = 1;
        localOptions.inSampleSize = n;
        if (localObject != f.a.cHS) {
          break label1449;
        }
        i = Math.min(n, 8);
        int i4 = (int)Math.ceil(i2 / i);
        int i5 = (int)Math.ceil(i3 / i);
        int i7 = n / 8;
        i = i4;
        j = i5;
        if (i7 > 0)
        {
          i = i4 / i7;
          j = i5 / i7;
        }
        d1 = localj.l(i, j, k, m);
        if (Build.VERSION.SDK_INT >= 19)
        {
          i4 = c(d1);
          i5 = (int)(i4 * d1 + 0.5D);
          double d2 = d1 / (i5 / i4);
          localOptions.inTargetDensity = ((int)(i5 * d2 + 0.5D));
          localOptions.inDensity = c(d1);
        }
        if (!b(localOptions)) {
          break label1622;
        }
        localOptions.inScaled = true;
      }
      for (;;)
      {
        if (!Log.isLoggable("Downsampler", 2)) {
          break label1635;
        }
        Log.v("Downsampler", "Calculate scaling, source: [" + i2 + "x" + i3 + "], target: [" + k + "x" + m + "], power of two scaled: [" + i + "x" + j + "], exact scale factor: " + f + ", power of 2 sample size: " + n + ", adjusted scale factor: " + d1 + ", target density: " + localOptions.inTargetDensity + ", density: " + localOptions.inDensity);
        break;
        i = Math.min(n, i);
        break label1034;
        n = Math.max(1, Integer.highestOneBit(i));
        if ((j != j.g.cNM) || (n >= 1.0F / f)) {
          break label2042;
        }
        n <<= 1;
        break label1061;
        if ((localObject == f.a.cHV) || (localObject == f.a.cHU))
        {
          i = (int)Math.floor(i2 / n);
          j = (int)Math.floor(i3 / n);
          break label1147;
        }
        if ((localObject != f.a.cHX) && (localObject != f.a.cHW)) {
          break label2114;
        }
        if (Build.VERSION.SDK_INT >= 24)
        {
          i = Math.round(i2 / n);
          j = Math.round(i3 / n);
          break label1147;
        }
        i = (int)Math.floor(i2 / n);
        j = (int)Math.floor(i3 / n);
        break label1147;
        paramj = a(paramInputStream, localOptions, parama, paramj);
        i = paramj[0];
        j = paramj[1];
        break label1147;
        i = i2 / n;
        j = i3 / n;
        break label1147;
        localOptions.inTargetDensity = 0;
        localOptions.inDensity = 0;
      }
      break label314;
      if ((k >= 128) && (m >= 128) && (paramj.Je())) {}
      for (i = 1;; i = 0)
      {
        j = i;
        if (i == 0) {
          break;
        }
        localOptions.inPreferredConfig = Bitmap.Config.HARDWARE;
        localOptions.inMutable = false;
        j = i;
        break;
      }
      for (;;)
      {
        try
        {
          bool1 = g.a(this.cID, paramInputStream, this.cIu).cHZ;
          if (!bool1) {
            break label1796;
          }
          paramj = Bitmap.Config.ARGB_8888;
          localOptions.inPreferredConfig = paramj;
          if (localOptions.inPreferredConfig != Bitmap.Config.RGB_565) {
            break label386;
          }
          localOptions.inDither = true;
        }
        catch (IOException paramj)
        {
          if (!Log.isLoggable("Downsampler", 3)) {
            break label2133;
          }
        }
        Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + localb, paramj);
        break label2133;
        paramj = Bitmap.Config.RGB_565;
        continue;
        bool1 = cNV.contains(localObject);
        do
        {
          if (b(localOptions)) {}
          for (f = localOptions.inTargetDensity / localOptions.inDensity;; f = 1.0F)
          {
            n = localOptions.inSampleSize;
            j = (int)Math.ceil(i2 / n);
            i = (int)Math.ceil(i3 / n);
            k = Math.round(j * f);
            m = Math.round(i * f);
            i = m;
            j = k;
            if (!Log.isLoggable("Downsampler", 2)) {
              break;
            }
            Log.v("Downsampler", "Calculated target [" + k + "x" + m + "] for source [" + i2 + "x" + i3 + "], sampleSize: " + n + ", targetDensity: " + localOptions.inTargetDensity + ", density: " + localOptions.inDensity + ", density multiplier: " + f);
            i = m;
            j = k;
            break;
          }
          break label1061;
          i1 = i;
          break;
          i1 = 0;
          break;
          if (paramInt2 != Integer.MIN_VALUE) {
            break label785;
          }
          m = i3;
          break label221;
          j = 0;
          break label349;
          if (!bool1) {
            break label481;
          }
        } while ((i2 < 0) || (i3 < 0) || (!bool2) || (i == 0));
        i = m;
        j = k;
        break label425;
        if (i2 % n != 0) {
          break label1578;
        }
        if (i3 % n == 0) {
          break label1605;
        }
        break label1578;
        bool1 = false;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void Jc();
    
    public abstract void a(e parame, Bitmap paramBitmap)
      throws IOException;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/d/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */