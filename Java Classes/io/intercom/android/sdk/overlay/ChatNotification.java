package io.intercom.android.sdk.overlay;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.utilities.FontUtils;

abstract class ChatNotification
  extends InAppNotification
{
  private static final int ANIMATION_DURATION = 170;
  private static final int GROWTH_WIDTH = 355;
  private final j requestManager;
  
  protected ChatNotification(Context paramContext, Conversation paramConversation, int paramInt1, int paramInt2, InAppNotification.Listener paramListener, Provider<AppConfig> paramProvider, j paramj)
  {
    super(paramContext, paramConversation, paramInt1, paramInt2, paramListener, paramProvider);
    this.requestManager = paramj;
  }
  
  private void expandChat(ViewGroup paramViewGroup, AnimatorListenerAdapter paramAnimatorListenerAdapter)
  {
    ViewGroup localViewGroup = (ViewGroup)paramViewGroup.findViewById(R.id.chathead_text_container);
    if (localViewGroup == null) {
      return;
    }
    TextView localTextView = (TextView)paramViewGroup.findViewById(R.id.chathead_text_header);
    View localView = getContentContainer();
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)localViewGroup.getLayoutParams();
    paramViewGroup = paramViewGroup.findViewById(R.id.chat_avatar_container);
    float f1 = paramViewGroup.getTranslationX();
    float f2 = paramViewGroup.getTranslationY();
    ObjectAnimator.ofPropertyValuesHolder(paramViewGroup, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.ALPHA, new float[] { 1.0F, 0.8F }), PropertyValuesHolder.ofFloat("translationX", new float[] { f1, f1 + 100.0F }), PropertyValuesHolder.ofFloat("translationY", new float[] { f2, f2 - 40.0F }), PropertyValuesHolder.ofFloat(View.SCALE_X, new float[] { 1.0F, 0.8F }), PropertyValuesHolder.ofFloat(View.SCALE_Y, new float[] { 1.0F, 0.8F }) }).setDuration(170L).start();
    ObjectAnimator.ofFloat(localTextView, View.ALPHA, new float[] { 1.0F, 0.0F }).setDuration(170L).start();
    ObjectAnimator.ofFloat(localView, View.ALPHA, new float[] { 1.0F, 0.0F }).setDuration(170L).start();
    getWidthAnimator(localViewGroup, paramAnimatorListenerAdapter).start();
    getWidthAnimator(this.overlayRoot).start();
    getMarginAnimator(localViewGroup, localLayoutParams).start();
  }
  
  private Animator getMarginAnimator(final ViewGroup paramViewGroup, FrameLayout.LayoutParams paramLayoutParams)
  {
    paramLayoutParams = ValueAnimator.ofInt(new int[] { paramLayoutParams.leftMargin, 0 });
    paramLayoutParams.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        paramAnonymousValueAnimator = (FrameLayout.LayoutParams)paramViewGroup.getLayoutParams();
        paramAnonymousValueAnimator.leftMargin = i;
        paramViewGroup.setLayoutParams(paramAnonymousValueAnimator);
      }
    });
    paramLayoutParams.setDuration(170L);
    return paramLayoutParams;
  }
  
  private Animator getWidthAnimator(ViewGroup paramViewGroup, final Animator.AnimatorListener paramAnimatorListener)
  {
    final int i = Math.abs(paramViewGroup.getMeasuredWidth() - ScreenUtils.dpToPx(355.0F, paramViewGroup.getContext()));
    paramViewGroup = getWidthAnimator(paramViewGroup);
    paramViewGroup.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      boolean hasSentUpdate = false;
      
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        if (i > 0) {}
        for (i = i / i * 100;; i = 100)
        {
          if ((i > 80) && (!this.hasSentUpdate))
          {
            this.hasSentUpdate = true;
            paramAnimatorListener.onAnimationEnd(null);
          }
          return;
        }
      }
    });
    return paramViewGroup;
  }
  
  private ValueAnimator getWidthAnimator(final ViewGroup paramViewGroup)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofInt(new int[] { paramViewGroup.getMeasuredWidth(), ScreenUtils.dpToPx(355.0F, paramViewGroup.getContext()) });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        int i = ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue();
        paramAnonymousValueAnimator = (FrameLayout.LayoutParams)paramViewGroup.getLayoutParams();
        paramAnonymousValueAnimator.width = i;
        paramViewGroup.setLayoutParams(paramAnonymousValueAnimator);
      }
    });
    localValueAnimator.setDuration(170L);
    return localValueAnimator;
  }
  
  private void performEntranceAnimation()
  {
    Object localObject = this.overlayRoot.findViewById(R.id.chat_avatar_container);
    final ViewGroup localViewGroup = (ViewGroup)this.overlayRoot.findViewById(R.id.chat_full_body);
    localViewGroup.setVisibility(4);
    localObject = ObjectAnimator.ofPropertyValuesHolder(localObject, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.ALPHA, new float[] { 0.0F, 1.0F }) }).setDuration(400L);
    ((ObjectAnimator)localObject).addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ChatNotification.this.animateTextContainer(localViewGroup);
      }
    });
    ((ObjectAnimator)localObject).start();
  }
  
  private void populateViewsWithData(j paramj)
  {
    Object localObject = this.overlayRoot.findViewById(R.id.chathead_root);
    ImageView localImageView = (ImageView)((View)localObject).findViewById(R.id.chathead_avatar);
    localObject = (TextView)((View)localObject).findViewById(R.id.chathead_text_header);
    ((TextView)localObject).setTextColor(((AppConfig)this.appConfigProvider.get()).getBaseColor());
    FontUtils.setRobotoMediumTypeface((TextView)localObject);
    AvatarUtils.loadAvatarIntoView(this.conversation.getLastAdmin().getAvatar(), localImageView, (AppConfig)this.appConfigProvider.get(), paramj);
    ((TextView)localObject).setText(getHeaderText());
    updateContentContainer(this.conversation.getLastPart());
  }
  
  void animateTextContainer(ViewGroup paramViewGroup)
  {
    int i = (int)paramViewGroup.getX();
    int j = (int)paramViewGroup.getX();
    paramViewGroup.setScaleX(0.8F);
    paramViewGroup.setScaleY(0.8F);
    paramViewGroup.setAlpha(0.8F);
    paramViewGroup.setX(i - 150);
    paramViewGroup.setVisibility(0);
    paramViewGroup.animate().setInterpolator(new OvershootInterpolator(0.6F)).scaleX(1.0F).scaleY(1.0F).alphaBy(1.0F).translationX(j).setDuration(300L).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ChatNotification.this.beginListeningForTouchEvents();
      }
    }).start();
  }
  
  public void display(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater, boolean paramBoolean, int paramInt)
  {
    if (this.overlayRoot == null) {
      this.overlayRoot = inflateChatRootView(paramViewGroup, paramLayoutInflater);
    }
    if (!isAttached()) {
      paramViewGroup.addView(this.overlayRoot, 0);
    }
    paramViewGroup = (FrameLayout.LayoutParams)this.overlayRoot.getLayoutParams();
    paramViewGroup.setMargins(paramViewGroup.leftMargin, paramViewGroup.topMargin, paramViewGroup.rightMargin, paramViewGroup.bottomMargin + this.overlayRoot.getResources().getDimensionPixelSize(R.dimen.intercom_bottom_padding) + paramInt);
    this.overlayRoot.setLayoutParams(paramViewGroup);
    populateViewsWithData(this.requestManager);
    if (paramBoolean)
    {
      performEntranceAnimation();
      return;
    }
    this.overlayRoot.setVisibility(0);
    beginListeningForTouchEvents();
  }
  
  protected abstract View getContentContainer();
  
  protected abstract ViewGroup inflateChatRootView(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater);
  
  public void moveBackward(ViewGroup paramViewGroup, AnimatorListenerAdapter paramAnimatorListenerAdapter)
  {
    this.position += 1;
    animateToPosition(paramViewGroup.getContext());
    expandChat(paramViewGroup, paramAnimatorListenerAdapter);
  }
  
  protected void onNotificationPressed(View paramView)
  {
    paramView.animate().scaleX(0.9F).scaleY(0.9F).alpha(0.9F).setDuration(50L).start();
  }
  
  protected void onNotificationReleased(View paramView)
  {
    paramView.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(50L).start();
  }
  
  protected abstract void updateContentContainer(Part paramPart);
  
  protected abstract void updateViewDataDuringReplyPulse(int paramInt);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/ChatNotification.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */