package io.intercom.android.sdk.blocks;

import android.view.View;

public abstract interface ButtonClickListener
{
  public abstract void onButtonClicked(View paramView, String paramString);
  
  public abstract boolean shouldHandleClicks();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/ButtonClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */