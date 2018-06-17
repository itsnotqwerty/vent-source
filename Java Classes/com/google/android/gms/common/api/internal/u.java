package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.internal.ma;

final class u
  implements f.b, f.c
{
  private u(l paraml) {}
  
  /* Error */
  public final void a(com.google.android.gms.common.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/google/android/gms/common/api/internal/u:aEm	Lcom/google/android/gms/common/api/internal/l;
    //   4: getfield 29	com/google/android/gms/common/api/internal/l:aDD	Ljava/util/concurrent/locks/Lock;
    //   7: invokeinterface 34 1 0
    //   12: aload_0
    //   13: getfield 14	com/google/android/gms/common/api/internal/u:aEm	Lcom/google/android/gms/common/api/internal/l;
    //   16: aload_1
    //   17: invokevirtual 38	com/google/android/gms/common/api/internal/l:b	(Lcom/google/android/gms/common/a;)Z
    //   20: ifeq +30 -> 50
    //   23: aload_0
    //   24: getfield 14	com/google/android/gms/common/api/internal/u:aEm	Lcom/google/android/gms/common/api/internal/l;
    //   27: invokevirtual 41	com/google/android/gms/common/api/internal/l:nr	()V
    //   30: aload_0
    //   31: getfield 14	com/google/android/gms/common/api/internal/u:aEm	Lcom/google/android/gms/common/api/internal/l;
    //   34: invokevirtual 44	com/google/android/gms/common/api/internal/l:np	()V
    //   37: aload_0
    //   38: getfield 14	com/google/android/gms/common/api/internal/u:aEm	Lcom/google/android/gms/common/api/internal/l;
    //   41: getfield 29	com/google/android/gms/common/api/internal/l:aDD	Ljava/util/concurrent/locks/Lock;
    //   44: invokeinterface 47 1 0
    //   49: return
    //   50: aload_0
    //   51: getfield 14	com/google/android/gms/common/api/internal/u:aEm	Lcom/google/android/gms/common/api/internal/l;
    //   54: aload_1
    //   55: invokevirtual 50	com/google/android/gms/common/api/internal/l:c	(Lcom/google/android/gms/common/a;)V
    //   58: goto -21 -> 37
    //   61: astore_1
    //   62: aload_0
    //   63: getfield 14	com/google/android/gms/common/api/internal/u:aEm	Lcom/google/android/gms/common/api/internal/l;
    //   66: getfield 29	com/google/android/gms/common/api/internal/l:aDD	Ljava/util/concurrent/locks/Lock;
    //   69: invokeinterface 47 1 0
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	u
    //   0	76	1	parama	com.google.android.gms.common.a
    // Exception table:
    //   from	to	target	type
    //   12	37	61	finally
    //   50	58	61	finally
  }
  
  public final void cG(int paramInt) {}
  
  public final void h(Bundle paramBundle)
  {
    this.aEm.aEe.a(new s(this.aEm));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */