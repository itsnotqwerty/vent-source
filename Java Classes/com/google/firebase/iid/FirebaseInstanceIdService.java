package com.google.firebase.iid;

import android.content.Intent;
import android.util.Log;
import java.util.Queue;

public class FirebaseInstanceIdService
  extends f
{
  public final void handleIntent(Intent paramIntent)
  {
    if ("com.google.firebase.iid.TOKEN_REFRESH".equals(paramIntent.getAction())) {
      onTokenRefresh();
    }
    String str;
    do
    {
      do
      {
        return;
        str = paramIntent.getStringExtra("CMD");
      } while (str == null);
      if (Log.isLoggable("FirebaseInstanceId", 3))
      {
        paramIntent = String.valueOf(paramIntent.getExtras());
        Log.d("FirebaseInstanceId", String.valueOf(str).length() + 21 + String.valueOf(paramIntent).length() + "Received command: " + str + " - " + paramIntent);
      }
      if (("RST".equals(str)) || ("RST_FULL".equals(str)))
      {
        FirebaseInstanceId.us().uA();
        return;
      }
    } while (!"SYNC".equals(str));
    paramIntent = FirebaseInstanceId.us();
    FirebaseInstanceId.beJ.db("");
    paramIntent.startSync();
  }
  
  public void onTokenRefresh() {}
  
  protected final Intent zzp(Intent paramIntent)
  {
    return (Intent)ac.uW().bfT.poll();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/FirebaseInstanceIdService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */