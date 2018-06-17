package io.intercom.android.sdk.profile;

import android.support.design.widget.AppBarLayout;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.utilities.ViewUtils;

class TeamProfileToolbarBehavior
  extends ProfileToolbarBehavior
{
  private static final float CHANGE_IN_SCALE = 0.3F;
  private ImageView avatarMini1;
  private ImageView avatarMini2;
  private ImageView avatarMini3;
  private TextView bio;
  private TextView officeHours;
  private View officeHoursBanner;
  private final ViewGroup rootLayout;
  private View separator;
  private LinearLayout teamProfiles;
  private final float translate16dp;
  
  public TeamProfileToolbarBehavior(ViewGroup paramViewGroup)
  {
    super(paramViewGroup.getContext());
    this.rootLayout = paramViewGroup;
    this.translate16dp = ScreenUtils.dpToPx(16.0F, paramViewGroup.getContext());
  }
  
  private void updateCollapsedAvatars(ViewGroup paramViewGroup, float paramFloat)
  {
    if (this.avatarMini1 == null) {
      this.avatarMini1 = ((ImageView)paramViewGroup.findViewById(R.id.intercom_collapsing_team_avatar1));
    }
    if (this.avatarMini2 == null) {
      this.avatarMini2 = ((ImageView)paramViewGroup.findViewById(R.id.intercom_collapsing_team_avatar2));
    }
    if (this.avatarMini3 == null) {
      this.avatarMini3 = ((ImageView)paramViewGroup.findViewById(R.id.intercom_collapsing_team_avatar3));
    }
    paramFloat = 0.7F + 0.003F * paramFloat;
    this.avatarMini1.setScaleX(paramFloat);
    this.avatarMini2.setScaleX(paramFloat);
    this.avatarMini3.setScaleX(paramFloat);
    this.avatarMini1.setScaleY(paramFloat);
    this.avatarMini2.setScaleY(paramFloat);
    this.avatarMini3.setScaleY(paramFloat);
  }
  
  private void updateCollapsedBio(ViewGroup paramViewGroup, View paramView, float paramFloat)
  {
    if (this.bio == null) {
      this.bio = ((TextView)paramViewGroup.findViewById(R.id.intercom_collapsing_team_bio));
    }
    setAlphaAsPercentageOfScroll(this.bio, paramView, 0.7F, false);
    float f = this.translate16dp / 100.0F;
    this.bio.setTranslationY((int)Math.max(0.0F, f * paramFloat));
  }
  
  private void updateOfficeHours(ViewGroup paramViewGroup, View paramView, float paramFloat)
  {
    if (this.officeHours == null) {
      this.officeHours = ((TextView)paramViewGroup.findViewById(R.id.intercom_collapsing_office_hours));
    }
    if (this.separator == null) {
      this.separator = paramViewGroup.findViewById(R.id.intercom_team_profile_separator);
    }
    if (this.officeHoursBanner == null) {
      this.officeHoursBanner = paramViewGroup.findViewById(R.id.intercom_office_hours_banner);
    }
    setAlphaAsPercentageOfScroll(this.officeHours, paramView, 1.0F, false);
    setAlphaAsPercentageOfScroll(this.separator, paramView, 0.1F, false);
    setAlphaAsPercentageOfScroll(this.officeHoursBanner, paramView, 0.2F, false);
    paramFloat = this.translate16dp / 100.0F * paramFloat;
    this.officeHours.setTranslationY((int)Math.max(0.0F, paramFloat));
    this.separator.setTranslationY((int)Math.max(0.0F, paramFloat));
    this.officeHoursBanner.setTranslationY((int)Math.max(0.0F, paramFloat));
  }
  
  private void updateTeamProfile(ViewGroup paramViewGroup, View paramView, float paramFloat)
  {
    if (this.teamProfiles == null) {
      this.teamProfiles = ((LinearLayout)paramViewGroup.findViewById(R.id.intercom_team_profiles_layout));
    }
    setAlphaAsPercentageOfScroll(this.teamProfiles, paramView, 1.0F, false);
    float f = this.translate16dp / 100.0F;
    this.teamProfiles.setTranslationY((int)Math.max(0.0F, f * paramFloat));
  }
  
  public void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt)
  {
    if (paramAppBarLayout.getHeight() <= this.toolbarHeight) {
      return;
    }
    float f = getScrollPercentage(paramAppBarLayout);
    this.rootLayout.getLayoutParams().height = paramAppBarLayout.getBottom();
    updateCollapsedAvatars(this.rootLayout, f);
    updateTeamProfile(this.rootLayout, paramAppBarLayout, f);
    updateCollapsedBio(this.rootLayout, paramAppBarLayout, f);
    updateOfficeHours(this.rootLayout, paramAppBarLayout, f);
    ViewUtils.requestLayoutIfPossible(this.rootLayout);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/profile/TeamProfileToolbarBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */