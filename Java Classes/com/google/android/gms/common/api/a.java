package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.ar;
import com.google.android.gms.common.internal.ax;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.internal.n;
import java.io.PrintWriter;
import java.util.Set;

public final class a<O extends a>
{
  private final b<?, O> aCt;
  private final i<?, O> aCu;
  private final g<?> aCv;
  private final j<?> aCw;
  public final String mName;
  
  public <C extends f> a(String paramString, b<C, O> paramb, g<C> paramg)
  {
    ae.g(paramb, "Cannot construct an Api with a null ClientBuilder");
    ae.g(paramg, "Cannot construct an Api with a null ClientKey");
    this.mName = paramString;
    this.aCt = paramb;
    this.aCu = null;
    this.aCv = paramg;
    this.aCw = null;
  }
  
  public final b<?, O> mT()
  {
    if (this.aCt != null) {}
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
      return this.aCt;
    }
  }
  
  public final d<?> mU()
  {
    if (this.aCv != null) {
      return this.aCv;
    }
    throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
  }
  
  public static abstract interface a
  {
    public static abstract interface a
      extends a.a.c, a.a.d
    {
      public abstract Account mV();
    }
    
    public static abstract interface b
      extends a.a.c
    {
      public abstract GoogleSignInAccount mW();
    }
    
    public static abstract interface c
      extends a.a
    {}
    
    public static abstract interface d
      extends a.a
    {}
    
    public static abstract interface e
      extends a.a.c, a.a.d
    {}
  }
  
  public static abstract class b<T extends a.f, O>
    extends a.e<T, O>
  {
    public abstract T a(Context paramContext, Looper paramLooper, ay paramay, O paramO, f.b paramb, f.c paramc);
  }
  
  public static abstract interface c {}
  
  public static class d<C extends a.c> {}
  
  public static class e<T extends a.c, O> {}
  
  public static abstract interface f
    extends a.c
  {
    public abstract void a(ar paramar);
    
    public abstract void a(ax paramax);
    
    public abstract void a(n paramn, Set<Scope> paramSet);
    
    public abstract void a(String paramString, PrintWriter paramPrintWriter);
    
    public abstract void disconnect();
    
    public abstract boolean isConnected();
    
    public abstract boolean isConnecting();
    
    public abstract boolean mX();
    
    public abstract Intent mY();
    
    public abstract String mZ();
  }
  
  public static final class g<C extends a.f>
    extends a.d<C>
  {}
  
  public static abstract interface h<T extends IInterface>
    extends a.c
  {}
  
  public static final class i<T extends a.h, O>
    extends a.e<T, O>
  {}
  
  public static final class j<C extends a.h>
    extends a.d<C>
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */