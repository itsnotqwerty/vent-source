package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.f.b;
import com.google.android.gms.common.api.f.c;
import com.google.android.gms.common.internal.ae;

public final class cn
  implements f.b, f.c
{
  public final com.google.android.gms.common.api.a<?> aCz;
  private final boolean aEo;
  co aGS;
  
  public cn(com.google.android.gms.common.api.a<?> parama, boolean paramBoolean)
  {
    this.aCz = parama;
    this.aEo = paramBoolean;
  }
  
  private final void nT()
  {
    ae.g(this.aGS, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
  }
  
  public final void a(com.google.android.gms.common.a parama)
  {
    nT();
    this.aGS.a(parama, this.aCz, this.aEo);
  }
  
  public final void cG(int paramInt)
  {
    nT();
    this.aGS.cG(paramInt);
  }
  
  public final void h(Bundle paramBundle)
  {
    nT();
    this.aGS.h(paramBundle);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */