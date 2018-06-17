package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.internal.ay;
import com.google.android.gms.common.internal.c;

public class ej
  extends c<fc>
{
  private final String aPK;
  protected final fq<fc> aPL = new ek(this);
  
  public ej(Context paramContext, Looper paramLooper, f.b paramb, f.c paramc, String paramString, ay paramay)
  {
    super(paramContext, paramLooper, 23, paramay, paramb, paramc);
    this.aPK = paramString;
  }
  
  protected final String oi()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected final String oj()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
  
  protected final Bundle op()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", this.aPK);
    return localBundle;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ej.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */