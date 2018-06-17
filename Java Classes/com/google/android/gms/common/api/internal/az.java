package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;

public abstract interface az
{
  public abstract void a(String paramString, LifecycleCallback paramLifecycleCallback);
  
  public abstract <T extends LifecycleCallback> T c(String paramString, Class<T> paramClass);
  
  public abstract Activity nP();
  
  public abstract void startActivityForResult(Intent paramIntent, int paramInt);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */