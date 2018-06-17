package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.b.c.a;
import com.google.android.gms.ads.b.c.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ri
  extends c.a
{
  private String bcA;
  private final rf bcy;
  private final List<c.b> bcz = new ArrayList();
  
  public ri(rf paramrf)
  {
    this.bcy = paramrf;
    try
    {
      this.bcA = this.bcy.getText();
      try
      {
        Iterator localIterator = paramrf.tH().iterator();
        while (localIterator.hasNext())
        {
          paramrf = localIterator.next();
          if (!(paramrf instanceof IBinder)) {
            break label159;
          }
          paramrf = (IBinder)paramrf;
          if (paramrf == null) {
            break label159;
          }
          IInterface localIInterface = paramrf.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
          if (!(localIInterface instanceof rj)) {
            break label147;
          }
          paramrf = (rj)localIInterface;
          if (paramrf != null) {
            this.bcz.add(new rm(paramrf));
          }
        }
        return;
      }
      catch (RemoteException paramrf)
      {
        af.c("Error while obtaining image.", paramrf);
      }
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        af.c("Error while obtaining attribution text.", localRemoteException);
        this.bcA = "";
        continue;
        label147:
        paramrf = new rl(paramrf);
        continue;
        label159:
        paramrf = null;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */