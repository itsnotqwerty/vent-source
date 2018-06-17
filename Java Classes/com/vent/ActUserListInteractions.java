package com.vent;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.vent.a.b;
import com.vent.a.o;
import com.vent.a.z;

public final class ActUserListInteractions
  extends e
{
  private z bVh;
  private o bYN;
  
  public static void a(Activity paramActivity, z paramz, o paramo)
  {
    Intent localIntent = new Intent(paramActivity, ActUserListInteractions.class);
    if (b.a(paramo, o.cky.cjy)) {}
    for (String str = paramActivity.getString(2131689581);; str = String.format(paramActivity.getString(2131690106), new Object[] { paramo.getName() }))
    {
      localIntent.putExtra("title", str);
      localIntent.putExtra("vent", paramz);
      localIntent.putExtra("interactionType", paramo);
      localIntent.putExtra("gaTag", "InteractionUsers");
      paramActivity.startActivityForResult(localIntent, 5);
      return;
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.bVh = ((z)getIntent().getParcelableExtra("vent"));
    this.bYN = ((o)getIntent().getParcelableExtra("interactionType"));
    ((FrgFollowsList)this.bWr).a("interactions", null, null, 2131689680);
    ((FrgFollowsList)this.bWr).c(true, false, false);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ActUserListInteractions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */