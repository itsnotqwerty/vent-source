package io.intercom.android.sdk.views.holder;

import android.content.ClipboardManager;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.Phrase;
import io.intercom.android.sdk.views.LockableScrollView;

public class ContainerCardViewHolder
  extends BlocksPartViewHolder
{
  private Provider<AppConfig> appConfigProvider;
  ImageView arrowExpander;
  private final View fade;
  final LockableScrollView lockableScrollView;
  private final j requestManager;
  private final TextView title;
  private final int viewType;
  
  public ContainerCardViewHolder(final View paramView, int paramInt, ConversationListener paramConversationListener, ClipboardManager paramClipboardManager, boolean paramBoolean, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramView, paramConversationListener, paramClipboardManager);
    this.viewType = paramInt;
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
    this.title = ((TextView)paramView.findViewById(R.id.intercom_container_card_title));
    this.fade = paramView.findViewById(R.id.intercom_container_fade_view);
    this.lockableScrollView = ((LockableScrollView)paramView.findViewById(R.id.cell_content));
    this.lockableScrollView.setScrollingEnabled(false);
    if (paramInt == 3)
    {
      if (paramBoolean) {
        this.arrowExpander = ((ImageView)paramView.findViewById(R.id.expand_arrow));
      }
      paramConversationListener = this.lockableScrollView;
      if (!paramBoolean)
      {
        paramBoolean = true;
        paramConversationListener.setExpanded(paramBoolean);
      }
    }
    for (;;)
    {
      paramView = paramView.findViewById(R.id.cellLayout);
      paramView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
      {
        public boolean onPreDraw()
        {
          paramView.getViewTreeObserver().removeOnPreDrawListener(this);
          ContainerCardViewHolder.this.setupViews();
          return false;
        }
      });
      return;
      paramBoolean = false;
      break;
      this.lockableScrollView.setExpanded(false);
    }
  }
  
  private boolean contentIsOverflowing()
  {
    boolean bool = false;
    if (this.lockableScrollView.getChildAt(0).getMeasuredHeight() > this.lockableScrollView.getMaxHeight()) {
      bool = true;
    }
    return bool;
  }
  
  private void layoutForCollapsedNoteWithArrow()
  {
    int j = 0;
    Object localObject;
    if (this.arrowExpander != null)
    {
      localObject = this.arrowExpander;
      if (contentIsOverflowing())
      {
        i = 0;
        ((ImageView)localObject).setVisibility(i);
        this.arrowExpander.setScaleY(1.0F);
      }
    }
    else
    {
      localObject = this.fade;
      if (!contentIsOverflowing()) {
        break label62;
      }
    }
    label62:
    for (int i = j;; i = 4)
    {
      ((View)localObject).setVisibility(i);
      return;
      i = 8;
      break;
    }
  }
  
  private void layoutForExpandedNoteWithArrow()
  {
    ImageView localImageView;
    if (this.arrowExpander != null)
    {
      localImageView = this.arrowExpander;
      if (!contentIsOverflowing()) {
        break label44;
      }
    }
    label44:
    for (int i = 0;; i = 8)
    {
      localImageView.setVisibility(i);
      this.arrowExpander.setScaleY(-1.0F);
      this.fade.setVisibility(4);
      return;
    }
  }
  
  private void layoutForExpandedNoteWithoutArrow()
  {
    if (this.arrowExpander != null) {
      this.arrowExpander.setVisibility(8);
    }
    this.fade.setVisibility(4);
  }
  
  private void layoutForPost()
  {
    if (this.arrowExpander != null) {
      this.arrowExpander.setVisibility(8);
    }
    View localView = this.fade;
    if (contentIsOverflowing()) {}
    for (int i = 0;; i = 4)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  private void runOnMainThread(Runnable paramRunnable)
  {
    if (Looper.myLooper() == Looper.getMainLooper())
    {
      paramRunnable.run();
      return;
    }
    this.lockableScrollView.post(paramRunnable);
  }
  
  public void bind(Part paramPart, ViewGroup paramViewGroup)
  {
    paramViewGroup = setUpHolderBlocks(paramPart, this.cellLayout, this.bubble, paramViewGroup);
    showAvatar(paramPart.getParticipant(), this.networkAvatar, (AppConfig)this.appConfigProvider.get(), this.requestManager);
    CharSequence localCharSequence = Phrase.from(this.title.getContext(), R.string.intercom_teammate_from_company).put("name", paramPart.getParticipant().getForename()).put("company", ((AppConfig)this.appConfigProvider.get()).getName()).format();
    this.title.setText(localCharSequence);
    checkForEntranceAnimation(this.viewType, paramPart, this.networkAvatar, this.cellLayout, paramViewGroup);
  }
  
  public void onClick(View paramView)
  {
    int i = getAdapterPosition();
    if (i != -1) {
      this.conversationListener.onContainerCardClicked(i, this);
    }
  }
  
  void setupViews()
  {
    if (this.viewType == 2)
    {
      layoutForPost();
      return;
    }
    if (this.arrowExpander == null)
    {
      layoutForExpandedNoteWithoutArrow();
      return;
    }
    if (this.lockableScrollView.isExpanded())
    {
      layoutForExpandedNoteWithArrow();
      return;
    }
    layoutForCollapsedNoteWithArrow();
  }
  
  public void toggleExpanded()
  {
    runOnMainThread(new Runnable()
    {
      public void run()
      {
        if ((ContainerCardViewHolder.this.arrowExpander != null) && (ContainerCardViewHolder.this.arrowExpander.getVisibility() == 0))
        {
          ContainerCardViewHolder.this.lockableScrollView.toggleExpanded();
          ContainerCardViewHolder.this.setupViews();
        }
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/holder/ContainerCardViewHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */