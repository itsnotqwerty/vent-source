package io.intercom.android.sdk.overlay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout.LayoutParams;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.Phrase;

abstract class InAppNotification
  implements View.OnTouchListener
{
  private static final int ANIMATE_OFFSCREEN_OFFSET = 200;
  private static final int BASE_MARGIN_DP = 16;
  private static final int DISMISS_DISTANCE_DP = 80;
  protected static final int MARGIN_OFFSET_DP = 8;
  private static final float RESISTANCE = 2.0F;
  protected static final float SCALE_OFFSET = 0.05F;
  protected final Provider<AppConfig> appConfigProvider;
  private int bottomPadding = 0;
  protected Conversation conversation;
  private float initialTouchX;
  private float initialViewX;
  final Listener listener;
  protected final Context localisedContext;
  protected ViewGroup overlayRoot;
  protected int position;
  protected final int screenHeight;
  
  protected InAppNotification(Context paramContext, Conversation paramConversation, int paramInt1, int paramInt2, Listener paramListener, Provider<AppConfig> paramProvider)
  {
    this.conversation = paramConversation;
    this.listener = paramListener;
    this.position = paramInt1;
    this.screenHeight = paramInt2;
    this.localisedContext = paramContext;
    this.appConfigProvider = paramProvider;
  }
  
  private void animateOffScreen(View paramView)
  {
    int i = ScreenUtils.dpToPx(200.0F, paramView.getContext());
    if (paramView.getX() > this.initialViewX) {}
    for (float f = i + getParentOrScreenWidth(paramView);; f = paramView.getWidth() * -1 - i)
    {
      paramView.animate().setInterpolator(new OvershootInterpolator(0.6F)).translationX(f).setDuration(300L).setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          InAppNotification.this.listener.onInAppNotificationDismiss(InAppNotification.this);
        }
      }).start();
      return;
    }
  }
  
  private void animateToOriginalPosition(View paramView)
  {
    paramView.animate().setInterpolator(new OvershootInterpolator(0.6F)).translationX(0.0F).setDuration(300L).start();
  }
  
  private int getParentOrScreenWidth(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent instanceof View)) {
      return ((View)localViewParent).getWidth();
    }
    return paramView.getResources().getDisplayMetrics().widthPixels;
  }
  
  protected void animateToBackOfStack(Context paramContext)
  {
    Object localObject = paramContext.getResources();
    int i = (int)((Resources)localObject).getDimension(R.dimen.intercom_notification_preview_height);
    int j = ScreenUtils.dpToPx(this.position * 8 + 16, paramContext);
    i = this.screenHeight - (((Resources)localObject).getDimensionPixelSize(R.dimen.intercom_bottom_padding) + (i + j) + this.bottomPadding);
    j = ScreenUtils.dpToPx(8.0F, paramContext);
    paramContext = PropertyValuesHolder.ofFloat(View.Y, new float[] { j + i, i });
    localObject = PropertyValuesHolder.ofFloat(View.ALPHA, new float[] { this.overlayRoot.getAlpha(), 1.0F });
    PropertyValuesHolder localPropertyValuesHolder = PropertyValuesHolder.ofFloat(View.SCALE_X, new float[] { 0.85F, 1.0F - this.position * 0.05F });
    ObjectAnimator.ofPropertyValuesHolder(this.overlayRoot, new PropertyValuesHolder[] { paramContext, localObject, localPropertyValuesHolder }).setDuration(200L).start();
  }
  
  protected void animateToPosition(Context paramContext)
  {
    Object localObject = paramContext.getResources();
    int i = (int)((Resources)localObject).getDimension(R.dimen.intercom_notification_preview_height);
    int j = ScreenUtils.dpToPx(this.position * 8 + 16, paramContext);
    int k = this.screenHeight;
    int m = ((Resources)localObject).getDimensionPixelSize(R.dimen.intercom_bottom_padding);
    int n = this.bottomPadding;
    paramContext = PropertyValuesHolder.ofFloat("y", new float[] { this.overlayRoot.getY(), k - (m + (i + j) + n) });
    localObject = PropertyValuesHolder.ofFloat("scaleX", new float[] { this.overlayRoot.getScaleX(), 1.0F - this.position * 0.05F });
    ObjectAnimator.ofPropertyValuesHolder(this.overlayRoot, new PropertyValuesHolder[] { paramContext, localObject }).setDuration(200L).start();
  }
  
  protected void beginListeningForTouchEvents()
  {
    this.overlayRoot.setOnTouchListener(this);
  }
  
  public abstract void display(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater, boolean paramBoolean, int paramInt);
  
  public void display(ViewGroup paramViewGroup, Conversation paramConversation, LayoutInflater paramLayoutInflater, boolean paramBoolean, int paramInt)
  {
    this.conversation = paramConversation;
    display(paramViewGroup, paramLayoutInflater, paramBoolean, paramInt);
  }
  
  public Conversation getConversation()
  {
    return this.conversation;
  }
  
  protected CharSequence getHeaderText()
  {
    if (this.conversation.isAdminReply()) {
      return Phrase.from(this.localisedContext, R.string.intercom_reply_from_admin).put("name", this.conversation.getLastAdmin().getForename()).format();
    }
    return Phrase.from(this.localisedContext, R.string.intercom_teammate_from_company).put("name", this.conversation.getLastAdmin().getForename()).put("company", ((AppConfig)this.appConfigProvider.get()).getName()).format();
  }
  
  public int getPosition()
  {
    return this.position;
  }
  
  protected View getRootView()
  {
    return this.overlayRoot;
  }
  
  public boolean isAttached()
  {
    return this.overlayRoot.getParent() != null;
  }
  
  public void moveBackward(ViewGroup paramViewGroup)
  {
    moveBackward(paramViewGroup, new AnimatorListenerAdapter() {});
  }
  
  public abstract void moveBackward(ViewGroup paramViewGroup, AnimatorListenerAdapter paramAnimatorListenerAdapter);
  
  public void moveForward(ViewGroup paramViewGroup, LayoutInflater paramLayoutInflater)
  {
    this.position -= 1;
    if (this.position < 0) {
      if ((this.overlayRoot != null) && ((this.overlayRoot.getParent() instanceof ViewGroup))) {
        ((ViewGroup)this.overlayRoot.getParent()).removeView(this.overlayRoot);
      }
    }
    do
    {
      return;
      if (this.position == 0)
      {
        animateToPosition(paramViewGroup.getContext());
        beginListeningForTouchEvents();
        return;
      }
      if (this.position == 1)
      {
        animateToPosition(paramViewGroup.getContext());
        return;
      }
    } while (this.position != 2);
    display(paramViewGroup, paramLayoutInflater, false, this.bottomPadding);
    animateToBackOfStack(paramViewGroup.getContext());
  }
  
  protected abstract void onNotificationPressed(View paramView);
  
  protected abstract void onNotificationReleased(View paramView);
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    float f = (paramMotionEvent.getRawX() - this.initialTouchX) / 2.0F;
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      return true;
      this.initialViewX = paramView.getX();
      this.initialTouchX = paramMotionEvent.getRawX();
      onNotificationPressed(getRootView());
      continue;
      paramView.setX(f + this.initialViewX);
      continue;
      f = Math.abs(f);
      if (f < 5.0F)
      {
        this.listener.onInAppNotificationTap(this.conversation);
      }
      else if (f > ScreenUtils.dpToPx(80.0F, this.localisedContext))
      {
        stopListeningForTouchEvents();
        animateOffScreen(paramView);
      }
      else
      {
        onNotificationReleased(getRootView());
        animateToOriginalPosition(paramView);
      }
    }
  }
  
  protected void performReplyPulse(View paramView1, final View paramView2, final Runnable paramRunnable)
  {
    paramView1 = ObjectAnimator.ofPropertyValuesHolder(paramView1, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.SCALE_X, new float[] { 1.0F, 1.05F }), PropertyValuesHolder.ofFloat(View.SCALE_Y, new float[] { 1.0F, 1.05F }) }).setDuration(150L);
    paramView1.setRepeatCount(1);
    paramView1.setRepeatMode(2);
    paramView1.start();
    paramView1 = ObjectAnimator.ofFloat(paramView2, View.ALPHA, new float[] { 1.0F, 0.0F }).setDuration(200L);
    paramView1.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        InAppNotification.this.updateViewDataDuringReplyPulse(InAppNotification.this.bottomPadding);
        paramAnonymousAnimator = ObjectAnimator.ofFloat(paramView2, View.ALPHA, new float[] { 0.0F, 1.0F }).setDuration(200L);
        paramAnonymousAnimator.setStartDelay(100L);
        paramAnonymousAnimator.start();
        paramAnonymousAnimator.addListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymous2Animator)
          {
            InAppNotification.3.this.val$updateEndAction.run();
          }
        });
      }
    });
    paramView1.start();
  }
  
  public void removeView()
  {
    View localView = getRootView();
    if ((localView != null) && (localView.getParent() != null)) {
      ((ViewGroup)localView.getParent()).removeView(localView);
    }
  }
  
  public void setPosition(int paramInt)
  {
    this.position = paramInt;
  }
  
  protected void stopListeningForTouchEvents()
  {
    this.overlayRoot.setOnTouchListener(null);
  }
  
  public abstract void update(Conversation paramConversation, Runnable paramRunnable);
  
  public void updateBottomPadding(final Context paramContext, int paramInt)
  {
    if ((this.bottomPadding != paramInt) && (this.overlayRoot != null))
    {
      this.bottomPadding = paramInt;
      Object localObject = paramContext.getResources();
      int i = ScreenUtils.dpToPx(this.position * 8 + 16, paramContext);
      int j = ((Resources)localObject).getDimensionPixelSize(R.dimen.intercom_bottom_padding);
      paramContext = (FrameLayout.LayoutParams)this.overlayRoot.getLayoutParams();
      localObject = ValueAnimator.ofInt(new int[] { paramContext.bottomMargin, j + i + paramInt });
      ((ValueAnimator)localObject).setDuration(300L);
      ((ValueAnimator)localObject).addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          paramContext.setMargins(paramContext.leftMargin, paramContext.topMargin, paramContext.rightMargin, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
          InAppNotification.this.overlayRoot.setLayoutParams(paramContext);
        }
      });
      ((ValueAnimator)localObject).start();
    }
  }
  
  protected abstract void updateViewDataDuringReplyPulse(int paramInt);
  
  static abstract interface Listener
  {
    public abstract void onInAppNotificationDismiss(InAppNotification paramInAppNotification);
    
    public abstract void onInAppNotificationTap(Conversation paramConversation);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/InAppNotification.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */