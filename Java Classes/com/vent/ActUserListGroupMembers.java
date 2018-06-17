package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.vent.a.k;

public final class ActUserListGroupMembers
  extends e
{
  k bYM;
  
  public static void a(Activity paramActivity, k paramk)
  {
    Intent localIntent = new Intent(paramActivity, ActUserListGroupMembers.class);
    localIntent.putExtra("title", paramActivity.getString(2131689648));
    localIntent.putExtra("group", paramk);
    paramActivity.startActivityForResult(localIntent, 39);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bYM = ((k)getIntent().getParcelableExtra("group"));
    ((FrgFollowsList)this.bWr).a("group_follows", null, null, 2131689596);
    ((FrgFollowsList)this.bWr).c(true, false, false);
  }
  
  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492874, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    boolean bool1;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool1 = super.onOptionsItemSelected(paramMenuItem);
      return bool1;
    }
    if (((FrgFollowsList)this.bWr).ceE != null)
    {
      if (((h)((FrgFollowsList)this.bWr).ceE).cat) {
        break label153;
      }
      paramMenuItem = (h)((FrgFollowsList)this.bWr).ceE;
      bool1 = bool3;
      if (this.bYM != null)
      {
        bool1 = bool3;
        if (this.bYM.EY()) {
          bool1 = true;
        }
      }
    }
    label153:
    for (paramMenuItem.cat = bool1;; ((h)((FrgFollowsList)this.bWr).ceE).cat = false)
    {
      invalidateOptionsMenu();
      Ck();
      bool1 = bool2;
      if (((FrgFollowsList)this.bWr).ceE == null) {
        break;
      }
      ((h)((FrgFollowsList)this.bWr).ceE).notifyDataSetChanged();
      return true;
    }
  }
  
  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool = true;
    int i;
    MenuItem localMenuItem;
    if ((this.bYM != null) && (this.bYM.EY()))
    {
      i = 1;
      localMenuItem = paramMenu.findItem(2131296303);
      if ((i == 0) || (((FrgFollowsList)this.bWr).ceE == null) || (((h)((FrgFollowsList)this.bWr).ceE).cat)) {
        break label87;
      }
    }
    for (;;)
    {
      localMenuItem.setVisible(bool);
      return super.onPrepareOptionsMenu(paramMenu);
      i = 0;
      break;
      label87:
      bool = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActUserListGroupMembers.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */