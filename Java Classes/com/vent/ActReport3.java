package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.vent.a.m;
import com.vent.a.x;
import com.vent.d.f;
import com.vent.d.f.a;

public final class ActReport3
  extends a
  implements View.OnClickListener
{
  x bXE;
  
  public static void a(Activity paramActivity, x paramx)
  {
    Intent localIntent = new Intent(paramActivity, ActReport3.class);
    localIntent.putExtra("user", paramx);
    paramActivity.startActivityForResult(localIntent, 35);
  }
  
  final void Cg()
  {
    Button localButton = (Button)findViewById(2131296333);
    if (!this.bXE.Fk()) {}
    for (int i = 2131689862;; i = 2131689800)
    {
      localButton.setText(String.format(getString(i), new Object[] { this.bXE.username }));
      return;
    }
  }
  
  public final boolean aR(boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    if (this.bXE != null) {}
    for (Boolean localBoolean = Boolean.valueOf(this.bXE.Fk());; localBoolean = null)
    {
      localIntent.putExtra("blocked", localBoolean);
      localIntent.putExtra("backLongPress", paramBoolean);
      setResult(-1, localIntent);
      finish();
      return true;
    }
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131296333: 
      if (!this.bXE.Fk())
      {
        f.e(this, this.bXE, new f.a()
        {
          public final void run()
          {
            ActReport3.this.bXE = this.ceP;
            ActReport3.this.Cg();
          }
        });
        return;
      }
      f.f(this, this.bXE, new f.a()
      {
        public final void run()
        {
          ActReport3.this.bXE = this.ceP;
          ActReport3.this.Cg();
        }
      });
      return;
    }
    paramView = new x();
    paramView.username = "kokobot";
    paramView.cjy = new m("a9eb26e5-0d22-4b09-be79-2394e44e00b5");
    paramView.flags = 4;
    ActProfile.a(this, null, paramView, null);
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427381);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    getSupportActionBar().setTitle(2131689725);
    this.bXE = ((x)getIntent().getParcelableExtra("user"));
    label161:
    int j;
    if ((this.bXE != null) && (!this.bXE.Fk()))
    {
      i = 1;
      if (i == 0) {
        break label222;
      }
      ((TextView)findViewById(2131296340)).setText(String.format(getString(2131689498), new Object[] { this.bXE.username }));
      ((TextView)findViewById(2131296335)).setText(String.format(getString(2131689726), new Object[] { this.bXE.username }));
      Cg();
      findViewById(2131296333).setOnClickListener(this);
      findViewById(2131296334).setVisibility(0);
      findViewById(2131296672).setVisibility(8);
      paramBundle = (TextView)findViewById(2131296956);
      if (i == 0) {
        break label236;
      }
      j = 2131689730;
      label189:
      paramBundle.setText(j);
      paramBundle = (TextView)findViewById(2131296955);
      if (i == 0) {
        break label242;
      }
    }
    label222:
    label236:
    label242:
    for (int i = 2131689729;; i = 2131689728)
    {
      paramBundle.setText(i);
      return;
      i = 0;
      break;
      findViewById(2131296334).setVisibility(8);
      break label161;
      j = 2131689727;
      break label189;
    }
  }
  
  protected final void onResume()
  {
    super.onResume();
    ax.v(this, "Report3");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActReport3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */