package io.intercom.android.sdk.conversation;

import android.app.Activity;
import android.content.ClipboardManager;
import android.os.Build.VERSION;
import android.support.v4.app.b;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.activities.IntercomArticleActivity;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.BlockType;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.MessageState;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.ContextLocaliser;
import io.intercom.android.sdk.utilities.LinkOpener;
import io.intercom.android.sdk.utilities.TimeFormatter;
import io.intercom.android.sdk.views.PartMetadataFormatter;
import io.intercom.android.sdk.views.holder.ContainerCardViewHolder;
import io.intercom.android.sdk.views.holder.ConversationListener;
import io.intercom.android.sdk.views.holder.ConversationLoadingViewHolder;
import io.intercom.android.sdk.views.holder.ConversationPartViewHolder;
import io.intercom.android.sdk.views.holder.ConversationRatingViewHolder;
import io.intercom.android.sdk.views.holder.EventViewHolder;
import io.intercom.android.sdk.views.holder.LinkListViewHolder;
import io.intercom.android.sdk.views.holder.LinkViewHolder;
import io.intercom.android.sdk.views.holder.PartViewHolder;
import io.intercom.android.sdk.views.holder.TimeStampViewHolder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class ConversationPartAdapter
  extends RecyclerView.a<RecyclerView.x>
  implements ConversationListener
{
  private boolean allowExpansionArrow = false;
  private final Api api;
  private final Provider<AppConfig> appConfigProvider;
  private final ClipboardManager clipboardManager;
  private final String conversationId;
  private final Listener listener;
  private final List<Part> partList;
  private final PartMetadataFormatter partMetadataFormatter;
  private final Map<Part, ViewGroup> partViewMap;
  private final j requestManager;
  private final Activity rootActivity;
  private Part selectedPart;
  private final TimeFormatter timeFormatter;
  private final UserIdentity userIdentity;
  
  ConversationPartAdapter(List<Part> paramList, ClipboardManager paramClipboardManager, Listener paramListener, PartMetadataFormatter paramPartMetadataFormatter, TimeFormatter paramTimeFormatter, Map<Part, ViewGroup> paramMap, Api paramApi, Activity paramActivity, String paramString, Provider<AppConfig> paramProvider, UserIdentity paramUserIdentity, j paramj)
  {
    this.partList = paramList;
    this.clipboardManager = paramClipboardManager;
    this.listener = paramListener;
    this.partMetadataFormatter = paramPartMetadataFormatter;
    this.timeFormatter = paramTimeFormatter;
    this.partViewMap = paramMap;
    this.api = paramApi;
    this.rootActivity = paramActivity;
    this.conversationId = paramString;
    this.appConfigProvider = paramProvider;
    this.userIdentity = paramUserIdentity;
    this.requestManager = paramj;
  }
  
  public static ConversationPartAdapter create(Activity paramActivity, List<Part> paramList, Listener paramListener, Api paramApi, String paramString, Provider<AppConfig> paramProvider, UserIdentity paramUserIdentity, TimeProvider paramTimeProvider, ContextLocaliser paramContextLocaliser, j paramj)
  {
    ClipboardManager localClipboardManager = (ClipboardManager)paramActivity.getSystemService("clipboard");
    paramTimeProvider = new TimeFormatter(paramContextLocaliser.createLocalisedContext(paramActivity), paramTimeProvider);
    return new ConversationPartAdapter(paramList, localClipboardManager, paramListener, new PartMetadataFormatter(paramTimeProvider), paramTimeProvider, new HashMap(), paramApi, paramActivity, paramString, paramProvider, paramUserIdentity, paramj);
  }
  
  private void openArticleActivity(Block paramBlock, Part paramPart, View paramView)
  {
    paramBlock = IntercomArticleActivity.buildIntent(this.rootActivity, paramBlock.getArticleId(), paramPart.getId(), this.conversationId);
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramPart = b.a(this.rootActivity, paramView, "link_background");
      this.rootActivity.startActivity(paramBlock, paramPart.toBundle());
      return;
    }
    this.rootActivity.startActivity(paramBlock);
  }
  
  private void startAllowingExpansionArrowIfPositionIsNotLast(int paramInt)
  {
    int i = this.allowExpansionArrow;
    if (paramInt != this.partList.size() - 1) {}
    for (paramInt = 1;; paramInt = 0)
    {
      this.allowExpansionArrow = (paramInt | i);
      return;
    }
  }
  
  public int getCount()
  {
    return getItemCount();
  }
  
  public int getItemCount()
  {
    return this.partList.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    Part localPart = (Part)this.partList.get(paramInt);
    String str = localPart.getMessageStyle();
    if (localPart.isEvent().booleanValue()) {
      return 12;
    }
    if ("admin_is_typing_style".equals(str)) {
      return 5;
    }
    if ("day_divider_style".equals(str)) {
      return 6;
    }
    if ("loading_layout_style".equals(str)) {
      return 7;
    }
    Participant localParticipant = localPart.getParticipant();
    if (localParticipant.isAdmin())
    {
      if (localPart.isLinkCard())
      {
        if (localPart.isInitialMessage()) {
          return 8;
        }
        return 9;
      }
      if (localPart.isSingleBlockPartOfType(BlockType.CONVERSATIONRATING)) {
        return 10;
      }
      if (localPart.isSingleBlockPartOfType(BlockType.LINKLIST)) {
        return 13;
      }
      if ("post".equals(str)) {
        return 2;
      }
      if ("note".equals(str))
      {
        startAllowingExpansionArrowIfPositionIsNotLast(paramInt);
        return 3;
      }
      return 1;
    }
    if (localParticipant.isUserWithId(this.userIdentity.getIntercomId())) {
      return 0;
    }
    return 4;
  }
  
  public Part getPart(int paramInt)
  {
    return (Part)this.partList.get(paramInt);
  }
  
  public Part getSelectedPart()
  {
    return this.selectedPart;
  }
  
  ViewGroup getViewForPart(Part paramPart)
  {
    return (ViewGroup)this.partViewMap.get(paramPart);
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    if ((paramx instanceof ConversationPartViewHolder))
    {
      Part localPart = getPart(paramInt);
      ViewGroup localViewGroup = (ViewGroup)this.partViewMap.get(localPart);
      Object localObject = localViewGroup;
      if (localViewGroup == null) {
        localObject = new FrameLayout(paramx.itemView.getContext());
      }
      ((ConversationPartViewHolder)paramx).bind(localPart, (ViewGroup)localObject);
    }
  }
  
  public void onContainerCardClicked(int paramInt, ContainerCardViewHolder paramContainerCardViewHolder)
  {
    Part localPart = (Part)this.partList.get(paramInt);
    switch (getItemViewType(paramInt))
    {
    default: 
    case 3: 
      do
      {
        return;
      } while (!this.allowExpansionArrow);
      paramContainerCardViewHolder.toggleExpanded();
      return;
    }
    this.listener.onPostCardClicked(localPart);
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramViewGroup.getContext());
    switch (paramInt)
    {
    case 11: 
    default: 
      return new PartViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_user_part, paramViewGroup, false), paramInt, this, this.clipboardManager, this.partMetadataFormatter, this.appConfigProvider, this.requestManager);
    case 6: 
      return new TimeStampViewHolder(localLayoutInflater.inflate(R.layout.intercom_day_divider, paramViewGroup, false), this.timeFormatter);
    case 1: 
    case 4: 
    case 5: 
      return new PartViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_admin_part, paramViewGroup, false), paramInt, this, this.clipboardManager, this.partMetadataFormatter, this.appConfigProvider, this.requestManager);
    case 2: 
      return new ContainerCardViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_post, paramViewGroup, false), paramInt, this, this.clipboardManager, false, this.appConfigProvider, this.requestManager);
    case 3: 
      return new ContainerCardViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_note, paramViewGroup, false), paramInt, this, this.clipboardManager, this.allowExpansionArrow, this.appConfigProvider, this.requestManager);
    case 7: 
      return new ConversationLoadingViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_loading, paramViewGroup, false), (AppConfig)this.appConfigProvider.get());
    case 8: 
      return new LinkViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_link, paramViewGroup, false), paramInt, this, this.clipboardManager, this.appConfigProvider, this.requestManager);
    case 9: 
      return new LinkViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_link_reply, paramViewGroup, false), paramInt, this, this.clipboardManager, this.appConfigProvider, this.requestManager);
    case 10: 
      return new ConversationRatingViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_conversation_rating, paramViewGroup, false), this, this.appConfigProvider, this.requestManager);
    case 13: 
      return new LinkListViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_link_list, paramViewGroup, false), this, this.appConfigProvider, this.requestManager);
    }
    return new EventViewHolder(localLayoutInflater.inflate(R.layout.intercom_row_event, paramViewGroup, false), this.appConfigProvider, this.requestManager);
  }
  
  public void onLinkClicked(int paramInt, View paramView)
  {
    Part localPart = (Part)this.partList.get(paramInt);
    Block localBlock = localPart.getLinkBlock();
    if ("educate.article".equals(localBlock.getLinkType()))
    {
      openArticleActivity(localBlock, localPart, paramView);
      return;
    }
    LinkOpener.handleUrl(localBlock.getUrl(), this.rootActivity, this.api);
  }
  
  public void onPartClicked(int paramInt, PartViewHolder paramPartViewHolder)
  {
    Part localPart = (Part)this.partList.get(paramInt);
    if ((localPart.getMessageState() == Part.MessageState.FAILED) || (localPart.getMessageState() == Part.MessageState.UPLOAD_FAILED)) {
      this.listener.onPartClicked(localPart);
    }
    while (paramInt >= getCount() - 1) {
      return;
    }
    if (localPart == this.selectedPart)
    {
      this.selectedPart = null;
      paramPartViewHolder.setExpanded(false);
      return;
    }
    notifyItemChanged(this.partList.indexOf(this.selectedPart));
    this.selectedPart = localPart;
    paramPartViewHolder.setExpanded(true);
  }
  
  void setViewForPart(Part paramPart, ViewGroup paramViewGroup)
  {
    this.partViewMap.put(paramPart, paramViewGroup);
  }
  
  static abstract interface Listener
  {
    public abstract void onPartClicked(Part paramPart);
    
    public abstract void onPostCardClicked(Part paramPart);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/ConversationPartAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */