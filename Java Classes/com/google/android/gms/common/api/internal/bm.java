package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a.b;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import com.google.android.gms.internal.mf;
import com.google.android.gms.internal.mn;
import java.util.Set;

public final class bm
  extends mf
  implements f.b, f.c
{
  private static a.b<? extends ma, mb> aGa = lx.aYV;
  final a.b<? extends ma, mb> aCt;
  ay aDG;
  ma aEe;
  Set<Scope> aFx;
  bp aGb;
  final Context mContext;
  final Handler mHandler;
  
  public bm(Context paramContext, Handler paramHandler, ay paramay)
  {
    this(paramContext, paramHandler, paramay, aGa);
  }
  
  public bm(Context paramContext, Handler paramHandler, ay paramay, a.b<? extends ma, mb> paramb)
  {
    this.mContext = paramContext;
    this.mHandler = paramHandler;
    this.aDG = ((ay)ae.g(paramay, "ClientSettings must not be null"));
    this.aFx = paramay.aCJ;
    this.aCt = paramb;
  }
  
  public final void a(a parama)
  {
    this.aGb.h(parama);
  }
  
  public final void a(mn parammn)
  {
    this.mHandler.post(new bo(this, parammn));
  }
  
  public final void cG(int paramInt)
  {
    this.aEe.disconnect();
  }
  
  public final void h(Bundle paramBundle)
  {
    this.aEe.a(this);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */