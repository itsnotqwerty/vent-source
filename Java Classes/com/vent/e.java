package com.vent;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.n;
import android.support.v7.app.a;
import android.support.v7.widget.Toolbar;
import android.view.View;
import com.vent.a.i;

@SuppressLint({"Registered"})
public abstract class e
  extends d<FrgFollowsList, h, i>
{
  final void Ck()
  {
    int i;
    if ((((FrgFollowsList)this.bWr).ceE != null) && (((h)((FrgFollowsList)this.bWr).ceE).cat))
    {
      i = 0;
      if (Build.VERSION.SDK_INT < 11) {
        break label61;
      }
    }
    label61:
    for (int j = 2131296863;; j = 2131296870)
    {
      findViewById(j).setVisibility(i);
      return;
      i = 8;
      break;
    }
  }
  
  public void em() {}
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427390);
    setSupportActionBar((Toolbar)findViewById(2131296949));
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(getIntent().getStringExtra("title"));
    this.bWr = ((FrgFollowsList)getSupportFragmentManager().Y(2131296527));
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!bb.r(this)) {
      return;
    }
    ax.v(this, getIntent().getStringExtra("gaTag"));
  }
  
  protected void onStart()
  {
    super.onStart();
    Ck();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */