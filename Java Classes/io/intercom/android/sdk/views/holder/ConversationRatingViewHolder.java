package io.intercom.android.sdk.views.holder;

import android.view.View;
import android.view.ViewGroup;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Part;

public class ConversationRatingViewHolder
  extends BlocksPartViewHolder
{
  private final Provider<AppConfig> appConfigProvider;
  private final j requestManager;
  
  public ConversationRatingViewHolder(View paramView, ConversationListener paramConversationListener, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramView, paramConversationListener, null);
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
  }
  
  public void bind(Part paramPart, ViewGroup paramViewGroup)
  {
    setUpHolderBlocks(paramPart, this.cellLayout, this.bubble, paramViewGroup);
    if (this.networkAvatar != null) {
      showAvatar(paramPart.getParticipant(), this.networkAvatar, (AppConfig)this.appConfigProvider.get(), this.requestManager);
    }
  }
  
  public void onClick(View paramView) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/ConversationRatingViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */