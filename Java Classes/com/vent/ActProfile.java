package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.i;
import android.support.v4.app.n;
import android.support.v7.widget.Toolbar;
import com.vent.a.m;
import com.vent.a.q;
import com.vent.a.x;
import com.vent.d.d;
import java.util.HashMap;

public final class ActProfile
  extends a
{
  public static void a(Activity paramActivity, i parami, x paramx, HashMap<m, q> paramHashMap)
  {
    if ((bb.ceP != null) && (paramx != null) && (paramActivity != null))
    {
      if ((bb.c(paramx)) && ((paramActivity instanceof ActMain))) {
        ((ActMain)paramActivity).BG();
      }
    }
    else {
      return;
    }
    Intent localIntent = new Intent(paramActivity, ActProfile.class);
    localIntent.putExtra("user", paramx);
    d.a(localIntent, "invite_tiers", paramHashMap);
    if (parami != null)
    {
      parami.startActivityForResult(localIntent, 3);
      return;
    }
    paramActivity.startActivityForResult(localIntent, 3);
  }
  
  public final boolean aR(boolean paramBoolean)
  {
    if ((!paramBoolean) && (((FrgProfile)getSupportFragmentManager().Y(2131296527)).Bx())) {
      return true;
    }
    Intent localIntent = new Intent();
    FrgProfile localFrgProfile = (FrgProfile)getSupportFragmentManager().Y(2131296527);
    if (localFrgProfile != null)
    {
      localIntent.putExtra("cmd", "update");
      localIntent.putExtra("user", localFrgProfile.ceP);
    }
    localIntent.putExtra("backLongPress", paramBoolean);
    setResult(-1, localIntent);
    finish();
    return true;
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
      if ((paramInt2 == -1) && (paramIntent.getBooleanExtra("blocked", false)))
      {
        FrgProfile localFrgProfile = (FrgProfile)getSupportFragmentManager().Y(2131296527);
        localFrgProfile.bZY = 0L;
        localFrgProfile.bf(true);
      }
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2131427375);
    Object localObject = (Toolbar)findViewById(2131296949);
    ((Toolbar)localObject).setTitle("");
    setSupportActionBar((Toolbar)localObject);
    getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    if (paramBundle == null)
    {
      paramBundle = (x)getIntent().getParcelableExtra("user");
      localObject = d.a(getIntent(), "invite_tiers");
      ((FrgProfile)getSupportFragmentManager().Y(2131296527)).a(true, paramBundle, 0L, (HashMap)localObject);
    }
  }
  
  protected final void onResume()
  {
    super.onResume();
    if (!bb.r(this)) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActProfile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */