package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.vent.d.c;
import com.vent.d.e;
import com.vent.views.b;

public final class ActAgree
  extends a
{
  private static int bTs;
  
  public static void a(Activity paramActivity, Bundle paramBundle)
  {
    if (bTs == 0)
    {
      bTs += 1;
      Intent localIntent = new Intent(paramActivity, ActAgree.class);
      localIntent.putExtra("gradientpos", paramBundle);
      paramActivity.startActivityForResult(localIntent, 13);
    }
  }
  
  public final void onBackPressed() {}
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bTx = true;
    setContentView(2131427358);
    c.Fz();
    paramBundle = (Toolbar)findViewById(2131296949);
    paramBundle.setTitle("");
    setSupportActionBar(paramBundle);
    new b(this, getIntent().getBundleExtra("gradientpos"));
    e.a(this, 2131296305, 2131689898);
  }
  
  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492866, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
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
    ax.aN(this);
    bb.ciE = true;
    bb.EB();
    setResult(-1);
    finish();
    return true;
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, ax.cfL);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActAgree.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */