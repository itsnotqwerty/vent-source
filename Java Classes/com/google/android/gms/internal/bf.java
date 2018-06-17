package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.ae;

public final class bf
{
  final Context aCq;
  final Context aMH;
  
  public bf(Context paramContext)
  {
    ae.E(paramContext);
    paramContext = paramContext.getApplicationContext();
    ae.g(paramContext, "Application context can't be null");
    this.aCq = paramContext;
    this.aMH = paramContext;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/bf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */