package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.a;
import java.util.concurrent.locks.Lock;

final class cq
  implements ax
{
  private cq(cp paramcp) {}
  
  public final void e(a parama)
  {
    this.aHd.aDD.lock();
    try
    {
      this.aHd.aGZ = parama;
      cp.a(this.aHd);
      return;
    }
    finally
    {
      this.aHd.aDD.unlock();
    }
  }
  
  public final void h(int paramInt, boolean paramBoolean)
  {
    this.aHd.aDD.lock();
    try
    {
      if ((this.aHd.aHb) || (this.aHd.aHa == null) || (!this.aHd.aHa.mQ()))
      {
        this.aHd.aHb = false;
        cp.a(this.aHd, paramInt, paramBoolean);
        return;
      }
      this.aHd.aHb = true;
      this.aHd.aGU.cG(paramInt);
      return;
    }
    finally
    {
      this.aHd.aDD.unlock();
    }
  }
  
  /* Error */
  public final void i(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/google/android/gms/common/api/internal/cq:aHd	Lcom/google/android/gms/common/api/internal/cp;
    //   4: getfield 27	com/google/android/gms/common/api/internal/cp:aDD	Ljava/util/concurrent/locks/Lock;
    //   7: invokeinterface 32 1 0
    //   12: aload_0
    //   13: getfield 12	com/google/android/gms/common/api/internal/cq:aHd	Lcom/google/android/gms/common/api/internal/cp;
    //   16: astore_2
    //   17: aload_2
    //   18: getfield 76	com/google/android/gms/common/api/internal/cp:aGY	Landroid/os/Bundle;
    //   21: ifnonnull +38 -> 59
    //   24: aload_2
    //   25: aload_1
    //   26: putfield 76	com/google/android/gms/common/api/internal/cp:aGY	Landroid/os/Bundle;
    //   29: aload_0
    //   30: getfield 12	com/google/android/gms/common/api/internal/cq:aHd	Lcom/google/android/gms/common/api/internal/cp;
    //   33: getstatic 79	com/google/android/gms/common/a:aCh	Lcom/google/android/gms/common/a;
    //   36: putfield 36	com/google/android/gms/common/api/internal/cp:aGZ	Lcom/google/android/gms/common/a;
    //   39: aload_0
    //   40: getfield 12	com/google/android/gms/common/api/internal/cq:aHd	Lcom/google/android/gms/common/api/internal/cp;
    //   43: invokestatic 39	com/google/android/gms/common/api/internal/cp:a	(Lcom/google/android/gms/common/api/internal/cp;)V
    //   46: aload_0
    //   47: getfield 12	com/google/android/gms/common/api/internal/cq:aHd	Lcom/google/android/gms/common/api/internal/cp;
    //   50: getfield 27	com/google/android/gms/common/api/internal/cp:aDD	Ljava/util/concurrent/locks/Lock;
    //   53: invokeinterface 42 1 0
    //   58: return
    //   59: aload_1
    //   60: ifnull -31 -> 29
    //   63: aload_2
    //   64: getfield 76	com/google/android/gms/common/api/internal/cp:aGY	Landroid/os/Bundle;
    //   67: aload_1
    //   68: invokevirtual 84	android/os/Bundle:putAll	(Landroid/os/Bundle;)V
    //   71: goto -42 -> 29
    //   74: astore_1
    //   75: aload_0
    //   76: getfield 12	com/google/android/gms/common/api/internal/cq:aHd	Lcom/google/android/gms/common/api/internal/cp;
    //   79: getfield 27	com/google/android/gms/common/api/internal/cp:aDD	Ljava/util/concurrent/locks/Lock;
    //   82: invokeinterface 42 1 0
    //   87: aload_1
    //   88: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	cq
    //   0	89	1	paramBundle	android.os.Bundle
    //   16	48	2	localcp	cp
    // Exception table:
    //   from	to	target	type
    //   12	29	74	finally
    //   29	46	74	finally
    //   63	71	74	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */