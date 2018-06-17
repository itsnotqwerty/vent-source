package com.google.android.gms.common.api.internal;

import android.os.Bundle;

final class bb
  implements Runnable
{
  bb(ba paramba, LifecycleCallback paramLifecycleCallback, String paramString) {}
  
  public final void run()
  {
    LifecycleCallback localLifecycleCallback;
    if (ba.a(this.aFO) > 0)
    {
      localLifecycleCallback = this.aFM;
      if (ba.b(this.aFO) == null) {
        break label108;
      }
    }
    label108:
    for (Bundle localBundle = ba.b(this.aFO).getBundle(this.aFN);; localBundle = null)
    {
      localLifecycleCallback.onCreate(localBundle);
      if (ba.a(this.aFO) >= 2) {
        this.aFM.onStart();
      }
      if (ba.a(this.aFO) >= 3) {
        this.aFM.onResume();
      }
      if (ba.a(this.aFO) >= 4) {
        this.aFM.onStop();
      }
      ba.a(this.aFO);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */