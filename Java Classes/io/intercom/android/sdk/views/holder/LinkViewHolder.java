package io.intercom.android.sdk.views.holder;

import android.content.ClipboardManager;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Part;

public class LinkViewHolder
  extends BlocksPartViewHolder
{
  private final Provider<AppConfig> appConfigProvider;
  private final j requestManager;
  private final int viewType;
  
  public LinkViewHolder(View paramView, int paramInt, ConversationListener paramConversationListener, ClipboardManager paramClipboardManager, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramView, paramConversationListener, paramClipboardManager);
    this.viewType = paramInt;
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
    if (Build.VERSION.SDK_INT >= 21) {
      this.cellLayout.setTransitionName("link_background");
    }
  }
  
  public void bind(Part paramPart, ViewGroup paramViewGroup)
  {
    paramViewGroup = setUpHolderBlocks(paramPart, this.cellLayout, this.bubble, paramViewGroup);
    checkForEntranceAnimation(this.viewType, paramPart, this.networkAvatar, this.cellLayout, paramViewGroup);
    if (this.networkAvatar != null) {
      showAvatar(paramPart.getParticipant(), this.networkAvatar, (AppConfig)this.appConfigProvider.get(), this.requestManager);
    }
  }
  
  public void onClick(View paramView)
  {
    int i = getAdapterPosition();
    if (i != -1) {
      this.conversationListener.onLinkClicked(i, this.cellLayout);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/LinkViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */