package com.vent;

import com.google.firebase.iid.FirebaseInstanceIdService;
import com.layer.sdk.services.LayerFcmInstanceIdService;
import com.vent.d.c;

public final class MyFirebaseInstanceIDService
  extends FirebaseInstanceIdService
{
  public final void onTokenRefresh()
  {
    super.onTokenRefresh();
    if (!(getApplication() instanceof MyApplication))
    {
      c.h(1, "Android is buggy (4)");
      System.exit(0);
      return;
    }
    try
    {
      LayerFcmInstanceIdService.handleTokenRefresh(this);
      if (bb.ciH != null)
      {
        bb.ciI = 0L;
        bb.chP = true;
        bb.EA();
      }
      bb.ee(null);
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/MyFirebaseInstanceIDService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */