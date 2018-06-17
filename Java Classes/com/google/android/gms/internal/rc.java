package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.a.a;
import com.google.android.gms.a.c;

public final class rc
  extends rk
{
  private final Uri DD;
  private final Drawable bcr;
  private final double bcs;
  
  public rc(Drawable paramDrawable, Uri paramUri, double paramDouble)
  {
    this.bcr = paramDrawable;
    this.DD = paramUri;
    this.bcs = paramDouble;
  }
  
  public final Uri getUri()
    throws RemoteException
  {
    return this.DD;
  }
  
  public final double lB()
  {
    return this.bcs;
  }
  
  public final a tG()
    throws RemoteException
  {
    return c.Q(this.bcr);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */