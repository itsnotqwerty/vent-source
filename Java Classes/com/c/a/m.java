package com.c.a;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public final class m
  implements d
{
  final LinkedHashMap<String, Bitmap> ED;
  private int EE;
  private int EF;
  private int EG;
  private int hitCount;
  private final int maxSize;
  private int size;
  
  public m(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Max size must be positive.");
    }
    this.maxSize = paramInt;
    this.ED = new LinkedHashMap(0, 0.75F, true);
  }
  
  public m(Context paramContext)
  {
    this(ag.aA(paramContext));
  }
  
  private void trimToSize(int paramInt)
  {
    try
    {
      if ((this.size < 0) || ((this.ED.isEmpty()) && (this.size != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((this.size <= paramInt) || (this.ED.isEmpty())) {
        return;
      }
      Object localObject2 = (Map.Entry)this.ED.entrySet().iterator().next();
      String str = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (Bitmap)((Map.Entry)localObject2).getValue();
      this.ED.remove(str);
      this.size -= ag.d((Bitmap)localObject2);
      this.EF += 1;
    }
  }
  
  public final void a(String paramString, Bitmap paramBitmap)
  {
    if ((paramString == null) || (paramBitmap == null)) {
      throw new NullPointerException("key == null || bitmap == null");
    }
    try
    {
      this.EE += 1;
      this.size += ag.d(paramBitmap);
      paramString = (Bitmap)this.ED.put(paramString, paramBitmap);
      if (paramString != null) {
        this.size -= ag.d(paramString);
      }
      trimToSize(this.maxSize);
      return;
    }
    finally {}
  }
  
  public final Bitmap dN(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      paramString = (Bitmap)this.ED.get(paramString);
      if (paramString != null)
      {
        this.hitCount += 1;
        return paramString;
      }
      this.EG += 1;
      return null;
    }
    finally {}
  }
  
  public final int maxSize()
  {
    try
    {
      int i = this.maxSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int size()
  {
    try
    {
      int i = this.size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */