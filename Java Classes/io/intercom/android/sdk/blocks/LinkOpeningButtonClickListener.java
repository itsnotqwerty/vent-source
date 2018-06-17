package io.intercom.android.sdk.blocks;

import android.view.View;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.utilities.LinkOpener;

public class LinkOpeningButtonClickListener
  implements ButtonClickListener
{
  private final Api api;
  
  public LinkOpeningButtonClickListener(Api paramApi)
  {
    this.api = paramApi;
  }
  
  public void onButtonClicked(View paramView, String paramString)
  {
    LinkOpener.handleUrl(paramString, paramView.getContext(), this.api);
  }
  
  public boolean shouldHandleClicks()
  {
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/LinkOpeningButtonClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */