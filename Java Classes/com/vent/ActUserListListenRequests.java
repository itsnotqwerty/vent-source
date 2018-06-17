package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public final class ActUserListListenRequests
  extends e
{
  public static void l(Activity paramActivity)
  {
    Intent localIntent = new Intent(paramActivity, ActUserListListenRequests.class);
    localIntent.putExtra("title", paramActivity.getString(2131689636));
    localIntent.putExtra("gaTag", "ListenRequests");
    paramActivity.startActivityForResult(localIntent, 21);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (((FrgFollowsList)this.bWr).ceE != null)
    {
      ((h)((FrgFollowsList)this.bWr).ceE).car = false;
      ((h)((FrgFollowsList)this.bWr).ceE).cas = true;
      ((h)((FrgFollowsList)this.bWr).ceE).notifyDataSetChanged();
    }
    ((FrgFollowsList)this.bWr).a("listen_requests", "follow_requester_id", "follow_requesters", 2131689683);
    ((FrgFollowsList)this.bWr).c(true, false, false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActUserListListenRequests.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */