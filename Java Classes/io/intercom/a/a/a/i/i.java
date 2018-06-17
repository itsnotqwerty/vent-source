package io.intercom.a.a.a.i;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.os.Looper;
import io.intercom.a.a.a.c.c.l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

public final class i
{
  private static final char[] cRa = "0123456789abcdef".toCharArray();
  private static final char[] cRb = new char[64];
  
  public static String D(byte[] paramArrayOfByte)
  {
    synchronized (cRb)
    {
      char[] arrayOfChar2 = cRb;
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        int j = paramArrayOfByte[i] & 0xFF;
        arrayOfChar2[(i * 2)] = cRa[(j >>> 4)];
        arrayOfChar2[(i * 2 + 1)] = cRa[(j & 0xF)];
        i += 1;
      }
      paramArrayOfByte = new String(arrayOfChar2);
      return paramArrayOfByte;
    }
  }
  
  public static void JS()
  {
    if (!JU()) {
      throw new IllegalArgumentException("You must call this method on the main thread");
    }
  }
  
  public static void JT()
  {
    if (!JV()) {
      throw new IllegalArgumentException("You must call this method on a background thread");
    }
  }
  
  public static boolean JU()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  public static boolean JV()
  {
    return !JU();
  }
  
  public static boolean aR(int paramInt1, int paramInt2)
  {
    return (fs(paramInt1)) && (fs(paramInt2));
  }
  
  public static int b(Object paramObject, int paramInt)
  {
    if (paramObject == null) {}
    for (int i = 0;; i = paramObject.hashCode()) {
      return i + paramInt * 31;
    }
  }
  
  public static int c(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return i + paramInt * 31;
    }
  }
  
  private static boolean fs(int paramInt)
  {
    return (paramInt > 0) || (paramInt == Integer.MIN_VALUE);
  }
  
  public static <T> Queue<T> ft(int paramInt)
  {
    return new ArrayDeque(paramInt);
  }
  
  public static int g(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap.Config localConfig = paramConfig;
    if (paramConfig == null) {
      localConfig = Bitmap.Config.ARGB_8888;
    }
    int i;
    switch (1.cLI[localConfig.ordinal()])
    {
    default: 
      i = 4;
    }
    for (;;)
    {
      return i * (paramInt1 * paramInt2);
      i = 1;
      continue;
      i = 2;
    }
  }
  
  public static int hashCode(float paramFloat)
  {
    return Float.floatToIntBits(paramFloat) + 527;
  }
  
  public static int hashCode(int paramInt1, int paramInt2)
  {
    return paramInt2 * 31 + paramInt1;
  }
  
  public static <T> List<T> i(Collection<T> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public static boolean i(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static boolean j(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    if ((paramObject1 instanceof l)) {
      return ((l)paramObject1).IQ();
    }
    return paramObject1.equals(paramObject2);
  }
  
  @TargetApi(19)
  public static int l(Bitmap paramBitmap)
  {
    if (paramBitmap.isRecycled()) {
      throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + paramBitmap + "[" + paramBitmap.getWidth() + "x" + paramBitmap.getHeight() + "] " + paramBitmap.getConfig());
    }
    if (Build.VERSION.SDK_INT >= 19) {
      try
      {
        int i = paramBitmap.getAllocationByteCount();
        return i;
      }
      catch (NullPointerException localNullPointerException) {}
    }
    return paramBitmap.getHeight() * paramBitmap.getRowBytes();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */