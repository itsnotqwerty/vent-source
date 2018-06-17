package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.b.c.b;

public final class rm
  extends c.b
{
  private final Drawable Cb;
  private final Uri DD;
  private final rj bcB;
  private final double bcs;
  
  public rm(rj paramrj)
  {
    this.bcB = paramrj;
    try
    {
      paramrj = this.bcB.tG();
      if (paramrj == null) {
        break label83;
      }
      paramrj = (Drawable)c.a(paramrj);
    }
    catch (RemoteException paramrj)
    {
      try
      {
        paramrj = this.bcB.getUri();
        this.DD = paramrj;
        double d1 = 1.0D;
        try
        {
          double d2 = this.bcB.lB();
          d1 = d2;
        }
        catch (RemoteException paramrj)
        {
          for (;;)
          {
            af.c("Failed to get scale.", paramrj);
          }
        }
        this.bcs = d1;
        return;
        paramrj = paramrj;
        af.c("Failed to get drawable.", paramrj);
        paramrj = null;
      }
      catch (RemoteException paramrj)
      {
        for (;;)
        {
          af.c("Failed to get uri.", paramrj);
          paramrj = (rj)localObject;
        }
      }
    }
    this.Cb = paramrj;
  }
  
  public final Drawable getDrawable()
  {
    return this.Cb;
  }
  
  public final Uri getUri()
  {
    return this.DD;
  }
  
  public final double lB()
  {
    return this.bcs;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/rm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */