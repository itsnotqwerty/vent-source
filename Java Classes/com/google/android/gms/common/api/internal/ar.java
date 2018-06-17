package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.a.a;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.i;

public final class ar<O extends a.a>
  extends h
{
  private final e<O> aFA;
  
  public ar(e<O> parame)
  {
    super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
    this.aFA = parame;
  }
  
  public final void a(bt parambt) {}
  
  public final <A extends a.c, T extends cg<? extends i, A>> T b(T paramT)
  {
    return this.aFA.a(paramT);
  }
  
  public final void b(bt parambt) {}
  
  public final Looper getLooper()
  {
    return this.aFA.aCC;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */