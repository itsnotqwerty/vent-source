package com.layer.atlas.util;

import android.util.Log;

public final class b
{
  private static volatile boolean bpq = false;
  
  public static boolean dm(int paramInt)
  {
    return (bpq) || (Log.isLoggable("LayerAtlas", paramInt));
  }
  
  public static void du(String paramString)
  {
    Log.v("LayerAtlas", paramString);
  }
  
  public static void e(String paramString)
  {
    Log.e("LayerAtlas", paramString);
  }
  
  public static void e(String paramString, Throwable paramThrowable)
  {
    Log.e("LayerAtlas", paramString, paramThrowable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/atlas/util/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */