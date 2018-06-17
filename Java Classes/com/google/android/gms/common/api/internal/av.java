package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.i;
import java.util.Map;

public final class av<A extends cg<? extends i, a.c>>
  extends a
{
  private A aFG;
  
  public av(A paramA)
  {
    super(1);
    this.aFG = paramA;
  }
  
  public final void a(aj<?> paramaj)
    throws DeadObjectException
  {
    try
    {
      this.aFG.a(paramaj.aFl);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramaj = localRuntimeException.getClass().getSimpleName();
      String str = localRuntimeException.getLocalizedMessage();
      paramaj = new Status(10, String.valueOf(paramaj).length() + 2 + String.valueOf(str).length() + paramaj + ": " + str);
      this.aFG.g(paramaj);
    }
  }
  
  public final void a(e parame, boolean paramBoolean)
  {
    cg localcg = this.aFG;
    parame.aDQ.put(localcg, Boolean.valueOf(paramBoolean));
    localcg.a(new f(parame, localcg));
  }
  
  public final void c(Status paramStatus)
  {
    this.aFG.g(paramStatus);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */