package com.firebase.jobdispatcher;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

@TargetApi(21)
final class j
  extends Handler
{
  private final GooglePlayReceiver axw;
  
  public j(Looper paramLooper, GooglePlayReceiver paramGooglePlayReceiver)
  {
    super(paramLooper);
    this.axw = paramGooglePlayReceiver;
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage == null) {}
    do
    {
      Object localObject;
      String str;
      do
      {
        return;
        localObject = (AppOpsManager)this.axw.getApplicationContext().getSystemService("appops");
        try
        {
          ((AppOpsManager)localObject).checkPackage(paramMessage.sendingUid, "com.google.android.gms");
          switch (paramMessage.what)
          {
          case 4: 
          case 3: 
          default: 
            Log.e("FJD.GooglePlayReceiver", "Unrecognized message received: " + paramMessage);
            return;
          }
        }
        catch (SecurityException paramMessage)
        {
          Log.e("FJD.GooglePlayReceiver", "Message was not sent from GCM.");
          return;
        }
        localObject = paramMessage.getData();
        paramMessage = paramMessage.replyTo;
        str = ((Bundle)localObject).getString("tag");
        if ((paramMessage != null) && (str != null)) {
          break;
        }
      } while (!Log.isLoggable("FJD.GooglePlayReceiver", 3));
      Log.d("FJD.GooglePlayReceiver", "Invalid start execution message.");
      return;
      paramMessage = GooglePlayReceiver.a(new k(paramMessage, str), (Bundle)localObject);
      this.axw.kH().a(paramMessage);
      return;
      paramMessage = GooglePlayReceiver.kK().g(paramMessage.getData());
      if (paramMessage != null) {
        break;
      }
    } while (!Log.isLoggable("FJD.GooglePlayReceiver", 3));
    Log.d("FJD.GooglePlayReceiver", "Invalid stop execution message.");
    return;
    d.a(paramMessage.kT(), true);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */