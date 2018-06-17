package com.google.android.gms.a;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ms;

public abstract interface a
  extends IInterface
{
  public static class a
    extends ms
    implements a
  {
    public a()
    {
      attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
    }
    
    public static a j(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
      if ((localIInterface instanceof a)) {
        return (a)localIInterface;
      }
      return new b(paramIBinder);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */