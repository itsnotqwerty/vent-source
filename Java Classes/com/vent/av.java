package com.vent;

import android.os.Bundle;
import android.support.v4.app.j;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.vent.a.b;

public abstract class av<A extends l<T>, T extends b>
  extends aq<A, T>
{
  String ccJ = null;
  CharSequence cdb;
  
  av()
  {
    setArguments(new Bundle());
  }
  
  protected final int Dx()
  {
    return getArguments().getInt("noitemstext", 2131689683);
  }
  
  public final void em()
  {
    super.em();
    j localj = getActivity();
    if ((localj instanceof e)) {
      ((e)localj).em();
    }
  }
  
  protected final int getLayoutId()
  {
    return 2131427440;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.findViewById(2131296704).setVisibility(8);
    return paramLayoutInflater;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */