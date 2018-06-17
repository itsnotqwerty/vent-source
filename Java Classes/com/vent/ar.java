package com.vent;

import android.os.Bundle;
import android.support.v4.app.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.vent.d.e;

public final class ar
  extends FrgVentsList
{
  public static i DF()
  {
    ar localar = new ar();
    localar.a(null, "api/v2/my/feed.json", null, null, 0, 2131689684, 2131427441, 1, 0, false, 0L);
    return localar;
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    ((TextView)paramLayoutInflater.findViewById(16908308)).setText(e.a(getContext(), 2131689685, new int[] { 2131230869, 2131230868 }, true));
    return paramLayoutInflater;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */