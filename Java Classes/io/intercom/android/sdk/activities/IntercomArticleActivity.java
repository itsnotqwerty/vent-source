package io.intercom.android.sdk.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.b.b;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.api.BaseCallback;
import io.intercom.android.sdk.api.ErrorObject;
import io.intercom.android.sdk.blocks.BlocksViewHolder;
import io.intercom.android.sdk.blocks.LightboxOpeningImageClickListener;
import io.intercom.android.sdk.blocks.LinkOpeningButtonClickListener;
import io.intercom.android.sdk.blocks.UploadingImageCache;
import io.intercom.android.sdk.blocks.ViewHolderGenerator;
import io.intercom.android.sdk.blocks.models.Author;
import io.intercom.android.sdk.conversation.ReactionInputView;
import io.intercom.android.sdk.conversation.ReactionListener;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.metrics.MetricTracker.ReactionLocation;
import io.intercom.android.sdk.models.Avatar;
import io.intercom.android.sdk.models.Link;
import io.intercom.android.sdk.models.LinkResponse;
import io.intercom.android.sdk.models.LinkResponse.Builder;
import io.intercom.android.sdk.models.Reaction;
import io.intercom.android.sdk.models.ReactionReply;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.TimeFormatter;
import io.intercom.android.sdk.utilities.ViewUtils;
import io.intercom.android.sdk.views.ContentAwareScrollView;
import io.intercom.android.sdk.views.ContentAwareScrollView.Listener;
import io.intercom.android.sdk.views.IntercomErrorView;

public class IntercomArticleActivity
  extends IntercomBaseActivity
{
  private static final int ENTRANCE_ANIMATION_TIME_MS = 300;
  private static final int EXIT_ANIMATION_TIME_MS = 150;
  public static final String LINK_TRANSITION_KEY = "link_background";
  private static final String PARCEL_CONVERSATION_ID = "parcel_conversation_id";
  private static final String PARCEL_LINK_ID = "parcel_link_id";
  private static final String PARCEL_PART_ID = "parcel_part_id";
  Api api;
  private final BaseCallback<LinkResponse.Builder> apiCallback = new BaseCallback()
  {
    protected void onError(ErrorObject paramAnonymousErrorObject)
    {
      IntercomArticleActivity.this.intercomErrorView.setVisibility(0);
      IntercomArticleActivity.this.loadingView.setVisibility(8);
      IntercomArticleActivity.this.scrollView.setVisibility(8);
    }
    
    protected void onSuccess(LinkResponse.Builder paramAnonymousBuilder)
    {
      IntercomArticleActivity.this.scrollView.setVisibility(0);
      IntercomArticleActivity.this.loadingView.setVisibility(8);
      IntercomArticleActivity.this.intercomErrorView.setVisibility(8);
      IntercomArticleActivity.this.updateContent(paramAnonymousBuilder.build().getLink());
      IntercomArticleActivity.this.metricTracker.viewedArticle(IntercomArticleActivity.this.conversationId, IntercomArticleActivity.this.linkId);
    }
  };
  private Provider<AppConfig> appConfigProvider;
  private TextView author;
  private ImageView avatar;
  private int avatarSize;
  private View composerLayout;
  String conversationId = "";
  private TextView description;
  private IntercomErrorView intercomErrorView;
  private LinearLayout linkContainer;
  String linkId = "";
  FrameLayout linkView;
  ProgressBar loadingView;
  MetricTracker metricTracker;
  private BlocksViewHolder noteHolder;
  private String partId = "";
  private ReactionInputView reactionComposer;
  private j requestManager;
  ContentAwareScrollView scrollView;
  private TimeFormatter timeFormatter;
  private TextView title;
  FrameLayout titleBar;
  boolean titleBarEnabled = false;
  TextView titleBarText;
  int titleSize = 0;
  private TextView updated;
  
  public static Intent buildIntent(Context paramContext, String paramString1, String paramString2)
  {
    return buildIntent(paramContext, paramString1, null, paramString2);
  }
  
  public static Intent buildIntent(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = new Intent(paramContext, IntercomArticleActivity.class);
    paramContext.putExtra("parcel_link_id", paramString1);
    if (paramString2 != null) {
      paramContext.putExtra("parcel_part_id", paramString2);
    }
    paramContext.putExtra("parcel_conversation_id", paramString3);
    paramContext.setFlags(268435456);
    return paramContext;
  }
  
  @TargetApi(19)
  private Transition enterTransition()
  {
    ChangeBounds localChangeBounds = new ChangeBounds();
    localChangeBounds.setInterpolator(new b());
    localChangeBounds.setDuration(300L);
    return localChangeBounds;
  }
  
  private void fadeOutView(View paramView)
  {
    paramView.animate().alpha(0.0F).setDuration(150L).start();
  }
  
  @TargetApi(19)
  private Transition returnTransition()
  {
    ChangeBounds localChangeBounds = new ChangeBounds();
    localChangeBounds.setInterpolator(new b());
    localChangeBounds.setDuration(150L);
    return localChangeBounds;
  }
  
  private void setAuthorSpannable(String paramString)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("Written by " + paramString);
    int i = localSpannableStringBuilder.length();
    int j = paramString.length();
    localSpannableStringBuilder.setSpan(new StyleSpan(1), i - j, i, 33);
    this.author.setText(localSpannableStringBuilder);
  }
  
  private void updateContent(final Link paramLink)
  {
    AvatarUtils.createAvatar(Avatar.create(paramLink.getAuthor().getAvatar(), ""), this.avatar, this.avatarSize, (AppConfig)this.appConfigProvider.get(), this.requestManager);
    Object localObject = paramLink.getDescription();
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      this.description.setVisibility(8);
    }
    for (;;)
    {
      localObject = paramLink.getTitle();
      this.title.setText((CharSequence)localObject);
      this.titleBarText.setText((CharSequence)localObject);
      setAuthorSpannable(paramLink.getAuthor().getFirstName());
      this.updated.setText(this.timeFormatter.getUpdated(paramLink.getUpdatedAt()));
      localObject = ViewHolderGenerator.createLayoutFromBlocks(this.noteHolder, paramLink.getBlocks(), this);
      this.linkContainer.addView(BlockUtils.getBlockView(this.linkContainer, (LinearLayout)localObject, this));
      this.titleSize = this.title.getMeasuredHeight();
      this.scrollView.setListener(new ContentAwareScrollView.Listener()
      {
        public void onBottomReached() {}
        
        public void onScrollChanged(int paramAnonymousInt)
        {
          if (IntercomArticleActivity.this.titleBarEnabled)
          {
            paramAnonymousInt -= IntercomArticleActivity.this.titleSize;
            IntercomArticleActivity.this.titleBar.setAlpha(paramAnonymousInt / 100.0F);
            IntercomArticleActivity.this.titleBarText.setAlpha((paramAnonymousInt - IntercomArticleActivity.this.titleBar.getHeight()) / 100.0F);
          }
        }
      });
      this.scrollView.setAlpha(0.0F);
      this.scrollView.animate().alpha(1.0F).setDuration(300L).start();
      if (!ReactionReply.isNull(paramLink.getReactionReply()))
      {
        localObject = paramLink.getReactionReply();
        int i = getResources().getDimensionPixelSize(R.dimen.intercom_link_reaction_height);
        this.scrollView.setPadding(this.scrollView.getPaddingLeft(), this.scrollView.getPaddingTop(), this.scrollView.getPaddingRight(), i);
        this.reactionComposer.preloadReactionImages((ReactionReply)localObject, this.requestManager);
        this.reactionComposer.setUpReactions((ReactionReply)localObject, false, new ReactionListener()
        {
          public void onReactionSelected(Reaction paramAnonymousReaction)
          {
            Injector.get().getApi().reactToLink(paramLink.getId(), paramAnonymousReaction.getIndex(), false);
            IntercomArticleActivity.this.metricTracker.sentReaction(IntercomArticleActivity.this.conversationId, IntercomArticleActivity.this.partId, paramAnonymousReaction.getIndex(), MetricTracker.ReactionLocation.LINK);
            ((TextView)IntercomArticleActivity.this.findViewById(R.id.reaction_text)).setText(R.string.intercom_article_response);
          }
        }, this.requestManager);
        this.composerLayout.setVisibility(0);
        paramLink = this.composerLayout;
        float f = this.composerLayout.getY();
        paramLink.setY(i + f);
        this.composerLayout.animate().setInterpolator(new OvershootInterpolator(1.0F)).translationY(0.0F).setDuration(300L).setListener(new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            IntercomArticleActivity.this.linkView.setClipChildren(false);
          }
        }).start();
        if (((ReactionReply)localObject).getReactionIndex() != null) {
          ((TextView)findViewById(R.id.reaction_text)).setText(R.string.intercom_article_response);
        }
      }
      this.scrollView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
      {
        public void onGlobalLayout()
        {
          ViewUtils.removeGlobalLayoutListener(IntercomArticleActivity.this.scrollView, this);
          float f = IntercomArticleActivity.this.linkView.getMeasuredHeight();
          if (IntercomArticleActivity.this.scrollView.getChildAt(0).getMeasuredHeight() > f * 1.5F) {
            IntercomArticleActivity.this.titleBarEnabled = true;
          }
        }
      });
      return;
      this.description.setVisibility(0);
      this.description.setText((CharSequence)localObject);
    }
  }
  
  void closeLink()
  {
    this.titleBarEnabled = false;
    fadeOutView(this.scrollView);
    fadeOutView(this.composerLayout);
    fadeOutView(this.titleBar);
    supportFinishAfterTransition();
  }
  
  public void onBackPressed()
  {
    this.metricTracker.closedArticle(this.conversationId, this.linkId, 1);
    closeLink();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.intercom_activity_article);
    paramBundle = getIntent().getExtras();
    if (paramBundle != null)
    {
      this.conversationId = paramBundle.getString("parcel_conversation_id", "");
      this.partId = paramBundle.getString("parcel_part_id", "");
      this.linkId = paramBundle.getString("parcel_link_id", "");
    }
    this.requestManager = c.b(this);
    paramBundle = Injector.get();
    this.appConfigProvider = paramBundle.getAppConfigProvider();
    this.api = paramBundle.getApi();
    this.api.getLink(this.linkId, this.apiCallback);
    this.metricTracker = paramBundle.getMetricTracker();
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    this.timeFormatter = new TimeFormatter(this, paramBundle.getTimeProvider());
    this.linkView = ((FrameLayout)findViewById(R.id.link_view));
    this.titleBar = ((FrameLayout)findViewById(R.id.link_title_bar));
    this.titleBarText = ((TextView)findViewById(R.id.title_bar_text));
    this.titleBarText.setTextColor(i);
    this.loadingView = ((ProgressBar)findViewById(R.id.loading_view));
    this.loadingView.getIndeterminateDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
    this.title = ((TextView)findViewById(R.id.title));
    this.title.setTextColor(i);
    this.description = ((TextView)findViewById(R.id.description));
    this.reactionComposer = ((ReactionInputView)findViewById(R.id.reaction_input_view));
    this.composerLayout = findViewById(R.id.link_composer_container);
    this.author = ((TextView)findViewById(R.id.author));
    this.updated = ((TextView)findViewById(R.id.updated));
    this.avatarSize = getResources().getDimensionPixelSize(R.dimen.intercom_avatar_size);
    this.avatar = ((ImageView)findViewById(R.id.avatar_view));
    this.noteHolder = new ViewHolderGenerator(new UploadingImageCache(), this.api, this.appConfigProvider, this.conversationId, new LightboxOpeningImageClickListener(this.api), new LinkOpeningButtonClickListener(this.api), this.requestManager, paramBundle.getGson(), paramBundle.getBus(), this.metricTracker).getNoteHolder();
    this.intercomErrorView = ((IntercomErrorView)findViewById(R.id.error_layout_article));
    this.intercomErrorView.setActionButtonTextColor(i);
    this.intercomErrorView.setActionButtonClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        IntercomArticleActivity.this.loadingView.setVisibility(0);
        IntercomArticleActivity.this.api.getLink(IntercomArticleActivity.this.linkId, IntercomArticleActivity.this.apiCallback);
      }
    });
    this.linkContainer = ((LinearLayout)findViewById(R.id.link_container));
    this.scrollView = ((ContentAwareScrollView)findViewById(R.id.scroll_view));
    findViewById(R.id.dismiss).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        IntercomArticleActivity.this.metricTracker.closedArticle(IntercomArticleActivity.this.conversationId, IntercomArticleActivity.this.linkId, 0);
        IntercomArticleActivity.this.closeLink();
      }
    });
    if (Build.VERSION.SDK_INT >= 21)
    {
      getWindow().setSharedElementEnterTransition(enterTransition());
      getWindow().setSharedElementReturnTransition(returnTransition());
      findViewById(R.id.link_view).setTransitionName("link_background");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/IntercomArticleActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */