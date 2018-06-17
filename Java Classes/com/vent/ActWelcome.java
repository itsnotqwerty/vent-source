package com.vent;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.vent.a.x;
import com.vent.d.c;
import com.vent.d.e;
import com.vent.views.b;

public final class ActWelcome
  extends a
  implements View.OnClickListener
{
  private static int bTs;
  private b bTI;
  private boolean bZG;
  
  public static void a(Activity paramActivity, Bundle paramBundle, String paramString, x paramx)
  {
    if (bTs == 0)
    {
      bTs += 1;
      Intent localIntent = new Intent(paramActivity, ActWelcome.class);
      localIntent.putExtra("gradientpos", paramBundle);
      localIntent.putExtra("inviteId", paramString);
      localIntent.putExtra("inviter", paramx);
      paramActivity.startActivityForResult(localIntent, 1);
    }
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    }
    do
    {
      return;
      if (paramInt2 == -1)
      {
        setResult(-1);
        finish();
        return;
      }
    } while (paramIntent == null);
    if (this.bTI != null) {
      this.bTI.FD();
    }
    this.bTI = new b(this, paramIntent.getBundleExtra("gradientpos"));
  }
  
  @SuppressLint({"ApplySharedPref"})
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131296840: 
      ActRegister1.a(this, this.bTI.FC(), null, null);
      return;
    }
    ActSignIn.a(this, this.bTI.FC());
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bTx = true;
    setContentView(2131427394);
    c.Fz();
    Toolbar localToolbar = (Toolbar)findViewById(2131296949);
    localToolbar.setTitle("");
    setSupportActionBar(localToolbar);
    getSupportActionBar().setDisplayHomeAsUpEnabled(false);
    findViewById(2131296840).setOnClickListener(this);
    findViewById(2131296897).setOnClickListener(this);
    e.bL(this);
    ((TextView)findViewById(2131296988)).setTypeface(e.cmV, 0);
    this.bTI = new b(this, getIntent().getBundleExtra("gradientpos"));
    findViewById(2131296976).setVisibility(8);
    findViewById(2131296886).setVisibility(8);
    if (paramBundle != null) {
      this.bZG = paramBundle.getBoolean("checkedInviter");
    }
  }
  
  protected final void onDestroy()
  {
    bTs -= 1;
    super.onDestroy();
  }
  
  public final boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    finish();
    return true;
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, ax.cfP);
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("checkedInviter", this.bZG);
  }
  
  protected final void onStart()
  {
    super.onStart();
    if (!this.bZG)
    {
      this.bZG = true;
      String str = getIntent().getStringExtra("inviteId");
      if (str != null) {
        ActRegister1.a(this, this.bTI.FC(), str, (x)getIntent().getParcelableExtra("inviter"));
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActWelcome.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */