package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.k;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.ae;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;

public final class bt<R extends i>
  extends m<R>
  implements j<R>
{
  final Object aDi;
  final WeakReference<f> aDk;
  l<? super R, ? extends i> aGe;
  bt<? extends i> aGf;
  volatile k<? super R> aGg;
  g<R> aGh;
  Status aGi;
  final bv aGj;
  boolean aGk;
  
  private final boolean nQ()
  {
    f localf = (f)this.aDk.get();
    return (this.aGg != null) && (localf != null);
  }
  
  public final void a(R paramR)
  {
    synchronized (this.aDi)
    {
      if (paramR.nf().mQ())
      {
        if (this.aGe != null) {
          bk.ny().submit(new bu(this, paramR));
        }
        for (;;)
        {
          return;
          if (nQ()) {
            paramR = this.aGg;
          }
        }
      }
      e(paramR.nf());
    }
  }
  
  final void e(Status paramStatus)
  {
    synchronized (this.aDi)
    {
      this.aGi = paramStatus;
      f(this.aGi);
      return;
    }
  }
  
  final void f(Status paramStatus)
  {
    synchronized (this.aDi)
    {
      if (this.aGe != null)
      {
        ae.g(paramStatus, "onFailure must not return null");
        this.aGf.e(paramStatus);
      }
      while (!nQ()) {
        return;
      }
      paramStatus = this.aGg;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */