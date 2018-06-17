package io.intercom.android.sdk.profile;

import android.content.Context;
import android.content.res.Resources;
import android.support.design.widget.AppBarLayout;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.utilities.ViewUtils;

class TeammateProfileToolbarBehavior
  extends ProfileToolbarBehavior
{
  private static final float CHANGE_IN_AVATAR_SCALE = 0.5F;
  private static final float CHANGE_IN_TITLE_SCALE = 0.1F;
  private View activeStateCircle;
  private View avatar1;
  private View avatar2;
  private View avatar3;
  private ImageView backgroundView;
  private View bio;
  private View location;
  private final float maxAlpha;
  private final float profileTranslationY;
  private View role;
  private final ViewGroup rootLayout;
  private LinearLayout socialLayout;
  private View subtitle;
  private View title;
  private View titleNameOnly;
  private final float translate18dp;
  private final float translate8dp;
  
  TeammateProfileToolbarBehavior(ViewGroup paramViewGroup)
  {
    super(paramViewGroup.getContext());
    this.rootLayout = paramViewGroup;
    paramViewGroup = paramViewGroup.getContext();
    this.translate8dp = ScreenUtils.dpToPx(8.0F, paramViewGroup);
    this.profileTranslationY = paramViewGroup.getResources().getDimensionPixelSize(R.dimen.intercom_team_profile_translation_y);
    this.translate18dp = ScreenUtils.dpToPx(18.0F, paramViewGroup);
    TypedValue localTypedValue = new TypedValue();
    paramViewGroup.getResources().getValue(R.dimen.intercom_toolbar_image_background_alpha, localTypedValue, true);
    this.maxAlpha = localTypedValue.getFloat();
  }
  
  private void translateY(View paramView1, View paramView2, float paramFloat)
  {
    paramView1.setTranslationY((int)Math.max(0.0F, paramFloat / 100.0F * getScrollPercentage(paramView2)));
  }
  
  private void updateAvatar(ViewGroup paramViewGroup, View paramView, float paramFloat)
  {
    if (this.avatar1 == null) {
      this.avatar1 = paramViewGroup.findViewById(R.id.intercom_collapsing_teammate_avatar1);
    }
    if (this.avatar2 == null) {
      this.avatar2 = paramViewGroup.findViewById(R.id.intercom_collapsing_teammate_avatar2);
    }
    if (this.avatar3 == null) {
      this.avatar3 = paramViewGroup.findViewById(R.id.intercom_collapsing_teammate_avatar3);
    }
    if (this.activeStateCircle == null) {
      this.activeStateCircle = paramViewGroup.findViewById(R.id.intercom_collapsing_teammate_active_state);
    }
    paramViewGroup = paramViewGroup.getContext().getResources();
    float f2 = paramViewGroup.getDimensionPixelSize(R.dimen.intercom_teammate_avatar_size);
    float f3 = paramViewGroup.getDimensionPixelSize(R.dimen.intercom_teammate_active_state_size);
    float f1 = f3 / f2;
    f2 = f3 / f2;
    f3 = this.translate8dp / 100.0F * paramFloat;
    this.avatar1.setTranslationX((int)Math.max(f3, 0.0F));
    this.activeStateCircle.setTranslationX((int)Math.max(f3 * (1.0F - f1 + 1.0F), 0.0F));
    f1 = this.profileTranslationY / 100.0F * paramFloat;
    this.avatar1.setTranslationY((int)Math.max(0.0F, f1));
    this.activeStateCircle.setTranslationY((int)Math.max(0.0F, (f2 + 1.0F) * f1));
    paramFloat = 0.005F * paramFloat + 1.0F;
    this.avatar1.setScaleX(paramFloat);
    this.avatar1.setScaleY(paramFloat);
    this.activeStateCircle.setScaleX(paramFloat);
    this.activeStateCircle.setScaleY(paramFloat);
    setAlphaAsPercentageOfScroll(this.avatar2, paramView, 1.0F, true);
    setAlphaAsPercentageOfScroll(this.avatar3, paramView, 1.0F, true);
  }
  
  private void updateBackgroundImage(ViewGroup paramViewGroup, View paramView)
  {
    if (this.backgroundView == null) {
      this.backgroundView = ((ImageView)paramViewGroup.findViewById(R.id.collapsing_background_image));
    }
    setAlphaAsPercentageOfScroll(this.backgroundView, paramView, this.maxAlpha, false);
  }
  
  private void updateBio(ViewGroup paramViewGroup, View paramView)
  {
    if (this.bio == null) {
      this.bio = paramViewGroup.findViewById(R.id.intercom_collapsing_bio);
    }
    translateY(this.bio, paramView, this.profileTranslationY);
    setAlphaAsPercentageOfScroll(this.bio, paramView, 0.7F, false);
  }
  
  private void updateLocation(ViewGroup paramViewGroup, View paramView)
  {
    if (this.location == null) {
      this.location = paramViewGroup.findViewById(R.id.intercom_collapsing_location);
    }
    translateY(this.location, paramView, this.profileTranslationY);
    setAlphaAsPercentageOfScroll(this.location, paramView, 1.0F, false);
  }
  
  private void updateRole(ViewGroup paramViewGroup, View paramView)
  {
    if (this.role == null) {
      this.role = paramViewGroup.findViewById(R.id.intercom_collapsing_role);
    }
    translateY(this.role, paramView, this.profileTranslationY);
    setAlphaAsPercentageOfScroll(this.role, paramView, 1.0F, false);
  }
  
  private void updateSocialButtons(ViewGroup paramViewGroup, View paramView)
  {
    if (this.socialLayout == null) {
      this.socialLayout = ((LinearLayout)paramViewGroup.findViewById(R.id.social_button_layout));
    }
    translateY(this.socialLayout, paramView, this.profileTranslationY);
    setAlphaAsPercentageOfScroll(this.socialLayout, paramView, 1.0F, false);
  }
  
  private void updateTitle(ViewGroup paramViewGroup, View paramView, float paramFloat)
  {
    if (this.title == null) {
      this.title = paramViewGroup.findViewById(R.id.intercom_collapsing_title);
    }
    if (this.titleNameOnly == null) {
      this.titleNameOnly = paramViewGroup.findViewById(R.id.intercom_collapsing_title_name_only);
    }
    if (this.subtitle == null) {
      this.subtitle = paramViewGroup.findViewById(R.id.intercom_collapsing_subtitle);
    }
    setAlphaAsPercentageOfScroll(this.subtitle, paramView, 1.0F, false);
    float f = (int)Math.max(0.0F, ScreenUtils.dpToPx(7.0F, paramView.getContext()) / 100 * paramFloat);
    if (f > 0.0F)
    {
      this.title.setTranslationY(f);
      this.titleNameOnly.setTranslationY(f);
    }
    f = (int)Math.max(0.0F, this.translate18dp / 100.0F * paramFloat);
    if (f > 0.0F) {
      this.subtitle.setTranslationY(f);
    }
    paramFloat = 0.001F * paramFloat + 1.0F;
    this.title.setPivotX(0.0F);
    this.title.setPivotY(0.0F);
    this.title.setScaleX(paramFloat);
    this.title.setScaleY(paramFloat);
    this.titleNameOnly.setPivotX(0.0F);
    this.titleNameOnly.setPivotY(0.0F);
    this.titleNameOnly.setScaleX(paramFloat);
    this.titleNameOnly.setScaleY(paramFloat);
    setAlphaAsPercentageOfScroll(this.title, paramView, 1.0F, true);
    setAlphaAsPercentageOfScroll(this.titleNameOnly, paramView, 1.0F, false);
  }
  
  public void onOffsetChanged(AppBarLayout paramAppBarLayout, int paramInt)
  {
    if (paramAppBarLayout.getHeight() <= this.toolbarHeight) {
      return;
    }
    float f = getScrollPercentage(paramAppBarLayout);
    this.rootLayout.getLayoutParams().height = paramAppBarLayout.getBottom();
    updateAvatar(this.rootLayout, paramAppBarLayout, f);
    updateTitle(this.rootLayout, paramAppBarLayout, f);
    updateRole(this.rootLayout, paramAppBarLayout);
    updateLocation(this.rootLayout, paramAppBarLayout);
    updateBio(this.rootLayout, paramAppBarLayout);
    updateSocialButtons(this.rootLayout, paramAppBarLayout);
    updateBackgroundImage(this.rootLayout, paramAppBarLayout);
    ViewUtils.requestLayoutIfPossible(this.rootLayout);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/profile/TeammateProfileToolbarBehavior.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */