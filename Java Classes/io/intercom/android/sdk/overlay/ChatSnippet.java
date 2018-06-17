package io.intercom.android.sdk.overlay;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.AvatarUtils;

class ChatSnippet
  extends ChatNotification
{
  private TextView contentBody;
  private final j requestManager;
  
  public ChatSnippet(Context paramContext, Conversation paramConversation, int paramInt1, int paramInt2, InAppNotification.Listener paramListener, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramContext, paramConversation, paramInt1, paramInt2, paramListener, paramProvider, paramj);
    this.requestManager = paramj;
  }
  
  private void setBodyText(Part paramPart)
  {
    if (paramPart.getSummary().isEmpty())
    {
      this.contentBody.setText(this.localisedContext.getString(R.string.intercom_image_attached));
      return;
    }
    this.contentBody.setText(paramPart.getSummary());
  }
  
  protected View getContentContainer()
  {
    return this.overlayRoot.findViewById(R.id.chathead_text_body);
  }
  
  protected ViewGroup inflateChatRootView(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater)
  {
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(R.layout.intercom_preview_chat_snippet_overlay, paramViewGroup, false);
    this.contentBody = ((TextView)paramLayoutInflater.inflate(R.layout.intercom_preview_chat_snippet_body, paramViewGroup, false));
    ((ViewGroup)paramViewGroup.findViewById(R.id.chathead_text_container)).addView(this.contentBody);
    return paramViewGroup;
  }
  
  public void update(Conversation paramConversation, Runnable paramRunnable)
  {
    this.conversation = paramConversation;
    paramConversation = this.overlayRoot.findViewById(R.id.chathead_text_body);
    View localView = this.overlayRoot.findViewById(R.id.chathead_text_container);
    localView.setPivotX(0.0F);
    performReplyPulse(localView, paramConversation, paramRunnable);
  }
  
  protected void updateContentContainer(Part paramPart)
  {
    setBodyText(paramPart);
  }
  
  protected void updateViewDataDuringReplyPulse(int paramInt)
  {
    ImageView localImageView = (ImageView)this.overlayRoot.findViewById(R.id.chathead_avatar);
    AvatarUtils.loadAvatarIntoView(this.conversation.getLastAdmin().getAvatar(), localImageView, (AppConfig)this.appConfigProvider.get(), this.requestManager);
    ((TextView)this.overlayRoot.findViewById(R.id.chathead_text_header)).setText(getHeaderText());
    setBodyText(this.conversation.getLastPart());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/ChatSnippet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */