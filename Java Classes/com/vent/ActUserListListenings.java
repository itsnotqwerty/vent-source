package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.vent.a.x;

public final class ActUserListListenings
  extends e
{
  private x bXE;
  
  public static void a(Activity paramActivity, x paramx)
  {
    Intent localIntent = new Intent(paramActivity, ActUserListListenings.class);
    localIntent.putExtra("title", paramActivity.getString(2131689640));
    localIntent.putExtra("user", paramx);
    localIntent.putExtra("gaTag", "Listening");
    paramActivity.startActivityForResult(localIntent, 15);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    this.bXE = ((x)getIntent().getParcelableExtra("user"));
    super.onCreate(paramBundle);
    boolean bool = bb.c(this.bXE);
    paramBundle = (FrgFollowsList)this.bWr;
    if (bool) {}
    for (int i = 2131689849;; i = 2131689785)
    {
      paramBundle.a("follows", null, null, i);
      ((FrgFollowsList)this.bWr).c(true, false, false);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActUserListListenings.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */