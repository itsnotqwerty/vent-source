package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v7.app.a;
import android.support.v7.widget.Toolbar;
import android.widget.SearchView;
import com.vent.d.c;

public final class ActGroupsJoin
  extends d
{
  boolean bWp;
  
  public static void a(Activity paramActivity, i parami)
  {
    Intent localIntent = new Intent(paramActivity, ActGroupsJoin.class);
    if (parami != null)
    {
      parami.startActivityForResult(localIntent, 38);
      return;
    }
    paramActivity.startActivityForResult(localIntent, 38);
  }
  
  public final boolean aR(boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    if (this.bWp) {}
    for (String str = "refresh";; str = "")
    {
      localIntent.putExtra("cmd", str);
      localIntent.putExtra("didJoinLeave", this.bWp);
      localIntent.putExtra("backLongPress", paramBoolean);
      setResult(-1, localIntent);
      finish();
      return true;
    }
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427371);
    setSupportActionBar((Toolbar)findViewById(2131296949));
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(2131689626);
    this.bWr = ((ak)getSupportFragmentManager().Y(2131296527));
    this.bWr.c(true, false, false);
    if (paramBundle != null) {
      this.bWp = paramBundle.getBoolean("changed");
    }
    if (Build.VERSION.SDK_INT >= 11) {
      ((SearchView)findViewById(2131296863)).setIconified(false);
    }
  }
  
  protected final void onPause()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      ((SearchView)findViewById(2131296863)).clearFocus();
    }
    c.t(this);
    super.onPause();
  }
  
  protected final void onResume()
  {
    super.onResume();
    if (!bb.r(this)) {
      return;
    }
    ax.v(this, "JoinGroup");
  }
  
  protected final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("changed", this.bWp);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActGroupsJoin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */