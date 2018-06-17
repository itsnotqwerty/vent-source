package com.vent;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import com.vent.a.h;
import com.vent.a.x;
import com.vent.d.c;
import com.vent.d.e;

public final class ActGiftDone
  extends a
{
  public static void a(a parama, h paramh, x paramx)
  {
    if (bb.ciO == null) {
      return;
    }
    Intent localIntent = new Intent(parama, ActGiftDone.class);
    localIntent.putExtra("ec", paramh);
    localIntent.putExtra("user_gift", paramx);
    parama.startActivityForResult(localIntent, 46);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427369);
    paramBundle = (Toolbar)findViewById(2131296949);
    paramBundle.setTitle("");
    setSupportActionBar(paramBundle);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    paramBundle = (h)getIntent().getParcelableExtra("ec");
    x localx = (x)getIntent().getParcelableExtra("user_gift");
    if ((paramBundle == null) || (localx == null))
    {
      finish();
      return;
    }
    ((TextView)findViewById(2131296343)).setText(e.s(Html.fromHtml(getString(2131690108, new Object[] { paramBundle.cjP, localx.username }))));
    int i = paramBundle.bB(this);
    findViewById(2131296682).setBackgroundColor(i);
    c.a(this, paramBundle);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActGiftDone.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */