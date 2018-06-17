package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

final class e
  extends BroadcastReceiver
{
  d bfa;
  
  public e(d paramd)
  {
    this.bfa = paramd;
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.bfa == null) {}
    while (!this.bfa.uJ()) {
      return;
    }
    if (FirebaseInstanceId.uy()) {
      Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
    }
    FirebaseInstanceId.a(this.bfa, 0L);
    this.bfa.getContext().unregisterReceiver(this);
    this.bfa = null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */