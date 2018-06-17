package io.intercom.android.sdk.inbox;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.content.a;
import android.support.v7.widget.RecyclerView.x;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.LastParticipatingAdmin;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.utilities.FontUtils;
import io.intercom.android.sdk.utilities.GroupConversationTextFormatter;
import io.intercom.android.sdk.utilities.TimeFormatter;
import io.intercom.android.sdk.views.AuthorAvatarView;
import java.util.List;

class InboxRowViewHolder
  extends RecyclerView.x
  implements View.OnClickListener
{
  private final AuthorAvatarView authorAvatar;
  private final TextView authorName;
  private final ConversationClickListener conversationClickListener;
  private final ImageView conversationIndicator;
  private final j requestManager;
  private final TextView summary;
  private final TimeFormatter timeFormatter;
  private final TextView timeStamp;
  
  InboxRowViewHolder(View paramView, ConversationClickListener paramConversationClickListener, TimeFormatter paramTimeFormatter, j paramj)
  {
    super(paramView);
    this.conversationClickListener = paramConversationClickListener;
    this.timeFormatter = paramTimeFormatter;
    this.requestManager = paramj;
    paramView.setOnClickListener(this);
    this.authorAvatar = ((AuthorAvatarView)paramView.findViewById(R.id.intercom_author_avatar));
    this.authorName = ((TextView)paramView.findViewById(R.id.intercom_user_name));
    this.timeStamp = ((TextView)paramView.findViewById(R.id.intercom_time_stamp));
    this.summary = ((TextView)paramView.findViewById(R.id.intercom_message_summary));
    this.conversationIndicator = ((ImageView)paramView.findViewById(R.id.intercom_conversation_indicator));
  }
  
  private void setRowParticipantDetails(Conversation paramConversation, String paramString, TeamPresence paramTeamPresence, AppConfig paramAppConfig)
  {
    LastParticipatingAdmin localLastParticipatingAdmin = paramConversation.getLastParticipatingAdmin();
    if (!TextUtils.isEmpty(localLastParticipatingAdmin.getFirstName()))
    {
      this.authorAvatar.loadAvatarWithActiveState(localLastParticipatingAdmin.getAvatar(), localLastParticipatingAdmin.isActive(), paramAppConfig, this.requestManager);
      this.authorName.setText(GroupConversationTextFormatter.groupConversationTitle(localLastParticipatingAdmin.getFirstName(), paramConversation.getGroupConversationParticipants().size(), this.authorName.getContext()));
      return;
    }
    if (paramTeamPresence.isEmpty())
    {
      this.authorAvatar.loadAvatar(localLastParticipatingAdmin.getAvatar(), paramAppConfig, this.requestManager);
      this.authorName.setText(paramString);
      return;
    }
    this.authorAvatar.loadAvatars(paramTeamPresence.getActiveAdmins(), paramAppConfig, this.requestManager);
    this.authorName.setText(paramString);
  }
  
  void bindData(Conversation paramConversation, UserIdentity paramUserIdentity, AppConfig paramAppConfig, TeamPresence paramTeamPresence)
  {
    Part localPart = paramConversation.getLastUserVisiblePart();
    Context localContext = this.itemView.getContext();
    if (localPart.getParticipant().isUserWithId(paramUserIdentity.getIntercomId()))
    {
      this.summary.setText(localContext.getString(R.string.intercom_you) + ": " + localPart.getSummary());
      this.timeStamp.setText(this.timeFormatter.getFormattedTime(localPart.getCreatedAt()));
      setRowParticipantDetails(paramConversation, paramAppConfig.getName(), paramTeamPresence, paramAppConfig);
      if (paramConversation.isRead()) {
        break label206;
      }
      FontUtils.setRobotoMediumTypeface(this.authorName);
      this.summary.setTextColor(a.c(localContext, R.color.intercom_grey_800));
      paramUserIdentity = a.a(localContext, R.drawable.intercom_unread_dot);
      int i = paramAppConfig.getBaseColor();
      ((GradientDrawable)paramUserIdentity).setColor(i);
      this.timeStamp.setCompoundDrawablesWithIntrinsicBounds(paramUserIdentity, null, null, null);
      this.timeStamp.setTextColor(i);
    }
    for (;;)
    {
      if (!paramConversation.isUserParticipated()) {
        break label260;
      }
      this.conversationIndicator.setVisibility(0);
      return;
      this.summary.setText(localPart.getSummary());
      break;
      label206:
      this.authorName.setTypeface(Typeface.SANS_SERIF);
      this.summary.setTextColor(a.c(localContext, R.color.intercom_grey_600));
      this.timeStamp.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
      this.timeStamp.setTextColor(a.c(localContext, R.color.intercom_grey_500));
    }
    label260:
    this.conversationIndicator.setVisibility(4);
  }
  
  public void onClick(View paramView)
  {
    int i = getAdapterPosition();
    if (i != -1) {
      this.conversationClickListener.onConversationClicked(i);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/inbox/InboxRowViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */