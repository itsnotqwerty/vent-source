package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.vent.d.c;

public final class ActAbout
  extends a
  implements View.OnClickListener
{
  private int bTj;
  
  public static void l(Activity paramActivity)
  {
    paramActivity.startActivityForResult(new Intent(paramActivity, ActAbout.class), 36);
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131296317: 
      int i;
      do
      {
        return;
        if (this.bTj >= 7) {
          break;
        }
        i = this.bTj + 1;
        this.bTj = i;
      } while (i != 7);
      Toast.makeText(this, "You have now enabled the Advanced Settings!", 0).show();
      bb.chS = true;
      bb.EB();
      return;
      Toast.makeText(this, "Advanced Settings has already been enabled!", 0).show();
      return;
    case 2131296809: 
      c.x(this, getString(2131690092));
      return;
    case 2131296959: 
      c.x(this, "http://www.vent.co/tos");
      return;
    case 2131296366: 
      c.x(this, "http://www.vent.co/cg");
      return;
    case 2131296513: 
      c.x(this, "http://help.vent.co/support/home");
      return;
    case 2131296845: 
      c.x(this, "http://help.vent.co/support/solutions/folders/42000014808");
      return;
    }
    t.ccD = false;
    t.aE(this);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427355);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(2131689473);
    if (bb.chS) {}
    for (int i = 7;; i = 0)
    {
      this.bTj = i;
      paramBundle = (TextView)findViewById(2131296317);
      paramBundle.setText("v" + MyApplication.cgF);
      paramBundle.setOnClickListener(this);
      findViewById(2131296809).setOnClickListener(this);
      findViewById(2131296959).setOnClickListener(this);
      findViewById(2131296366).setOnClickListener(this);
      findViewById(2131296513).setOnClickListener(this);
      findViewById(2131296845).setOnClickListener(this);
      if (!t.ccE) {
        break;
      }
      findViewById(2131296846).setOnClickListener(this);
      return;
    }
    findViewById(2131296846).setVisibility(8);
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, "About");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActAbout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */