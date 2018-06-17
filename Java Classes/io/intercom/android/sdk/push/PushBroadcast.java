package io.intercom.android.sdk.push;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

class PushBroadcast
{
  private final Uri pushData;
  private final String pushOnlyId;
  private final Twig twig = LumberMill.getLogger();
  
  PushBroadcast()
  {
    this.pushData = Uri.EMPTY;
    this.pushOnlyId = "";
  }
  
  PushBroadcast(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("push_only_convo_id");
    if (TextUtils.isEmpty(str)) {
      this.twig.internal("The uri had no push only id");
    }
    for (this.pushOnlyId = "";; this.pushOnlyId = str)
    {
      paramIntent = paramIntent.getData();
      if (paramIntent != null) {
        break;
      }
      this.twig.internal("The uri had no push data");
      this.pushData = Uri.EMPTY;
      return;
    }
    this.pushData = paramIntent;
  }
  
  Uri getPushData()
  {
    return this.pushData;
  }
  
  String getPushOnlyId()
  {
    return this.pushOnlyId;
  }
  
  boolean hasPushOnlyId()
  {
    return !TextUtils.isEmpty(this.pushOnlyId);
  }
  
  boolean isEmpty()
  {
    return (Uri.EMPTY.equals(this.pushData)) && (this.pushOnlyId.isEmpty());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/push/PushBroadcast.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */