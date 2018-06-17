package com.vent;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.IntentFilter;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.service.chooser.ChooserTarget;
import android.service.chooser.ChooserTargetService;
import com.vent.a.m;
import com.vent.a.y;
import com.vent.a.z;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"NewApi"})
public final class MyChooserTargetService
  extends ChooserTargetService
{
  public final List<ChooserTarget> onGetChooserTargets(ComponentName paramComponentName, IntentFilter paramIntentFilter)
  {
    paramComponentName = new ArrayList();
    if ((paramIntentFilter == null) || (paramIntentFilter.hasDataType("text/plain")))
    {
      paramIntentFilter = new ComponentName(getPackageName(), ActEmotions.class.getCanonicalName());
      Bundle localBundle;
      if (bb.ceP != null)
      {
        localBundle = new Bundle();
        localBundle.putString("vent_privacy", z.eN(bb.ceP.ckW));
        paramComponentName.add(new ChooserTarget(getString(z.eO(bb.ceP.ckW)), Icon.createWithResource(this, 2131230904), 1.0F, paramIntentFilter, localBundle));
      }
      if (bb.ciK != null)
      {
        localBundle = new Bundle();
        localBundle.putString("group_id", bb.ciK.toString());
        localBundle.putString("group_name", bb.ciJ);
        paramComponentName.add(new ChooserTarget(bb.ciJ, Icon.createWithResource(this, 2131230904), 0.5F, paramIntentFilter, localBundle));
      }
    }
    return paramComponentName;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/MyChooserTargetService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */