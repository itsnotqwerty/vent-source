package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.aj;

public abstract class cg<R extends i, A extends a.c>
  extends BasePendingResult<R>
  implements ch<R>
{
  final a<?> aCz;
  final a.d<A> aGJ;
  
  protected cg(a<?> parama, f paramf)
  {
    super((f)ae.g(paramf, "GoogleApiClient must not be null"));
    ae.g(parama, "Api must not be null");
    this.aGJ = parama.mU();
    this.aCz = parama;
  }
  
  private final void b(RemoteException paramRemoteException)
  {
    g(new Status(8, paramRemoteException.getLocalizedMessage(), null));
  }
  
  public final void a(A paramA)
    throws DeadObjectException
  {
    Object localObject = paramA;
    if ((paramA instanceof aj)) {
      localObject = aj.ol();
    }
    try
    {
      b((a.c)localObject);
      return;
    }
    catch (DeadObjectException paramA)
    {
      b(paramA);
      throw paramA;
    }
    catch (RemoteException paramA)
    {
      b(paramA);
    }
  }
  
  public abstract void b(A paramA)
    throws RemoteException;
  
  public final void g(Status paramStatus)
  {
    if (!paramStatus.mQ()) {}
    for (boolean bool = true;; bool = false)
    {
      ae.b(bool, "Failed result must not be success");
      b(b(paramStatus));
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/cg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */