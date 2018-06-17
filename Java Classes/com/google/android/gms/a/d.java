package com.google.android.gms.a;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.y;

public abstract class d<T>
{
  private final String aKk;
  private T aKl;
  
  protected d(String paramString)
  {
    this.aKk = paramString;
  }
  
  protected final T R(Context paramContext)
    throws e
  {
    if (this.aKl == null)
    {
      ae.E(paramContext);
      paramContext = y.P(paramContext);
      if (paramContext == null) {
        throw new e("Could not get remote context.");
      }
      paramContext = paramContext.getClassLoader();
    }
    try
    {
      this.aKl = k((IBinder)paramContext.loadClass(this.aKk).newInstance());
      return (T)this.aKl;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new e("Could not load creator class.", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new e("Could not instantiate creator.", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new e("Could not access creator.", paramContext);
    }
  }
  
  public abstract T k(IBinder paramIBinder);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */