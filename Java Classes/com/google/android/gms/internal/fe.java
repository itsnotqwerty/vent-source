package com.google.android.gms.internal;

import android.content.ContentProviderClient;
import android.content.Context;
import com.google.android.gms.common.api.internal.bc;
import com.google.android.gms.common.api.internal.be;
import com.google.android.gms.location.c;
import java.util.HashMap;
import java.util.Map;

public final class fe
{
  final fq<fc> aPL;
  private ContentProviderClient aPZ = null;
  boolean aQa = false;
  final Map<be<c>, fj> aQb = new HashMap();
  final Map<be<Object>, fi> aQc = new HashMap();
  final Map<be<Object>, ff> aQd = new HashMap();
  final Context mContext;
  
  public fe(Context paramContext, fq<fc> paramfq)
  {
    this.mContext = paramContext;
    this.aPL = paramfq;
  }
  
  final fj a(bc<c> parambc)
  {
    synchronized (this.aQb)
    {
      fj localfj2 = (fj)this.aQb.get(parambc.aFR);
      fj localfj1 = localfj2;
      if (localfj2 == null) {
        localfj1 = new fj(parambc);
      }
      this.aQb.put(parambc.aFR, localfj1);
      return localfj1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */