package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public final class ea
  implements ThreadFactory
{
  private final String aPD;
  private final AtomicInteger aPE = new AtomicInteger();
  private final ThreadFactory aPF = Executors.defaultThreadFactory();
  private final int zD;
  
  public ea(String paramString)
  {
    this(paramString, (byte)0);
  }
  
  private ea(String paramString, byte paramByte)
  {
    this.aPD = ((String)ae.g(paramString, "Name must not be null"));
    this.zD = 0;
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = this.aPF.newThread(new eb(paramRunnable));
    String str = this.aPD;
    int i = this.aPE.getAndIncrement();
    paramRunnable.setName(String.valueOf(str).length() + 13 + str + "[" + i + "]");
    return paramRunnable;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ea.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */