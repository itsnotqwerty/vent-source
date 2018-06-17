package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a.f;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.k;
import java.util.Set;

public abstract class c<T extends IInterface>
  extends al<T>
  implements a.f, g
{
  private final Account aCI;
  private final ay aDG;
  private final Set<Scope> aFx;
  
  protected c(Context paramContext, Looper paramLooper, int paramInt, ay paramay, f.b paramb, f.c paramc)
  {
    this(paramContext, paramLooper, h.A(paramContext), com.google.android.gms.common.c.mR(), paramInt, paramay, (f.b)ae.E(paramb), (f.c)ae.E(paramc));
  }
  
  private c(Context paramContext, Looper paramLooper, h paramh, com.google.android.gms.common.c paramc, int paramInt, ay paramay, f.b paramb, f.c paramc1) {}
  
  public final Account mV()
  {
    return this.aCI;
  }
  
  protected final Set<Scope> nW()
  {
    return this.aFx;
  }
  
  public final k[] nX()
  {
    return new k[0];
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */