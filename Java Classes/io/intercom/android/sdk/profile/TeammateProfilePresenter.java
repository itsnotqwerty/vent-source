package io.intercom.android.sdk.profile;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.v4.content.a;
import android.text.TextUtils;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Space;
import android.widget.TextView;
import io.intercom.a.a.a.c.d.c.c;
import io.intercom.a.a.a.g.g;
import io.intercom.a.a.a.i;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Avatar;
import io.intercom.android.sdk.models.LastParticipatingAdmin;
import io.intercom.android.sdk.models.Location;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.SocialAccount;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.GroupConversationTextFormatter;
import io.intercom.android.sdk.utilities.ImageUtils;
import io.intercom.android.sdk.utilities.IntentUtils;
import io.intercom.android.sdk.utilities.LocationFormatter;
import io.intercom.android.sdk.views.ActiveStatePresenter;
import java.util.Date;
import java.util.List;

class TeammateProfilePresenter
{
  private static final int FADE_DURATION_MS = 150;
  private final ActiveStatePresenter activeStatePresenter;
  private final View activeStateView;
  private final Provider<AppConfig> appConfigProvider;
  private final LinearLayout avatarHolder;
  private final Drawable avatarStroke;
  private final ImageView avatarView1;
  private final ImageView avatarView2;
  private final ImageView avatarView3;
  private final ImageView backgroundImageView;
  private final TextView bioView;
  private final int borderSize;
  private final Space bottomSpacer;
  private final LinearLayout groupConversationBanner;
  Location lastAdminLocation;
  private final ImageButton linkedInButton;
  final TextView locationView;
  private final ProfilePresenter profilePresenter;
  private final j requestManager;
  private final TextView roleView;
  private final ViewGroup rootLayout;
  private final LinearLayout socialLayout;
  private final TextView subtitleView;
  private final Runnable timeUpdate = new Runnable()
  {
    public void run()
    {
      TeammateProfilePresenter.this.locationView.removeCallbacks(this);
      CharSequence localCharSequence = LocationFormatter.getLocationString(TeammateProfilePresenter.this.locationView.getContext(), TeammateProfilePresenter.this.lastAdminLocation, new Date());
      TeammateProfilePresenter.this.setTextAndVisibility(TeammateProfilePresenter.this.locationView, localCharSequence);
      LocationFormatter.postOnNextMinute(TeammateProfilePresenter.this.locationView, this, TimeProvider.SYSTEM);
    }
  };
  private final TextView titleView;
  private final TextView titleViewNameOnly;
  private final ProfileToolbarBehavior toolbarBehavior;
  private final Space topSpacer;
  private final ImageButton twitterButton;
  
  TeammateProfilePresenter(CoordinatorLayout paramCoordinatorLayout, int paramInt, ProfilePresenter paramProfilePresenter, Provider<AppConfig> paramProvider, j paramj)
  {
    this.profilePresenter = paramProfilePresenter;
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
    this.rootLayout = ((ViewGroup)paramCoordinatorLayout.findViewById(R.id.intercom_teammate_profile_container_view));
    this.rootLayout.setBackgroundColor(paramInt);
    this.topSpacer = ((Space)this.rootLayout.findViewById(R.id.intercom_avatar_spacer));
    this.bottomSpacer = ((Space)this.rootLayout.findViewById(R.id.intercom_bottom_spacer));
    this.titleView = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_title));
    this.titleViewNameOnly = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_title_name_only));
    this.subtitleView = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_subtitle));
    this.roleView = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_role));
    this.locationView = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_location));
    this.bioView = ((TextView)this.rootLayout.findViewById(R.id.intercom_collapsing_bio));
    this.avatarView1 = ((ImageView)this.rootLayout.findViewById(R.id.intercom_collapsing_teammate_avatar1));
    this.avatarView2 = ((ImageView)this.rootLayout.findViewById(R.id.intercom_collapsing_teammate_avatar2));
    this.avatarView3 = ((ImageView)this.rootLayout.findViewById(R.id.intercom_collapsing_teammate_avatar3));
    this.activeStateView = this.rootLayout.findViewById(R.id.intercom_collapsing_teammate_active_state);
    this.twitterButton = ((ImageButton)this.rootLayout.findViewById(R.id.twitter_button));
    this.linkedInButton = ((ImageButton)this.rootLayout.findViewById(R.id.linkedin_button));
    this.backgroundImageView = ((ImageView)paramCoordinatorLayout.findViewById(R.id.collapsing_background_image));
    this.socialLayout = ((LinearLayout)paramCoordinatorLayout.findViewById(R.id.social_button_layout));
    this.groupConversationBanner = ((LinearLayout)paramCoordinatorLayout.findViewById(R.id.intercom_group_conversations_banner));
    this.avatarHolder = ((LinearLayout)paramCoordinatorLayout.findViewById(R.id.intercom_group_avatar_holder));
    this.toolbarBehavior = new TeammateProfileToolbarBehavior(this.rootLayout);
    this.activeStatePresenter = new ActiveStatePresenter();
    this.borderSize = ScreenUtils.dpToPx(2.0F, paramCoordinatorLayout.getContext());
    this.avatarStroke = a.a(paramCoordinatorLayout.getContext(), R.drawable.intercom_solid_circle);
    this.avatarStroke.setColorFilter(((AppConfig)paramProvider.get()).getBaseColor(), PorterDuff.Mode.MULTIPLY);
    BackgroundUtils.setBackground(this.avatarView1, this.avatarStroke);
    BackgroundUtils.setBackground(this.avatarView2, this.avatarStroke);
    BackgroundUtils.setBackground(this.avatarView3, this.avatarStroke);
    this.avatarView1.setPadding(this.borderSize, this.borderSize, this.borderSize, this.borderSize);
    this.avatarView2.setPadding(this.borderSize, this.borderSize, this.borderSize, this.borderSize);
    this.avatarView3.setPadding(this.borderSize, this.borderSize, this.borderSize, this.borderSize);
  }
  
  private void setGroupConversationParticipants(List<Participant> paramList, int paramInt)
  {
    Context localContext;
    int j;
    int i;
    int k;
    if (paramList.size() > 0)
    {
      this.groupConversationBanner.setVisibility(0);
      this.avatarHolder.removeAllViews();
      localContext = this.avatarHolder.getContext();
      j = ScreenUtils.dpToPx(8.0F, localContext);
      i = localContext.getResources().getDimensionPixelSize(R.dimen.intercom_group_conversations_banner_padding);
      k = localContext.getResources().getDimensionPixelSize(R.dimen.intercom_teammate_avatar_size);
      paramInt = (paramInt - i * 2) / (k + j);
      if (paramInt <= paramList.size()) {
        break label324;
      }
      paramInt = paramList.size();
    }
    label99:
    label324:
    for (;;)
    {
      i = 0;
      if (i < paramInt)
      {
        Object localObject;
        if ((i == paramInt - 1) && (paramInt < paramList.size()))
        {
          localObject = new TextView(localContext);
          ((TextView)localObject).setLayoutParams(new LinearLayout.LayoutParams(k, k));
          ((TextView)localObject).setTextColor(-1);
          ((TextView)localObject).setGravity(17);
          int m = paramList.size();
          ((TextView)localObject).setText("+" + (m - paramInt + 1));
          this.avatarHolder.addView((View)localObject);
        }
        for (;;)
        {
          i += 1;
          break label99;
          this.groupConversationBanner.setVisibility(8);
          break;
          localObject = (Participant)paramList.get(i);
          if (localObject != Participant.NULL)
          {
            ImageView localImageView = new ImageView(localContext);
            LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(k, k);
            localLayoutParams.setMargins(0, 0, j, 0);
            localImageView.setLayoutParams(localLayoutParams);
            AvatarUtils.loadAvatarIntoView(((Participant)localObject).getAvatar(), localImageView, (AppConfig)this.appConfigProvider.get(), this.requestManager);
            this.avatarHolder.addView(localImageView);
          }
        }
      }
      return;
    }
  }
  
  private void setSocialAccounts(final SocialAccount paramSocialAccount1, final SocialAccount paramSocialAccount2, final Context paramContext)
  {
    if (paramSocialAccount1 == SocialAccount.NULL)
    {
      this.twitterButton.setVisibility(8);
      if (paramSocialAccount2 != SocialAccount.NULL) {
        break label94;
      }
      this.linkedInButton.setVisibility(8);
    }
    for (;;)
    {
      if ((this.linkedInButton.getVisibility() != 8) || (this.twitterButton.getVisibility() != 8)) {
        break label122;
      }
      this.socialLayout.setVisibility(8);
      return;
      this.twitterButton.setVisibility(0);
      this.twitterButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent("android.intent.action.VIEW");
          paramAnonymousView.setData(Uri.parse(paramSocialAccount1.getProfileUrl()));
          IntentUtils.safelyOpenIntent(paramContext, paramAnonymousView);
        }
      });
      break;
      label94:
      this.linkedInButton.setVisibility(0);
      this.linkedInButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent("android.intent.action.VIEW");
          paramAnonymousView.setData(Uri.parse(paramSocialAccount2.getProfileUrl()));
          IntentUtils.safelyOpenIntent(paramContext, paramAnonymousView);
        }
      });
    }
    label122:
    this.socialLayout.setVisibility(0);
  }
  
  private void setToolbarBackground(Avatar paramAvatar, int paramInt)
  {
    paramAvatar = paramAvatar.getImageUrl();
    if (!TextUtils.isEmpty(paramAvatar)) {
      this.requestManager.eT(paramAvatar).a(c.Ji()).a(new g().b(ImageUtils.getDiskCacheStrategy(paramAvatar)).aO(this.rootLayout.getMeasuredWidth(), paramInt)).c(this.backgroundImageView);
    }
  }
  
  ViewGroup getRootLayout()
  {
    return this.rootLayout;
  }
  
  ProfileToolbarBehavior getToolbarBehavior()
  {
    return this.toolbarBehavior;
  }
  
  void setPresence(LastParticipatingAdmin paramLastParticipatingAdmin, List<Participant> paramList, CharSequence paramCharSequence, int paramInt, AppBarLayout paramAppBarLayout, ProfilePresenter.ProfileState paramProfileState, View paramView1, View paramView2)
  {
    paramAppBarLayout.b(this.toolbarBehavior);
    boolean bool;
    if (this.rootLayout.getAlpha() < 1.0F)
    {
      if (!this.profilePresenter.isDidShowUnknown()) {
        break label474;
      }
      this.rootLayout.setAlpha(1.0F);
      paramView1.setAlpha(0.0F);
      if (paramProfileState != ProfilePresenter.ProfileState.EXPANDED) {
        break label468;
      }
      bool = true;
      paramAppBarLayout.a(bool, true, true);
      this.profilePresenter.setDidShowUnknown(false);
    }
    for (;;)
    {
      paramAppBarLayout = this.rootLayout.getContext();
      this.titleView.setText(GroupConversationTextFormatter.groupConversationTitle(paramLastParticipatingAdmin.getFirstName(), paramList.size(), paramAppBarLayout));
      this.titleViewNameOnly.setText(paramLastParticipatingAdmin.getFirstName());
      setTeammateSubtitle(paramCharSequence);
      int i = paramList.size();
      AvatarUtils.loadAvatarIntoView(paramLastParticipatingAdmin.getAvatar(), this.avatarView1, (AppConfig)this.appConfigProvider.get(), this.requestManager);
      if (i > 0) {
        AvatarUtils.loadAvatarIntoView(((Participant)paramList.get(i - 1)).getAvatar(), this.avatarView2, (AppConfig)this.appConfigProvider.get(), this.requestManager);
      }
      if (i > 1) {
        AvatarUtils.loadAvatarIntoView(((Participant)paramList.get(i - 2)).getAvatar(), this.avatarView3, (AppConfig)this.appConfigProvider.get(), this.requestManager);
      }
      this.activeStateView.setVisibility(0);
      this.activeStatePresenter.presentStateDot(paramLastParticipatingAdmin.isActive(), this.activeStateView, (AppConfig)this.appConfigProvider.get());
      setTextAndVisibility(this.roleView, paramLastParticipatingAdmin.getJobTitle());
      this.lastAdminLocation = paramLastParticipatingAdmin.getLocation();
      this.timeUpdate.run();
      setTextAndVisibility(this.bioView, paramLastParticipatingAdmin.getIntro());
      setSocialAccounts(paramLastParticipatingAdmin.getTwitter(), paramLastParticipatingAdmin.getLinkedIn(), paramAppBarLayout);
      i = paramInt;
      if (paramInt == 0) {
        i = ScreenUtils.getScreenDimensions(paramAppBarLayout).x;
      }
      setGroupConversationParticipants(paramList, i);
      paramInt = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
      this.rootLayout.measure(paramInt, 0);
      paramInt = this.rootLayout.getMeasuredHeight();
      paramView2.getLayoutParams().height = paramInt;
      paramView2.requestLayout();
      this.backgroundImageView.getLayoutParams().height = paramInt;
      paramList = paramAppBarLayout.getResources();
      this.rootLayout.getLayoutParams().height = paramList.getDimensionPixelSize(R.dimen.intercom_toolbar_height);
      this.rootLayout.requestLayout();
      this.profilePresenter.applyOffsetChangedListener(this.toolbarBehavior);
      setToolbarBackground(paramLastParticipatingAdmin.getAvatar(), paramInt);
      return;
      label468:
      bool = false;
      break;
      label474:
      this.rootLayout.animate().alpha(1.0F).setDuration(150L).start();
      paramView1.animate().alpha(0.0F).setDuration(150L).start();
    }
  }
  
  void setTeammateSubtitle(CharSequence paramCharSequence)
  {
    this.subtitleView.setText(paramCharSequence);
  }
  
  void setTextAndVisibility(TextView paramTextView, CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
    paramTextView.setText(paramCharSequence);
    this.topSpacer.setVisibility(0);
  }
  
  void stopUpdatingTime()
  {
    this.locationView.removeCallbacks(this.timeUpdate);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/profile/TeammateProfilePresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */