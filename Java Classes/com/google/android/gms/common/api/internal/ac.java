package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.i;

public abstract interface ac
{
  public abstract void a(com.google.android.gms.common.a parama, com.google.android.gms.common.api.a<?> parama1, boolean paramBoolean);
  
  public abstract <A extends a.c, T extends cg<? extends i, A>> T b(T paramT);
  
  public abstract void begin();
  
  public abstract void cG(int paramInt);
  
  public abstract void connect();
  
  public abstract boolean disconnect();
  
  public abstract void h(Bundle paramBundle);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */