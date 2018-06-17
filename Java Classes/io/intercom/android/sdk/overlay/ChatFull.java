package io.intercom.android.sdk.overlay;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.Blocks;
import io.intercom.android.sdk.blocks.BlocksViewHolder;
import io.intercom.android.sdk.blocks.ButtonClickListener;
import io.intercom.android.sdk.blocks.ImageClickListener;
import io.intercom.android.sdk.blocks.UploadingImageCache;
import io.intercom.android.sdk.blocks.ViewHolderGenerator;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;

class ChatFull
  extends ChatNotification
{
  private final MetricTracker metricTracker;
  private final j requestManager;
  
  ChatFull(Context paramContext, Conversation paramConversation, int paramInt1, int paramInt2, InAppNotification.Listener paramListener, MetricTracker paramMetricTracker, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramContext, paramConversation, paramInt1, paramInt2, paramListener, paramProvider, paramj);
    this.metricTracker = paramMetricTracker;
    this.requestManager = paramj;
  }
  
  protected View getContentContainer()
  {
    return ((ViewGroup)this.overlayRoot.findViewById(R.id.chathead_text_container)).getChildAt(1);
  }
  
  protected ViewGroup inflateChatRootView(final ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater)
  {
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(R.layout.intercom_preview_chat_full_overlay, paramViewGroup, false);
    Object localObject1 = new Blocks(this.localisedContext, LumberMill.getBlocksTwig());
    final Object localObject2 = Injector.get();
    paramLayoutInflater = ((Injector)localObject2).getApi();
    localObject2 = new ViewHolderGenerator(new UploadingImageCache(), paramLayoutInflater, this.appConfigProvider, this.conversation.getId(), new ChatFullImageClickListener(null), new ChatFullButtonClickListener(null), this.requestManager, ((Injector)localObject2).getGson(), ((Injector)localObject2).getBus(), this.metricTracker).getChatFullHolder();
    localObject1 = ((Blocks)localObject1).createBlocks(this.conversation.getLastPart().getBlocks(), (BlocksViewHolder)localObject2);
    localObject2 = (ViewGroup)paramViewGroup.findViewById(R.id.chathead_text_container);
    ((ViewGroup)localObject2).addView((View)localObject1);
    ((ViewGroup)localObject2).getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
    {
      public boolean onPreDraw()
      {
        localObject2.getViewTreeObserver().removeOnPreDrawListener(this);
        int i = localObject2.getMeasuredHeight();
        int j = ((ViewGroup.MarginLayoutParams)localObject2.getLayoutParams()).bottomMargin;
        Resources localResources = ChatFull.this.localisedContext.getResources();
        int k = localResources.getDimensionPixelSize(R.dimen.intercom_chat_full_top_margin);
        int m = localResources.getDimensionPixelSize(R.dimen.intercom_bottom_padding);
        if (i >= ChatFull.this.screenHeight - k - j - m)
        {
          paramViewGroup.findViewById(R.id.chat_overlay_overflow_fade).setVisibility(0);
          return false;
        }
        return true;
      }
    });
    paramLayoutInflater.markConversationAsRead(this.conversation.getId());
    this.metricTracker.viewedInApp(this.conversation.getId(), this.conversation.getLastPart().getId(), 1);
    return paramViewGroup;
  }
  
  public void update(Conversation paramConversation, Runnable paramRunnable) {}
  
  protected void updateContentContainer(Part paramPart) {}
  
  protected void updateViewDataDuringReplyPulse(int paramInt) {}
  
  private static class ChatFullButtonClickListener
    implements ButtonClickListener
  {
    public void onButtonClicked(View paramView, String paramString) {}
    
    public boolean shouldHandleClicks()
    {
      return false;
    }
  }
  
  private static class ChatFullImageClickListener
    implements ImageClickListener
  {
    public void onImageClicked(String paramString1, String paramString2, ImageView paramImageView, int paramInt1, int paramInt2) {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/ChatFull.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */