package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.c.f;
import com.google.android.gms.c.r;
import java.util.Map;

public final class bz
  extends x<Boolean>
{
  private be<?> aGs;
  
  public bz(be<?> parambe, f<Boolean> paramf)
  {
    super(paramf);
    this.aGs = parambe;
  }
  
  public final void b(aj<?> paramaj)
    throws RemoteException
  {
    paramaj = (bj)paramaj.aFp.remove(this.aGs);
    if (paramaj != null)
    {
      paramaj.aFZ.aFY.aFQ = null;
      return;
    }
    this.aEw.bdU.X(Boolean.valueOf(false));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */