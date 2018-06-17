package com.google.firebase.iid;

import android.util.Log;

final class k
  implements Runnable
{
  k(j paramj, h paramh) {}
  
  public final void run()
  {
    if (Log.isLoggable("EnhancedIntentService", 3)) {
      Log.d("EnhancedIntentService", "bg processing of the intent starting now");
    }
    j.a(this.bfk).handleIntent(this.bfj.intent);
    this.bfj.finish();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */