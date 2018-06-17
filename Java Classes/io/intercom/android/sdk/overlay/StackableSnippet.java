package io.intercom.android.sdk.overlay;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.utilities.FontUtils;

class StackableSnippet
  extends InAppNotification
  implements View.OnTouchListener
{
  private static final int BASE_ELEVATION = 18;
  private static final int BASE_MARGIN_DP = 16;
  private static final int ELEVATION_STEP = 3;
  private final Handler handler;
  private final j requestManager;
  
  public StackableSnippet(Context paramContext, Conversation paramConversation, int paramInt1, Handler paramHandler, int paramInt2, InAppNotification.Listener paramListener, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramContext, paramConversation, paramInt1, paramInt2, paramListener, paramProvider);
    this.handler = paramHandler;
    this.requestManager = paramj;
  }
  
  private void animateOnScreen()
  {
    this.handler.postDelayed(new Runnable()
    {
      public void run()
      {
        StackableSnippet.this.overlayRoot.setVisibility(0);
        StackableSnippet.this.overlayRoot.setY(StackableSnippet.this.screenHeight);
        StackableSnippet.this.overlayRoot.animate().setInterpolator(new OvershootInterpolator(0.6F)).translationY(0.0F).setDuration(300L).start();
      }
    }, this.position * 70);
  }
  
  private void setViewData(int paramInt)
  {
    Context localContext = this.overlayRoot.getContext();
    AppConfig localAppConfig = (AppConfig)this.appConfigProvider.get();
    Object localObject = (TextView)this.overlayRoot.findViewById(R.id.preview_name);
    FontUtils.setRobotoMediumTypeface((TextView)localObject);
    ((TextView)localObject).setTextColor(localAppConfig.getBaseColor());
    ((TextView)localObject).setText(getHeaderText());
    ((TextView)this.overlayRoot.findViewById(R.id.preview_summary)).setText(this.conversation.getLastPart().getSummary());
    localObject = (ImageView)this.overlayRoot.findViewById(R.id.preview_avatar);
    AvatarUtils.loadAvatarIntoView(this.conversation.getLastAdmin().getAvatar(), (ImageView)localObject, localAppConfig, this.requestManager);
    ((FrameLayout.LayoutParams)this.overlayRoot.getLayoutParams()).bottomMargin = (ScreenUtils.dpToPx(this.position * 8 + 16, localContext) + localContext.getResources().getDimensionPixelSize(R.dimen.intercom_bottom_padding) + paramInt);
    if (Build.VERSION.SDK_INT >= 21) {
      this.overlayRoot.setElevation(18 - this.position * 3);
    }
    this.overlayRoot.setScaleX(1.0F - this.position * 0.05F);
    if (this.position == 0) {
      beginListeningForTouchEvents();
    }
  }
  
  private void setupView(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater)
  {
    if (this.overlayRoot == null) {
      this.overlayRoot = ((LinearLayout)paramLayoutInflater.inflate(R.layout.intercom_preview_notification, paramViewGroup, false));
    }
    if (!isAttached()) {
      paramViewGroup.addView(this.overlayRoot, 0);
    }
  }
  
  public void display(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater, boolean paramBoolean, int paramInt)
  {
    setupView(paramViewGroup, paramLayoutInflater);
    setViewData(paramInt);
    if (paramBoolean)
    {
      animateOnScreen();
      return;
    }
    this.overlayRoot.setVisibility(0);
  }
  
  public void moveBackward(ViewGroup paramViewGroup, AnimatorListenerAdapter paramAnimatorListenerAdapter)
  {
    this.position += 1;
    animateToPosition(paramViewGroup.getContext());
  }
  
  protected void onNotificationPressed(View paramView)
  {
    paramView.animate().scaleX(0.95F).scaleY(0.95F).setDuration(50L).start();
  }
  
  protected void onNotificationReleased(View paramView)
  {
    paramView.animate().scaleX(1.0F).scaleY(1.0F).setDuration(50L).start();
  }
  
  public void update(Conversation paramConversation, Runnable paramRunnable)
  {
    this.conversation = paramConversation;
    performReplyPulse(this.overlayRoot.findViewById(R.id.notification_root), this.overlayRoot.findViewById(R.id.preview_summary), paramRunnable);
  }
  
  protected void updateViewDataDuringReplyPulse(int paramInt)
  {
    setViewData(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/StackableSnippet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */