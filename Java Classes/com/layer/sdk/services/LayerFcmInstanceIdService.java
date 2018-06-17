package com.layer.sdk.services;

import android.content.Context;
import android.net.Uri;
import com.google.firebase.iid.FirebaseInstanceIdService;
import com.layer.b.a.a.a;
import com.layer.sdk.LayerClient.Options;
import com.layer.sdk.internal.a;
import com.layer.sdk.internal.lsdke.h;
import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;

public class LayerFcmInstanceIdService
  extends FirebaseInstanceIdService
{
  private static final k.a a = k.a(LayerFcmInstanceIdService.class);
  
  public static void handleTokenRefresh(Context paramContext)
  {
    a locala = a.b();
    int i;
    Object localObject;
    if (locala != null)
    {
      i = 1;
      localObject = locala;
      if (i != 0) {
        break label126;
      }
      localObject = new h(paramContext);
      Uri localUri = ((h)localObject).c();
      a.a locala1 = ((h)localObject).b();
      localObject = locala;
      if (localUri == null) {
        break label126;
      }
      localObject = locala;
      if (locala1 == null) {
        break label126;
      }
      localObject = locala;
      if (locala1.a == null) {
        break label126;
      }
      localObject = locala;
      if (locala1.b == null) {
        break label126;
      }
      paramContext = (a)a.a(paramContext, localUri, new LayerClient.Options(paramContext.getApplicationContext()));
      localObject = paramContext;
      if (paramContext.isAuthenticated()) {
        break label126;
      }
      if (k.a(2)) {
        k.a(a, "Received new FCM token but the LayerClient was not authenticated.");
      }
      paramContext.close();
    }
    label126:
    do
    {
      return;
      i = 0;
      break;
      if (localObject != null)
      {
        if (k.a(2)) {
          k.a(a, "Received new FCM token, updating LayerClient: " + localObject);
        }
        ((a)localObject).d(new a((a)localObject));
        return;
      }
    } while (!k.a(2));
    k.a(a, "Received new FCM token but a LayerClient was unable to be obtained.");
  }
  
  public void onTokenRefresh()
  {
    handleTokenRefresh(this);
  }
  
  private static final class a
    implements Runnable
  {
    private final a a;
    
    a(a parama)
    {
      this.a = parama;
    }
    
    public final void run()
    {
      this.a.l();
      this.a.close();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/services/LayerFcmInstanceIdService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */