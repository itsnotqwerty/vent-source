package io.intercom.android.sdk.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.support.v4.content.a;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewPropertyAnimator;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.AvatarUtils;

public class IntercomToolbar
  extends Toolbar
  implements View.OnClickListener, View.OnTouchListener
{
  private static final int TITLE_FADE_DURATION_MS = 150;
  private final View activeStateView;
  private final ImageView avatar;
  private final ImageButton backButton;
  private final BackButtonCountDrawable backButtonCountDrawable;
  private final ImageButton close;
  private Listener listener;
  private final TextView subtitle;
  final TextView title;
  
  public IntercomToolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public IntercomToolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = inflate(paramContext, R.layout.intercom_toolbar, this);
    paramContext.setOnTouchListener(this);
    this.title = ((TextView)paramContext.findViewById(R.id.intercom_toolbar_title));
    this.subtitle = ((TextView)paramContext.findViewById(R.id.intercom_toolbar_subtitle));
    this.close = ((ImageButton)paramContext.findViewById(R.id.intercom_toolbar_close));
    this.backButton = ((ImageButton)paramContext.findViewById(R.id.intercom_toolbar_inbox));
    this.avatar = ((ImageView)paramContext.findViewById(R.id.intercom_toolbar_avatar));
    this.activeStateView = paramContext.findViewById(R.id.intercom_toolbar_avatar_active_state);
    this.backButtonCountDrawable = new BackButtonCountDrawable(getContext(), null);
    this.backButton.setImageDrawable(this.backButtonCountDrawable);
    this.backButton.setOnClickListener(this);
    this.close.setOnClickListener(this);
  }
  
  public void fadeOutTitle(int paramInt)
  {
    this.title.animate().alpha(0.0F).setDuration(paramInt).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        IntercomToolbar.this.title.setText(null);
      }
    }).start();
  }
  
  public void onClick(View paramView)
  {
    if (this.listener == null) {}
    int i;
    do
    {
      return;
      i = paramView.getId();
      if (i == R.id.intercom_toolbar_close)
      {
        this.listener.onCloseClicked();
        return;
      }
    } while (i != R.id.intercom_toolbar_inbox);
    this.listener.onInboxClicked();
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (this.listener == null) {}
    while ((paramMotionEvent.getAction() != 1) || (paramView.getId() != R.id.intercom_toolbar)) {
      return false;
    }
    this.listener.onToolbarClicked();
    return false;
  }
  
  public void setCloseButtonVisibility(int paramInt)
  {
    this.close.setVisibility(paramInt);
  }
  
  public void setInboxButtonVisibility(int paramInt)
  {
    this.backButton.setVisibility(paramInt);
  }
  
  public void setListener(Listener paramListener)
  {
    this.listener = paramListener;
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.subtitle.setText(paramCharSequence);
    if (!TextUtils.isEmpty(paramCharSequence)) {
      this.subtitle.setAlpha(1.0F);
    }
  }
  
  public void setSubtitleVisibility(int paramInt)
  {
    this.subtitle.setVisibility(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      fadeOutTitle(150);
      return;
    }
    this.title.setAlpha(1.0F);
    this.title.setText(paramCharSequence);
  }
  
  public void setTitleAnimated(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      fadeOutTitle(150);
      return;
    }
    this.title.setAlpha(0.0F);
    this.title.setText(paramCharSequence);
    this.title.animate().alpha(1.0F).setDuration(150L).start();
  }
  
  public void setUnreadCount(Integer paramInteger)
  {
    BackButtonCountDrawable localBackButtonCountDrawable = this.backButtonCountDrawable;
    if (paramInteger.intValue() > 0) {}
    for (paramInteger = Integer.toString(paramInteger.intValue());; paramInteger = null)
    {
      localBackButtonCountDrawable.setText(paramInteger);
      return;
    }
  }
  
  public void setUpNoteToolbar(Participant paramParticipant, boolean paramBoolean, ActiveStatePresenter paramActiveStatePresenter, AppConfig paramAppConfig, j paramj)
  {
    this.title.setTextColor(a.c(getContext(), R.color.intercom_note_title_grey));
    this.subtitle.setTextColor(a.c(getContext(), R.color.intercom_note_grey));
    this.close.setColorFilter(a.c(getContext(), R.color.intercom_grey_500));
    this.backButton.setVisibility(8);
    this.avatar.setVisibility(0);
    this.activeStateView.setVisibility(0);
    this.title.setTextSize(14.0F);
    this.subtitle.setAlpha(1.0F);
    View localView = findViewById(R.id.intercom_toolbar_divider);
    localView.setVisibility(0);
    localView.setBackgroundColor(-16777216);
    AvatarUtils.loadAvatarIntoView(paramParticipant.getAvatar(), this.avatar, paramAppConfig, paramj);
    paramActiveStatePresenter.presentStateDot(paramBoolean, this.activeStateView, paramAppConfig);
  }
  
  public void setUpPostToolbar(Participant paramParticipant, boolean paramBoolean, ActiveStatePresenter paramActiveStatePresenter, AppConfig paramAppConfig, j paramj)
  {
    setBackgroundColor(0);
    this.title.setTextColor(-1);
    this.close.setColorFilter(-1);
    this.backButton.setVisibility(8);
    this.avatar.setVisibility(0);
    this.activeStateView.setVisibility(0);
    this.title.setTextSize(14.0F);
    this.subtitle.setAlpha(0.7F);
    findViewById(R.id.intercom_toolbar_divider).setVisibility(0);
    AvatarUtils.loadAvatarIntoView(paramParticipant.getAvatar(), this.avatar, paramAppConfig, paramj);
    paramActiveStatePresenter.presentStateDot(paramBoolean, this.activeStateView, paramAppConfig);
  }
  
  public static abstract interface Listener
  {
    public abstract void onCloseClicked();
    
    public abstract void onInboxClicked();
    
    public abstract void onToolbarClicked();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/IntercomToolbar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */