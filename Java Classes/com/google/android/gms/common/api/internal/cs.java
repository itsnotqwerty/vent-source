package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;

public final class cs<O extends a.a>
  extends e<O>
{
  private final a.b<? extends ma, mb> aCV;
  private final ay aDG;
  private final a.f aFl;
  private final cn aHe;
  
  public cs(Context paramContext, a<O> parama, Looper paramLooper, a.f paramf, cn paramcn, ay paramay, a.b<? extends ma, mb> paramb)
  {
    super(paramContext, parama, paramLooper);
    this.aFl = paramf;
    this.aHe = paramcn;
    this.aDG = paramay;
    this.aCV = paramb;
    paramContext = this.aCF;
    paramContext.mHandler.sendMessage(paramContext.mHandler.obtainMessage(7, this));
  }
  
  public final a.f a(Looper paramLooper, aj<O> paramaj)
  {
    this.aHe.aGS = paramaj;
    return this.aFl;
  }
  
  public final bm a(Context paramContext, Handler paramHandler)
  {
    return new bm(paramContext, paramHandler, this.aDG, this.aCV);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */