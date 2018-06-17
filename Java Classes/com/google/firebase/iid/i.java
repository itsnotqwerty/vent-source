package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;

final class i
  implements Runnable
{
  i(h paramh, Intent paramIntent) {}
  
  public final void run()
  {
    String str = this.aIC.getAction();
    Log.w("EnhancedIntentService", String.valueOf(str).length() + 61 + "Service took too long to process intent: " + str + " App may get closed.");
    this.bfh.finish();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */