package com.vent;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.text.Html;
import android.view.Menu;
import android.view.MenuInflater;
import android.widget.TextView;
import com.vent.d.c;
import com.vent.views.b;

public final class ActEmailConfirmed
  extends a
{
  public final boolean aR(boolean paramBoolean)
  {
    bb.ciA = 0L;
    bb.EB();
    Intent localIntent = new Intent(this, ActMain.class);
    localIntent.addFlags(603979776);
    localIntent.putExtra("id", (int)Math.round(Math.random() * 2.147483647E9D));
    startActivity(localIntent);
    return true;
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bTx = true;
    setContentView(2131427365);
    c.Fz();
    paramBundle = (Toolbar)findViewById(2131296949);
    paramBundle.setTitle(2131689558);
    setSupportActionBar(paramBundle);
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getData();
      if (paramBundle != null)
      {
        paramBundle = paramBundle.getPath();
        if ((paramBundle != null) && (paramBundle.startsWith("/"))) {
          paramBundle = paramBundle.substring(1);
        }
      }
    }
    for (;;)
    {
      if (paramBundle != null)
      {
        ((TextView)findViewById(2131296343)).setText(Html.fromHtml(String.format(getString(2131689780), new Object[] { paramBundle })));
        ax.aK(this);
        new b(this, null);
        return;
      }
      aR(false);
      return;
      continue;
      paramBundle = null;
    }
  }
  
  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492870, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, "EmailConfirmed");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActEmailConfirmed.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */