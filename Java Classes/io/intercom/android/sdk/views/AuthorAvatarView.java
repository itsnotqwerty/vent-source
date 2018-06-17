package io.intercom.android.sdk.views;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.styleable;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Avatar;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.utilities.AvatarUtils;
import java.util.List;

public class AuthorAvatarView
  extends FrameLayout
{
  private final ActiveStatePresenter activeStatePresenter = new ActiveStatePresenter();
  private final int activeStateSize;
  private final View activeStateView;
  private final int imageViewSize;
  private final ImageView leftImageView;
  private final ImageView rightImageView;
  private final int teamAvatarPadding;
  private final ImageView topImageView;
  
  public AuthorAvatarView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AuthorAvatarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.rightImageView = new ImageView(paramContext);
    this.topImageView = new ImageView(paramContext);
    this.leftImageView = new ImageView(paramContext);
    this.activeStateView = new View(paramContext);
    addView(this.rightImageView);
    addView(this.topImageView);
    addView(this.leftImageView);
    addView(this.activeStateView);
    this.leftImageView.setBackgroundResource(R.drawable.intercom_solid_circle);
    this.rightImageView.setBackgroundResource(R.drawable.intercom_solid_circle);
    this.topImageView.setBackgroundResource(R.drawable.intercom_solid_circle);
    this.activeStateView.setVisibility(8);
    this.teamAvatarPadding = ScreenUtils.dpToPx(1.0F, paramContext);
    this.leftImageView.setPadding(this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding);
    this.rightImageView.setPadding(this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding);
    this.topImageView.setPadding(this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding);
    paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.AuthorAvatarView, 0, 0);
    try
    {
      this.imageViewSize = paramContext.getDimensionPixelSize(R.styleable.AuthorAvatarView_avatarSize, 0);
      this.activeStateSize = paramContext.getDimensionPixelSize(R.styleable.AuthorAvatarView_activeStateSize, 0);
      paramContext.recycle();
      this.activeStateView.setLayoutParams(new FrameLayout.LayoutParams(this.activeStateSize, this.activeStateSize, 85));
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private void loadDefaultDrawable(AppConfig paramAppConfig)
  {
    this.leftImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.leftImageView.setPadding(0, 0, 0, 0);
    setNumberOfVisibleAvatars(1);
    this.activeStateView.setVisibility(8);
    requestLayout();
    this.leftImageView.setImageDrawable(AvatarUtils.getDefaultDrawable(this.leftImageView.getContext(), paramAppConfig));
  }
  
  private void loadThreeAvatars(Participant paramParticipant1, Participant paramParticipant2, Participant paramParticipant3, AppConfig paramAppConfig, j paramj)
  {
    this.leftImageView.setLayoutParams(new FrameLayout.LayoutParams(this.imageViewSize, this.imageViewSize, 83));
    this.leftImageView.setPadding(this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding);
    this.rightImageView.setLayoutParams(new FrameLayout.LayoutParams(this.imageViewSize, this.imageViewSize, 85));
    this.topImageView.setLayoutParams(new FrameLayout.LayoutParams(this.imageViewSize, this.imageViewSize, 49));
    this.activeStateView.setVisibility(8);
    setNumberOfVisibleAvatars(3);
    requestLayout();
    AvatarUtils.loadAvatarIntoView(paramParticipant1.getAvatar(), this.leftImageView, paramAppConfig, paramj);
    AvatarUtils.loadAvatarIntoView(paramParticipant2.getAvatar(), this.rightImageView, paramAppConfig, paramj);
    AvatarUtils.loadAvatarIntoView(paramParticipant3.getAvatar(), this.topImageView, paramAppConfig, paramj);
  }
  
  private void loadTwoAvatars(Participant paramParticipant1, Participant paramParticipant2, AppConfig paramAppConfig, j paramj)
  {
    this.leftImageView.setLayoutParams(new FrameLayout.LayoutParams(this.imageViewSize, this.imageViewSize, 19));
    this.leftImageView.setPadding(this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding, this.teamAvatarPadding);
    this.rightImageView.setLayoutParams(new FrameLayout.LayoutParams(this.imageViewSize, this.imageViewSize, 21));
    setNumberOfVisibleAvatars(2);
    this.activeStateView.setVisibility(8);
    requestLayout();
    AvatarUtils.loadAvatarIntoView(paramParticipant1.getAvatar(), this.leftImageView, paramAppConfig, paramj);
    AvatarUtils.loadAvatarIntoView(paramParticipant2.getAvatar(), this.rightImageView, paramAppConfig, paramj);
  }
  
  private void setNumberOfVisibleAvatars(int paramInt)
  {
    int j = 0;
    ImageView localImageView = this.leftImageView;
    int i;
    if (paramInt > 0)
    {
      i = 0;
      localImageView.setVisibility(i);
      localImageView = this.rightImageView;
      if (paramInt < 2) {
        break label65;
      }
      i = 0;
      label33:
      localImageView.setVisibility(i);
      localImageView = this.topImageView;
      if (paramInt < 3) {
        break label71;
      }
    }
    label65:
    label71:
    for (paramInt = j;; paramInt = 8)
    {
      localImageView.setVisibility(paramInt);
      return;
      i = 8;
      break;
      i = 8;
      break label33;
    }
  }
  
  public void loadAvatar(Avatar paramAvatar, AppConfig paramAppConfig, j paramj)
  {
    this.leftImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.leftImageView.setPadding(0, 0, 0, 0);
    setNumberOfVisibleAvatars(1);
    this.activeStateView.setVisibility(8);
    requestLayout();
    AvatarUtils.loadAvatarIntoView(paramAvatar, this.leftImageView, paramAppConfig, paramj);
  }
  
  public void loadAvatarWithActiveState(Avatar paramAvatar, boolean paramBoolean, AppConfig paramAppConfig, j paramj)
  {
    this.leftImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    this.leftImageView.setPadding(0, 0, 0, 0);
    setNumberOfVisibleAvatars(1);
    this.activeStatePresenter.presentStateDot(paramBoolean, this.activeStateView, paramAppConfig);
    this.activeStateView.setVisibility(0);
    requestLayout();
    AvatarUtils.loadAvatarIntoView(paramAvatar, this.leftImageView, paramAppConfig, paramj);
  }
  
  public void loadAvatars(List<Participant> paramList, AppConfig paramAppConfig, j paramj)
  {
    switch (paramList.size())
    {
    default: 
      loadThreeAvatars((Participant)paramList.get(0), (Participant)paramList.get(1), (Participant)paramList.get(2), paramAppConfig, paramj);
      return;
    case 0: 
      loadDefaultDrawable(paramAppConfig);
      return;
    case 1: 
      loadAvatar(((Participant)paramList.get(0)).getAvatar(), paramAppConfig, paramj);
      return;
    }
    loadTwoAvatars((Participant)paramList.get(0), (Participant)paramList.get(1), paramAppConfig, paramj);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/AuthorAvatarView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */