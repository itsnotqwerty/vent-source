package com.c.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.net.NetworkInfo;
import java.io.IOException;
import java.io.InputStream;

public abstract class y
{
  static void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, BitmapFactory.Options paramOptions, w paramw)
  {
    int i = 1;
    if ((paramInt4 > paramInt2) || (paramInt3 > paramInt1))
    {
      if (paramInt2 != 0) {
        break label43;
      }
      i = (int)Math.floor(paramInt3 / paramInt1);
    }
    for (;;)
    {
      paramOptions.inSampleSize = i;
      paramOptions.inJustDecodeBounds = false;
      return;
      label43:
      if (paramInt1 == 0)
      {
        i = (int)Math.floor(paramInt4 / paramInt2);
      }
      else
      {
        paramInt2 = (int)Math.floor(paramInt4 / paramInt2);
        paramInt1 = (int)Math.floor(paramInt3 / paramInt1);
        if (paramw.bOJ) {
          i = Math.max(paramInt2, paramInt1);
        } else {
          i = Math.min(paramInt2, paramInt1);
        }
      }
    }
  }
  
  static void a(int paramInt1, int paramInt2, BitmapFactory.Options paramOptions, w paramw)
  {
    a(paramInt1, paramInt2, paramOptions.outWidth, paramOptions.outHeight, paramOptions, paramw);
  }
  
  static boolean a(BitmapFactory.Options paramOptions)
  {
    return (paramOptions != null) && (paramOptions.inJustDecodeBounds);
  }
  
  static BitmapFactory.Options d(w paramw)
  {
    boolean bool = paramw.Aw();
    if (paramw.bOP != null) {}
    for (int i = 1;; i = 0)
    {
      Object localObject = null;
      if ((bool) || (i != 0))
      {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inJustDecodeBounds = bool;
        localObject = localOptions;
        if (i != 0)
        {
          localOptions.inPreferredConfig = paramw.bOP;
          localObject = localOptions;
        }
      }
      return (BitmapFactory.Options)localObject;
    }
  }
  
  boolean At()
  {
    return false;
  }
  
  public abstract a a(w paramw, int paramInt)
    throws IOException;
  
  public abstract boolean a(w paramw);
  
  boolean b(NetworkInfo paramNetworkInfo)
  {
    return false;
  }
  
  int getRetryCount()
  {
    return 0;
  }
  
  public static final class a
  {
    final Bitmap avo;
    final InputStream bNE;
    final t.d bNf;
    final int bOW;
    
    public a(Bitmap paramBitmap, t.d paramd)
    {
      this((Bitmap)ag.checkNotNull(paramBitmap, "bitmap == null"), null, paramd, 0);
    }
    
    a(Bitmap paramBitmap, InputStream paramInputStream, t.d paramd, int paramInt)
    {
      int i;
      if (paramBitmap != null)
      {
        i = 1;
        if (paramInputStream == null) {
          break label40;
        }
      }
      for (;;)
      {
        if ((j ^ i) != 0) {
          break label46;
        }
        throw new AssertionError();
        i = 0;
        break;
        label40:
        j = 0;
      }
      label46:
      this.avo = paramBitmap;
      this.bNE = paramInputStream;
      this.bNf = ((t.d)ag.checkNotNull(paramd, "loadedFrom == null"));
      this.bOW = paramInt;
    }
    
    public a(InputStream paramInputStream, t.d paramd)
    {
      this(null, (InputStream)ag.checkNotNull(paramInputStream, "stream == null"), paramd, 0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */