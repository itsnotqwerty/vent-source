package io.intercom.a.a.a.c.b.a;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public final class k
  implements e
{
  private static final Bitmap.Config cLt = Bitmap.Config.ARGB_8888;
  private int cLA;
  private int cLB;
  private int cLC;
  private final l cLu;
  private final Set<Bitmap.Config> cLv;
  private final long cLw;
  private final a cLx;
  private long cLy;
  private int cLz;
  private long maxSize;
  
  public k(long paramLong) {}
  
  private k(long paramLong, l paraml, Set<Bitmap.Config> paramSet)
  {
    this.cLw = paramLong;
    this.maxSize = paramLong;
    this.cLu = paraml;
    this.cLv = paramSet;
    this.cLx = new b();
  }
  
  private void IB()
  {
    Log.v("LruBitmapPool", "Hits=" + this.cLz + ", misses=" + this.cLA + ", puts=" + this.cLB + ", evictions=" + this.cLC + ", currentSize=" + this.cLy + ", maxSize=" + this.maxSize + "\nStrategy=" + this.cLu);
  }
  
  /* Error */
  private void U(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 141	io/intercom/a/a/a/c/b/a/k:cLy	J
    //   6: lload_1
    //   7: lcmp
    //   8: ifle +43 -> 51
    //   11: aload_0
    //   12: getfield 99	io/intercom/a/a/a/c/b/a/k:cLu	Lio/intercom/a/a/a/c/b/a/l;
    //   15: invokeinterface 168 1 0
    //   20: astore_3
    //   21: aload_3
    //   22: ifnonnull +32 -> 54
    //   25: ldc 109
    //   27: iconst_5
    //   28: invokestatic 172	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   31: ifeq +15 -> 46
    //   34: ldc 109
    //   36: ldc -82
    //   38: invokestatic 177	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   41: pop
    //   42: aload_0
    //   43: invokespecial 179	io/intercom/a/a/a/c/b/a/k:IB	()V
    //   46: aload_0
    //   47: lconst_0
    //   48: putfield 141	io/intercom/a/a/a/c/b/a/k:cLy	J
    //   51: aload_0
    //   52: monitorexit
    //   53: return
    //   54: aload_0
    //   55: aload_0
    //   56: getfield 141	io/intercom/a/a/a/c/b/a/k:cLy	J
    //   59: aload_0
    //   60: getfield 99	io/intercom/a/a/a/c/b/a/k:cLu	Lio/intercom/a/a/a/c/b/a/l;
    //   63: aload_3
    //   64: invokeinterface 183 2 0
    //   69: i2l
    //   70: lsub
    //   71: putfield 141	io/intercom/a/a/a/c/b/a/k:cLy	J
    //   74: aload_0
    //   75: aload_0
    //   76: getfield 137	io/intercom/a/a/a/c/b/a/k:cLC	I
    //   79: iconst_1
    //   80: iadd
    //   81: putfield 137	io/intercom/a/a/a/c/b/a/k:cLC	I
    //   84: ldc 109
    //   86: iconst_3
    //   87: invokestatic 172	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   90: ifeq +34 -> 124
    //   93: ldc 109
    //   95: new 111	java/lang/StringBuilder
    //   98: dup
    //   99: ldc -71
    //   101: invokespecial 116	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   104: aload_0
    //   105: getfield 99	io/intercom/a/a/a/c/b/a/k:cLu	Lio/intercom/a/a/a/c/b/a/l;
    //   108: aload_3
    //   109: invokeinterface 189 2 0
    //   114: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 192	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   123: pop
    //   124: aload_0
    //   125: invokespecial 195	io/intercom/a/a/a/c/b/a/k:dump	()V
    //   128: aload_3
    //   129: invokevirtual 200	android/graphics/Bitmap:recycle	()V
    //   132: goto -130 -> 2
    //   135: astore_3
    //   136: aload_0
    //   137: monitorexit
    //   138: aload_3
    //   139: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	k
    //   0	140	1	paramLong	long
    //   20	109	3	localBitmap	Bitmap
    //   135	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	21	135	finally
    //   25	46	135	finally
    //   46	51	135	finally
    //   54	124	135	finally
    //   124	132	135	finally
  }
  
  private void dump()
  {
    if (Log.isLoggable("LruBitmapPool", 2)) {
      IB();
    }
  }
  
  private Bitmap f(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    try
    {
      if ((Build.VERSION.SDK_INT >= 26) && (paramConfig == Bitmap.Config.HARDWARE)) {
        throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + paramConfig + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
      }
    }
    finally {}
    l locall = this.cLu;
    Object localObject;
    if (paramConfig != null)
    {
      localObject = paramConfig;
      localObject = locall.get(paramInt1, paramInt2, (Bitmap.Config)localObject);
      if (localObject != null) {
        break label193;
      }
      if (Log.isLoggable("LruBitmapPool", 3)) {
        Log.d("LruBitmapPool", "Missing bitmap=" + this.cLu.b(paramInt1, paramInt2, paramConfig));
      }
      this.cLA += 1;
    }
    for (;;)
    {
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Get bitmap=" + this.cLu.b(paramInt1, paramInt2, paramConfig));
      }
      dump();
      return (Bitmap)localObject;
      localObject = cLt;
      break;
      label193:
      this.cLz += 1;
      this.cLy -= this.cLu.i((Bitmap)localObject);
      ((Bitmap)localObject).setHasAlpha(true);
      if (Build.VERSION.SDK_INT >= 19) {
        ((Bitmap)localObject).setPremultiplied(true);
      }
    }
  }
  
  public final void Iw()
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "clearMemory");
    }
    U(0L);
  }
  
  public final Bitmap e(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap2 = f(paramInt1, paramInt2, paramConfig);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
    }
    return localBitmap1;
  }
  
  @SuppressLint({"InlinedApi"})
  public final void fh(int paramInt)
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "trimMemory, level=" + paramInt);
    }
    if (paramInt >= 40) {
      Iw();
    }
    while (paramInt < 20) {
      return;
    }
    U(this.maxSize / 2L);
  }
  
  public final void g(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      try
      {
        throw new NullPointerException("Bitmap must not be null");
      }
      finally {}
    }
    if (paramBitmap.isRecycled()) {
      throw new IllegalStateException("Cannot pool recycled bitmap");
    }
    if ((!paramBitmap.isMutable()) || (this.cLu.i(paramBitmap) > this.maxSize) || (!this.cLv.contains(paramBitmap.getConfig())))
    {
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.cLu.h(paramBitmap) + ", is mutable: " + paramBitmap.isMutable() + ", is allowed config: " + this.cLv.contains(paramBitmap.getConfig()));
      }
      paramBitmap.recycle();
    }
    for (;;)
    {
      return;
      int i = this.cLu.i(paramBitmap);
      this.cLu.g(paramBitmap);
      this.cLB += 1;
      long l = this.cLy;
      this.cLy = (i + l);
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Put bitmap in pool=" + this.cLu.h(paramBitmap));
      }
      dump();
      U(this.maxSize);
    }
  }
  
  public final Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap localBitmap = f(paramInt1, paramInt2, paramConfig);
    if (localBitmap != null)
    {
      localBitmap.eraseColor(0);
      return localBitmap;
    }
    return Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
  }
  
  private static abstract interface a {}
  
  private static final class b
    implements k.a
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */