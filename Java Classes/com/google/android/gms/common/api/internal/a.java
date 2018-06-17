package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Status;

public abstract class a
{
  private int aDy;
  
  public a(int paramInt)
  {
    this.aDy = paramInt;
  }
  
  public abstract void a(aj<?> paramaj)
    throws DeadObjectException;
  
  public abstract void a(e parame, boolean paramBoolean);
  
  public abstract void c(Status paramStatus);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */