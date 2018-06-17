package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.View.OnClickListener;
import com.vent.d.e;

public final class ActVentList
  extends a
  implements View.OnClickListener
{
  public static void a(Activity paramActivity, i parami, CharSequence paramCharSequence, String paramString1, int paramInt, String paramString2)
  {
    Intent localIntent = new Intent(paramActivity, ActVentList.class);
    localIntent.putExtra("desc", null);
    localIntent.putExtra("title", paramCharSequence);
    localIntent.putExtra("url", paramString1);
    localIntent.putExtra("pagemode", paramInt);
    localIntent.putExtra("gaTag", paramString2);
    if (parami != null) {
      parami.startActivityForResult(localIntent, 20);
    }
    while (paramActivity == null) {
      return;
    }
    paramActivity.startActivityForResult(localIntent, 20);
  }
  
  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1)
      {
        i locali = getSupportFragmentManager().Y(2131296527);
        if (locali != null) {
          ((am)locali).Bg();
        }
      }
    }
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    ((am)getSupportFragmentManager().Y(2131296527)).By();
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427392);
    paramBundle = (Toolbar)findViewById(2131296949);
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(e.s(getIntent().getCharSequenceExtra("title")));
    FrgVentsList localFrgVentsList = (FrgVentsList)getSupportFragmentManager().Y(2131296527);
    int i = getIntent().getIntExtra("pagemode", 0);
    localFrgVentsList.a(getIntent().getStringExtra("desc"), getIntent().getStringExtra("url"), null, null, i, 2131689684, 2131427436, 0, 4, false, 0L);
    localFrgVentsList.f(true, false);
    paramBundle.setOnClickListener(this);
  }
  
  protected final void onResume()
  {
    super.onResume();
    if (!bb.r(this)) {
      return;
    }
    ax.v(this, getIntent().getStringExtra("gaTag"));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActVentList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */