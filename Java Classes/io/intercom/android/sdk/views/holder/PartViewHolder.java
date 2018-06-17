package io.intercom.android.sdk.views.holder;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.content.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.blocks.BlockType;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.MessageState;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.Phrase;
import io.intercom.android.sdk.views.ExpandableLayout;
import io.intercom.android.sdk.views.PartMetadataFormatter;
import java.util.List;

public class PartViewHolder
  extends BlocksPartViewHolder
{
  private final Provider<AppConfig> appConfigProvider;
  private final TextView attribution;
  private ViewGroup blocks;
  private final TextView metaData;
  private final PartMetadataFormatter partMetadataFormatter;
  private final j requestManager;
  private final int viewType;
  
  public PartViewHolder(View paramView, int paramInt, ConversationListener paramConversationListener, ClipboardManager paramClipboardManager, PartMetadataFormatter paramPartMetadataFormatter, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramView, paramConversationListener, paramClipboardManager);
    this.viewType = paramInt;
    this.partMetadataFormatter = paramPartMetadataFormatter;
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
    this.metaData = ((TextView)paramView.findViewById(R.id.metadata));
    this.attribution = ((TextView)paramView.findViewById(R.id.attribution));
  }
  
  private boolean isSingleImagePart(Part paramPart)
  {
    paramPart = paramPart.getBlocks();
    if (paramPart.size() != 1) {
      return false;
    }
    paramPart = ((Block)paramPart.get(0)).getType();
    return (paramPart == BlockType.LOCALIMAGE) || (paramPart == BlockType.IMAGE);
  }
  
  private void setBubbleBackground(Part paramPart, View paramView, int paramInt)
  {
    int k = paramView.getPaddingLeft();
    int m = paramView.getPaddingRight();
    int i = paramView.getPaddingTop();
    int j = paramView.getPaddingBottom();
    if ((isSingleImagePart(paramPart)) || (isSingleCardPart(paramPart)))
    {
      this.cellLayout.setBackgroundColor(0);
      this.cellLayout.setPadding(0, 0, 0, 0);
      paramInt = 0;
      i = 0;
    }
    for (;;)
    {
      paramView.setPadding(k, i, m, paramInt);
      return;
      Object localObject = this.cellLayout.getContext();
      int n = (int)((Context)localObject).getResources().getDimension(R.dimen.intercom_cell_horizontal_padding);
      this.cellLayout.setPadding(n, 0, n, 0);
      localObject = a.a((Context)localObject, R.drawable.intercom_bubble_background);
      if ((!paramPart.isAdmin()) && (paramInt != 4)) {
        ((Drawable)localObject).setColorFilter(((AppConfig)this.appConfigProvider.get()).getBaseColor(), PorterDuff.Mode.SRC_IN);
      }
      BackgroundUtils.setBackground(this.cellLayout, (Drawable)localObject);
      paramInt = j;
    }
  }
  
  private void setupAttribution(Part paramPart)
  {
    if (this.attribution == null) {
      return;
    }
    if (shouldShowAttribution(paramPart))
    {
      paramPart = Phrase.from(this.metaData.getContext(), R.string.intercom_gif_attribution).put("providername", ((Block)paramPart.getBlocks().get(0)).getAttribution()).format();
      this.attribution.setVisibility(0);
      this.attribution.setText(paramPart);
      return;
    }
    this.attribution.setVisibility(8);
  }
  
  private void setupHolderBackground(int paramInt, Part paramPart, boolean paramBoolean, j paramj)
  {
    setBubbleBackground(paramPart, this.blocks, paramInt);
    if (this.networkAvatar != null)
    {
      if (!paramBoolean) {
        break label30;
      }
      this.networkAvatar.setVisibility(4);
    }
    label30:
    while ((paramInt != 1) && (paramInt != 5) && (paramInt != 4)) {
      return;
    }
    showAvatar(paramPart.getParticipant(), this.networkAvatar, (AppConfig)this.appConfigProvider.get(), paramj);
  }
  
  private void setupMetaData(int paramInt, Part paramPart)
  {
    if (this.metaData == null) {
      return;
    }
    if (paramPart == this.conversationListener.getPart(this.conversationListener.getCount() - 1)) {}
    for (boolean bool = true; (paramInt == 2) || (paramInt == 3); bool = false)
    {
      this.metaData.setVisibility(4);
      this.metaData.setHeight(ScreenUtils.dpToPx(10.0F, this.metaData.getContext()));
      return;
    }
    this.metaData.setText(this.partMetadataFormatter.getMetadataString(paramPart, bool, this.metaData.getResources()));
    if (Part.MessageState.UPLOAD_FAILED == paramPart.getMessageState())
    {
      this.metaData.setCompoundDrawablesWithIntrinsicBounds(R.drawable.intercom_message_error, 0, 0, 0);
      return;
    }
    this.metaData.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
  }
  
  private boolean shouldConcatenate(Part paramPart, int paramInt)
  {
    if (paramInt == -1) {}
    while (paramInt + 1 >= this.conversationListener.getCount()) {
      return false;
    }
    return Part.shouldConcatenate(paramPart, this.conversationListener.getPart(paramInt + 1));
  }
  
  private boolean shouldExpand(Part paramPart)
  {
    return (isSelectedPart(paramPart)) || (isLastPart(paramPart)) || (isNextPartTyping(getAdapterPosition()));
  }
  
  private boolean shouldShowAttribution(Part paramPart)
  {
    return (isSingleImagePart(paramPart)) && (!TextUtils.isEmpty(((Block)paramPart.getBlocks().get(0)).getAttribution())) && (paramPart.getMessageState().equals(Part.MessageState.NORMAL));
  }
  
  public void bind(Part paramPart, ViewGroup paramViewGroup)
  {
    boolean bool = shouldConcatenate(paramPart, getAdapterPosition());
    this.blocks = setUpHolderBlocks(paramPart, this.cellLayout, this.bubble, paramViewGroup);
    setupHolderBackground(this.viewType, paramPart, bool, this.requestManager);
    setupMetaData(this.viewType, paramPart);
    setupAttribution(paramPart);
    checkForEntranceAnimation(this.viewType, paramPart, this.networkAvatar, this.cellLayout, this.blocks);
    if (this.bubble != null) {
      this.bubble.setExpanded(shouldExpand(paramPart), false);
    }
  }
  
  boolean isLastPart(Part paramPart)
  {
    return (paramPart == this.conversationListener.getPart(this.conversationListener.getCount() - 1)) && (!"admin_is_typing_style".equals(paramPart.getMessageStyle()));
  }
  
  boolean isNextPartTyping(int paramInt)
  {
    if (paramInt == -1) {}
    do
    {
      return false;
      paramInt += 1;
    } while ((paramInt > this.conversationListener.getCount() - 1) || (!"admin_is_typing_style".equals(this.conversationListener.getPart(paramInt).getMessageStyle())));
    return true;
  }
  
  boolean isSelectedPart(Part paramPart)
  {
    return paramPart == this.conversationListener.getSelectedPart();
  }
  
  boolean isSingleCardPart(Part paramPart)
  {
    paramPart = paramPart.getBlocks();
    if (paramPart.size() != 1) {
      return false;
    }
    paramPart = (Block)paramPart.get(0);
    return (paramPart.getType() == BlockType.MESSENGERCARD) && (!TextUtils.isEmpty(paramPart.getFallbackUrl()));
  }
  
  public void onClick(View paramView)
  {
    int i = getAdapterPosition();
    if (i != -1) {
      this.conversationListener.onPartClicked(i, this);
    }
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    if (this.bubble != null) {
      this.bubble.setExpanded(paramBoolean, true);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/PartViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */