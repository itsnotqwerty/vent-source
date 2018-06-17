package com.google.android.gms.common.api.internal;

import android.os.Bundle;

final class bs
  implements Runnable
{
  bs(br parambr, LifecycleCallback paramLifecycleCallback, String paramString) {}
  
  public final void run()
  {
    LifecycleCallback localLifecycleCallback;
    if (br.a(this.aGd) > 0)
    {
      localLifecycleCallback = this.aFM;
      if (br.b(this.aGd) == null) {
        break label108;
      }
    }
    label108:
    for (Bundle localBundle = br.b(this.aGd).getBundle(this.aFN);; localBundle = null)
    {
      localLifecycleCallback.onCreate(localBundle);
      if (br.a(this.aGd) >= 2) {
        this.aFM.onStart();
      }
      if (br.a(this.aGd) >= 3) {
        this.aFM.onResume();
      }
      if (br.a(this.aGd) >= 4) {
        this.aFM.onStop();
      }
      br.a(this.aGd);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/bs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */