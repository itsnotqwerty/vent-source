package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.ea;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ag
{
  private static final ExecutorService aEY = Executors.newFixedThreadPool(2, new ea("GAC_Executor"));
  
  public static ExecutorService ny()
  {
    return aEY;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */