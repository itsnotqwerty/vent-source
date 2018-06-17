package io.intercom.android.sdk.profile;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.text.TextUtils;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Avatar;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.utilities.AvatarUtils;
import java.util.Arrays;
import java.util.List;

class TeamProfilePresenter
{
  private final List<TextView> adminNameViews;
  private final Provider<AppConfig> appConfigProvider;
  private final LinearLayout avatarLayout;
  private final List<ImageView> avatarViews;
  private final TextView bioView;
  private final TextView collapsedOfficeHours;
  private final TextView collapsedToolbarTitle;
  private final ProfilePresenter profilePresenter;
  private final ViewGroup rootLayout;
  private final ProfileToolbarBehavior toolbarBehavior;
  
  TeamProfilePresenter(CoordinatorLayout paramCoordinatorLayout, int paramInt, ProfilePresenter paramProfilePresenter, Provider<AppConfig> paramProvider)
  {
    this.profilePresenter = paramProfilePresenter;
    this.rootLayout = ((ViewGroup)paramCoordinatorLayout.findViewById(R.id.intercom_team_profile));
    this.appConfigProvider = paramProvider;
    this.rootLayout.setBackgroundColor(paramInt);
    this.rootLayout.setAlpha(0.0F);
    this.collapsedToolbarTitle = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_title));
    this.collapsedOfficeHours = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_office_hours));
    this.avatarLayout = ((LinearLayout)this.rootLayout.findViewById(R.id.intercom_team_profiles_layout));
    this.avatarViews = Arrays.asList(new ImageView[] { (ImageView)this.rootLayout.findViewById(R.id.intercom_collapsing_team_avatar1), (ImageView)this.rootLayout.findViewById(R.id.intercom_collapsing_team_avatar2), (ImageView)this.rootLayout.findViewById(R.id.intercom_collapsing_team_avatar3) });
    this.adminNameViews = Arrays.asList(new TextView[] { (TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_team_name_1), (TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_team_name_2), (TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_team_name_3) });
    this.bioView = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_team_bio));
    this.toolbarBehavior = new TeamProfileToolbarBehavior(this.rootLayout);
  }
  
  private void setAvatar(Avatar paramAvatar, ImageView paramImageView, j paramj)
  {
    paramImageView.setVisibility(0);
    AvatarUtils.loadAvatarIntoView(paramAvatar, paramImageView, (AppConfig)this.appConfigProvider.get(), paramj);
  }
  
  private void setProfileTextView(TextView paramTextView, CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
    paramTextView.setText(paramCharSequence);
  }
  
  ViewGroup getRootLayout()
  {
    return this.rootLayout;
  }
  
  ProfileToolbarBehavior getToolbarBehavior()
  {
    return this.toolbarBehavior;
  }
  
  void setPresence(TeamPresence paramTeamPresence, int paramInt, AppBarLayout paramAppBarLayout, View paramView1, View paramView2, j paramj)
  {
    paramAppBarLayout.b(this.toolbarBehavior);
    if ((this.rootLayout.getAlpha() < 1.0F) || (this.avatarLayout.getVisibility() == 8))
    {
      paramView1.setAlpha(0.0F);
      this.rootLayout.setAlpha(1.0F);
      if (this.profilePresenter.isDidShowUnknown())
      {
        paramView2.requestLayout();
        paramAppBarLayout.a(true, true, true);
        this.profilePresenter.setDidShowUnknown(false);
      }
    }
    paramAppBarLayout = paramTeamPresence.getActiveAdmins();
    int i;
    if (paramAppBarLayout.isEmpty())
    {
      this.avatarLayout.setVisibility(8);
      setProfileTextView(this.bioView, ((AppConfig)this.appConfigProvider.get()).getTeamProfileBio());
      paramTeamPresence = this.rootLayout.getContext();
      i = paramInt;
      if (paramInt == 0) {
        i = ScreenUtils.getScreenDimensions(paramTeamPresence).x;
      }
      if (Build.VERSION.SDK_INT < 16) {
        break label478;
      }
    }
    label478:
    for (paramInt = this.collapsedOfficeHours.getMaxLines();; paramInt = 1)
    {
      i = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
      this.rootLayout.measure(i, 0);
      paramTeamPresence = paramTeamPresence.getResources();
      paramView2.getLayoutParams().height = (this.rootLayout.getMeasuredHeight() + paramTeamPresence.getDimensionPixelSize(R.dimen.intercom_team_profile_translation_y));
      this.rootLayout.getLayoutParams().height = paramTeamPresence.getDimensionPixelSize(R.dimen.intercom_toolbar_height);
      paramView2.requestLayout();
      this.collapsedOfficeHours.setMaxLines(paramInt);
      this.rootLayout.requestLayout();
      this.profilePresenter.applyOffsetChangedListener(this.toolbarBehavior);
      return;
      this.avatarLayout.setVisibility(0);
      if (TextUtils.isEmpty(paramTeamPresence.getOfficeHours()))
      {
        this.rootLayout.findViewById(R.id.intercom_office_hours_banner).setVisibility(8);
        this.collapsedOfficeHours.setText(paramTeamPresence.getExpectedResponseDelay());
      }
      for (;;)
      {
        i = 0;
        while ((i < this.avatarViews.size()) && (i < paramAppBarLayout.size()))
        {
          paramTeamPresence = (ImageView)this.avatarViews.get(i);
          paramView1 = (TextView)this.adminNameViews.get(i);
          Participant localParticipant = (Participant)paramAppBarLayout.get(i);
          setAvatar(localParticipant.getAvatar(), paramTeamPresence, paramj);
          paramTeamPresence.setVisibility(0);
          paramView1.setText(localParticipant.getForename());
          paramView1.setVisibility(0);
          i += 1;
        }
        break;
        this.rootLayout.findViewById(R.id.intercom_team_profile_separator).setVisibility(8);
        this.collapsedOfficeHours.setText(paramTeamPresence.getOfficeHours());
        this.collapsedOfficeHours.setCompoundDrawablesWithIntrinsicBounds(R.drawable.intercom_snooze, 0, 0, 0);
        this.collapsedOfficeHours.setCompoundDrawablePadding(ScreenUtils.dpToPx(6.0F, this.rootLayout.getContext()));
      }
    }
  }
  
  void setTeamCollapsingTitle(CharSequence paramCharSequence)
  {
    this.collapsedToolbarTitle.setText(paramCharSequence);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/profile/TeamProfilePresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */