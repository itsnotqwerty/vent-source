package io.intercom.android.sdk.views.holder;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.support.v7.widget.RecyclerView.x;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.Toast;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.blocks.models.Block;
import io.intercom.android.sdk.commons.utilities.HtmlCompat;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.MessageState;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.views.AdminIsTypingView;
import io.intercom.android.sdk.views.ExpandableLayout;
import java.util.Iterator;
import java.util.List;

abstract class BlocksPartViewHolder
  extends RecyclerView.x
  implements View.OnClickListener, View.OnLongClickListener, ConversationPartViewHolder
{
  final ExpandableLayout bubble;
  protected final ViewGroup cellLayout;
  private final ClipboardManager clipboardManager;
  private final String clipboardMessage;
  final ConversationListener conversationListener;
  final ImageView networkAvatar;
  private final Twig twig = LumberMill.getLogger();
  
  BlocksPartViewHolder(View paramView, ConversationListener paramConversationListener, ClipboardManager paramClipboardManager)
  {
    super(paramView);
    this.conversationListener = paramConversationListener;
    this.clipboardManager = paramClipboardManager;
    this.clipboardMessage = paramView.getContext().getString(R.string.intercom_copied_to_clipboard);
    this.networkAvatar = ((ImageView)paramView.findViewById(R.id.avatarView));
    this.cellLayout = ((ViewGroup)paramView.findViewById(R.id.cellLayout));
    this.bubble = ((ExpandableLayout)paramView.findViewById(R.id.intercom_bubble));
    paramView.setOnClickListener(this);
    paramView.setOnLongClickListener(this);
  }
  
  private static void appendLine(SpannableStringBuilder paramSpannableStringBuilder, CharSequence paramCharSequence)
  {
    if ((paramCharSequence == null) || (paramCharSequence.length() == 0)) {
      return;
    }
    if (paramSpannableStringBuilder.length() > 0) {
      paramSpannableStringBuilder.append('\n');
    }
    paramSpannableStringBuilder.append(paramCharSequence);
  }
  
  static String getPartText(Part paramPart)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    Iterator localIterator = paramPart.getBlocks().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Block)localIterator.next();
      switch (localObject.getType())
      {
      default: 
        break;
      case ???: 
      case ???: 
      case ???: 
      case ???: 
        appendLine(localSpannableStringBuilder, HtmlCompat.fromHtml(((Block)localObject).getText()));
        break;
      case ???: 
        appendLine(localSpannableStringBuilder, ((Block)localObject).getUrl());
        break;
      case ???: 
      case ???: 
        localObject = ((Block)localObject).getItems().iterator();
        while (((Iterator)localObject).hasNext()) {
          appendLine(localSpannableStringBuilder, (String)((Iterator)localObject).next());
        }
      }
    }
    if (localSpannableStringBuilder.length() == 0) {
      return paramPart.getSummary();
    }
    return localSpannableStringBuilder.toString();
  }
  
  private void setUpRowFocusRules(View paramView, Part paramPart, ExpandableLayout paramExpandableLayout)
  {
    if (paramExpandableLayout == null) {}
    do
    {
      return;
      paramExpandableLayout.setAlpha(1.0F);
    } while ((Part.MessageState.FAILED != paramPart.getMessageState()) && (Part.MessageState.UPLOAD_FAILED != paramPart.getMessageState()));
    ((ViewGroup)paramView).setDescendantFocusability(393216);
  }
  
  void checkForEntranceAnimation(int paramInt, Part paramPart, ImageView paramImageView, View paramView, ViewGroup paramViewGroup)
  {
    if (paramPart.hasEntranceAnimation())
    {
      if (paramInt != 5) {
        break label130;
      }
      paramPart.setEntranceAnimation(false);
      paramImageView.setAlpha(0.0F);
      paramImageView.setScaleX(0.5F);
      paramImageView.setScaleY(0.5F);
      paramImageView.animate().alpha(1.0F).scaleX(1.0F).scaleY(1.0F).setDuration(300L).setStartDelay(100L).start();
      paramView.setAlpha(0.0F);
      paramView.setScaleX(0.5F);
      paramView.setScaleY(0.5F);
      paramView.animate().alpha(1.0F).scaleX(1.0F).scaleY(1.0F).setDuration(300L).setStartDelay(150L).start();
      ((AdminIsTypingView)paramViewGroup.getChildAt(0)).beginAnimation();
    }
    label130:
    while (Part.MessageState.SENDING != paramPart.getMessageState()) {
      return;
    }
    paramPart.setEntranceAnimation(false);
    paramView.setAlpha(0.0F);
    paramView.setTranslationY(paramView.getTranslationY() + 100.0F);
    paramView.animate().setStartDelay(100L).alpha(1.0F).translationYBy(-100.0F).start();
  }
  
  public boolean onLongClick(View paramView)
  {
    if (this.clipboardManager == null) {}
    int i;
    do
    {
      return false;
      i = getAdapterPosition();
    } while (i == -1);
    try
    {
      paramView = this.conversationListener.getPart(i);
      this.clipboardManager.setPrimaryClip(ClipData.newPlainText("message", getPartText(paramView)));
      Toast.makeText(this.itemView.getContext(), this.clipboardMessage, 0).show();
      return true;
    }
    catch (Exception paramView)
    {
      this.twig.internal(paramView.getMessage());
    }
    return false;
  }
  
  ViewGroup setUpHolderBlocks(Part paramPart, ViewGroup paramViewGroup1, ExpandableLayout paramExpandableLayout, ViewGroup paramViewGroup2)
  {
    paramViewGroup1.setVisibility(0);
    if (paramViewGroup2.getParent() != null) {
      ((ViewGroup)paramViewGroup2.getParent()).removeView(paramViewGroup2);
    }
    if (paramViewGroup1.getChildCount() > 0) {
      paramViewGroup1.removeAllViews();
    }
    paramViewGroup1.addView(paramViewGroup2, 0);
    setUpRowFocusRules(this.itemView, paramPart, paramExpandableLayout);
    return paramViewGroup2;
  }
  
  void showAvatar(Participant paramParticipant, ImageView paramImageView, AppConfig paramAppConfig, j paramj)
  {
    paramImageView.setVisibility(0);
    AvatarUtils.loadAvatarIntoView(paramParticipant.getAvatar(), paramImageView, paramAppConfig, paramj);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/BlocksPartViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */