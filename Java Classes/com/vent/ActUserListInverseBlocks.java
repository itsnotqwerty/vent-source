package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public final class ActUserListInverseBlocks
  extends e
{
  public static void o(Activity paramActivity)
  {
    Intent localIntent = new Intent(paramActivity, ActUserListInverseBlocks.class);
    localIntent.putExtra("title", paramActivity.getString(2131689499));
    localIntent.putExtra("gaTag", "BlockedUsers");
    paramActivity.startActivityForResult(localIntent, 14);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ((h)((FrgFollowsList)this.bWr).ceE).car = false;
    ((h)((FrgFollowsList)this.bWr).ceE).notifyDataSetChanged();
    ((FrgFollowsList)this.bWr).a("inverse_blockings", null, null, 2131689850);
    ((FrgFollowsList)this.bWr).c(true, false, false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActUserListInverseBlocks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */