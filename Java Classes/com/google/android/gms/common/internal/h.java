package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;

public abstract class h
{
  private static final Object aHo = new Object();
  private static h aHp;
  
  public static h A(Context paramContext)
  {
    synchronized (aHo)
    {
      if (aHp == null) {
        aHp = new j(paramContext.getApplicationContext());
      }
      return aHp;
    }
  }
  
  public final void a(String paramString1, String paramString2, int paramInt, ServiceConnection paramServiceConnection)
  {
    b(new i(paramString1, paramString2, paramInt), paramServiceConnection);
  }
  
  protected abstract boolean a(i parami, ServiceConnection paramServiceConnection);
  
  protected abstract void b(i parami, ServiceConnection paramServiceConnection);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */