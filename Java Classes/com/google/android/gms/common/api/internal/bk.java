package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.ea;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class bk
{
  private static final ExecutorService aEY = new ThreadPoolExecutor(0, 4, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ea("GAC_Transform"));
  
  public static ExecutorService ny()
  {
    return aEY;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */