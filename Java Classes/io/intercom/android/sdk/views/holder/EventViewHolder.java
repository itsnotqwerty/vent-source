package io.intercom.android.sdk.views.holder;

import android.support.v7.widget.RecyclerView.x;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Avatar;
import io.intercom.android.sdk.models.EventData;
import io.intercom.android.sdk.models.EventParticipant;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.utilities.AvatarUtils;

public class EventViewHolder
  extends RecyclerView.x
  implements ConversationPartViewHolder
{
  private final Provider<AppConfig> appConfigProvider;
  private final ImageView avatar;
  private final TextView eventTitle;
  private final j requestManager;
  
  public EventViewHolder(View paramView, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramView);
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
    this.eventTitle = ((TextView)paramView.findViewById(R.id.event_name));
    this.avatar = ((ImageView)paramView.findViewById(R.id.avatar));
  }
  
  public void bind(Part paramPart, ViewGroup paramViewGroup)
  {
    paramPart = paramPart.getEventData();
    paramViewGroup = paramPart.getParticipant();
    this.eventTitle.setText(paramPart.getEventAsPlainText());
    AvatarUtils.loadAvatarIntoView(Avatar.create(paramViewGroup.getAvatar().getImageUrl(), paramViewGroup.getInitial()), this.avatar, (AppConfig)this.appConfigProvider.get(), this.requestManager);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/EventViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */