package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.c.f;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;

abstract class x<T>
  extends a
{
  protected final f<T> aEw;
  
  public x(f<T> paramf)
  {
    super(4);
    this.aEw = paramf;
  }
  
  public final void a(aj<?> paramaj)
    throws DeadObjectException
  {
    try
    {
      b(paramaj);
      return;
    }
    catch (DeadObjectException paramaj)
    {
      c(a.a(paramaj));
      throw paramaj;
    }
    catch (RemoteException paramaj)
    {
      c(a.a(paramaj));
      return;
    }
    catch (RuntimeException paramaj)
    {
      b(paramaj);
    }
  }
  
  public void a(e parame, boolean paramBoolean) {}
  
  protected abstract void b(aj<?> paramaj)
    throws RemoteException;
  
  public void b(RuntimeException paramRuntimeException)
  {
    this.aEw.f(paramRuntimeException);
  }
  
  public void c(Status paramStatus)
  {
    this.aEw.f(new b(paramStatus));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */