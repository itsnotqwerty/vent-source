package com.intercom.composer.b;

import android.os.Bundle;
import android.support.v4.app.i;
import android.view.View;

public abstract class c
  extends i
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
  
  public abstract void onInputDeselected();
  
  public abstract void onInputReselected();
  
  public abstract void onInputSelected();
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    passDataOnViewCreated(getArguments());
  }
  
  public void passData(Bundle paramBundle)
  {
    if (getView() != null)
    {
      passDataOnViewCreated(paramBundle);
      return;
    }
    setArguments(paramBundle);
  }
  
  public abstract void passDataOnViewCreated(Bundle paramBundle);
  
  public void setArguments(Bundle paramBundle)
  {
    Bundle localBundle2 = getArguments();
    Bundle localBundle1 = localBundle2;
    if (localBundle2 == null) {
      localBundle1 = new Bundle();
    }
    localBundle1.putAll(paramBundle);
    super.setArguments(localBundle1);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */