package io.intercom.android.sdk.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.OvershootInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import io.intercom.a.a.a.c;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.BlocksViewHolder;
import io.intercom.android.sdk.blocks.LightboxOpeningImageClickListener;
import io.intercom.android.sdk.blocks.LinkOpeningButtonClickListener;
import io.intercom.android.sdk.blocks.UploadingImageCache;
import io.intercom.android.sdk.blocks.ViewHolderGenerator;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.conversation.ReactionInputView;
import io.intercom.android.sdk.conversation.ReactionListener;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.metrics.MetricTracker.ReactionLocation;
import io.intercom.android.sdk.models.LastParticipatingAdmin;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.ReactionReply;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.Phrase;
import io.intercom.android.sdk.utilities.TimeFormatter;
import io.intercom.android.sdk.views.ActiveStatePresenter;
import io.intercom.android.sdk.views.ContentAwareScrollView;
import io.intercom.android.sdk.views.ContentAwareScrollView.Listener;
import io.intercom.android.sdk.views.IntercomToolbar;

public class IntercomPostActivity
  extends IntercomBaseActivity
  implements View.OnClickListener
{
  private static final String LAST_PARTICIPANT = "last_participant";
  private static final String PARCEL_CONVERSATION_ID = "parcel_conversation_id";
  private static final String PARCEL_PART = "parcel_part";
  private static final String POST_PREVIEW = "is_post_preview";
  View composerLayout;
  String conversationId;
  private boolean isPreview = false;
  private LastParticipatingAdmin lastParticipatingAdmin;
  MetricTracker metricTracker;
  Part part;
  private FrameLayout postContainer;
  ContentAwareScrollView postView;
  private final FullScreenInAppPresenter presenter = new FullScreenInAppPresenter();
  ReactionInputView reactionComposer;
  private j requestManager;
  private EditText textComposer;
  
  public static Intent buildPostIntent(Context paramContext, Part paramPart, String paramString, LastParticipatingAdmin paramLastParticipatingAdmin, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, IntercomPostActivity.class).putExtra("parcel_part", paramPart).putExtra("last_participant", paramLastParticipatingAdmin).putExtra("is_post_preview", paramBoolean);
    if (!TextUtils.isEmpty(paramString)) {
      paramContext.putExtra("parcel_conversation_id", paramString);
    }
    paramContext.setExtrasClassLoader(Part.class.getClassLoader());
    return paramContext;
  }
  
  void animateComposer()
  {
    this.composerLayout.setY(this.composerLayout.getY() + ScreenUtils.dpToPx(156.0F, this));
    this.composerLayout.setVisibility(0);
    this.textComposer.setVisibility(0);
    this.composerLayout.animate().setInterpolator(new OvershootInterpolator(0.6F)).translationY(0.0F).setDuration(300L).start();
  }
  
  void animateContent()
  {
    this.postContainer.setY(this.postContainer.getY() + ScreenUtils.dpToPx(400.0F, this));
    this.postContainer.setVisibility(0);
    this.postContainer.animate().setInterpolator(new OvershootInterpolator(0.6F)).translationY(0.0F).setDuration(300L).start();
  }
  
  void animateToolbar(IntercomToolbar paramIntercomToolbar)
  {
    paramIntercomToolbar.setY(paramIntercomToolbar.getY() + ScreenUtils.dpToPx(200.0F, this));
    paramIntercomToolbar.setVisibility(0);
    paramIntercomToolbar.animate().setInterpolator(new OvershootInterpolator(0.6F)).translationY(0.0F).setDuration(300L).start();
  }
  
  public void onBackPressed()
  {
    this.presenter.closeWindow(this);
    if (this.isPreview) {
      this.metricTracker.closedInAppFromFull(this.conversationId, this.part.getId());
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.post_touch_target)
    {
      this.presenter.closeWindow(this);
      if (this.isPreview)
      {
        this.metricTracker.openedConversationFromFull(this.conversationId, this.part.getId());
        startActivity(IntercomMessengerActivity.openConversation(this, this.conversationId, this.lastParticipatingAdmin));
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.intercom_activity_post);
    this.requestManager = c.b(this);
    final Object localObject = Injector.get();
    Api localApi = ((Injector)localObject).getApi();
    this.metricTracker = ((Injector)localObject).getMetricTracker();
    Provider localProvider = ((Injector)localObject).getAppConfigProvider();
    final IntercomToolbar localIntercomToolbar = (IntercomToolbar)findViewById(R.id.intercom_toolbar);
    localIntercomToolbar.setListener(new InAppToolbarListener(this));
    this.part = new Part();
    this.lastParticipatingAdmin = LastParticipatingAdmin.NULL;
    TimeFormatter localTimeFormatter = new TimeFormatter(this, ((Injector)localObject).getTimeProvider());
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      localBundle.setClassLoader(Part.class.getClassLoader());
      if (localBundle.containsKey("parcel_part"))
      {
        this.part = ((Part)localBundle.getParcelable("parcel_part"));
        if ((this.part == null) || (this.part.getParticipant() == null)) {
          break label747;
        }
      }
    }
    label747:
    for (paramBundle = this.part.getParticipant().getForename();; paramBundle = "")
    {
      String str = ((AppConfig)localProvider.get()).getName();
      localIntercomToolbar.setTitle(Phrase.from(this, R.string.intercom_teammate_from_company).put("name", paramBundle).put("company", str).format());
      if (localBundle.containsKey("parcel_conversation_id"))
      {
        this.conversationId = localBundle.getString("parcel_conversation_id", "");
        ((Injector)localObject).getStore().dispatch(Actions.conversationMarkedAsRead(this.conversationId));
        localApi.markConversationAsRead(this.conversationId);
      }
      if (localBundle.containsKey("is_post_preview")) {
        this.isPreview = localBundle.getBoolean("is_post_preview", false);
      }
      if (localBundle.containsKey("last_participant"))
      {
        this.lastParticipatingAdmin = ((LastParticipatingAdmin)localBundle.getParcelable("last_participant"));
        if (!LastParticipatingAdmin.isNull(this.lastParticipatingAdmin)) {
          localIntercomToolbar.setSubtitle(localTimeFormatter.getAdminActiveStatus(this.lastParticipatingAdmin, localProvider));
        }
      }
      localIntercomToolbar.setVisibility(8);
      localIntercomToolbar.setUpPostToolbar(this.part.getParticipant(), this.lastParticipatingAdmin.isActive(), new ActiveStatePresenter(), (AppConfig)localProvider.get(), this.requestManager);
      int i = ((AppConfig)localProvider.get()).getBaseColor();
      paramBundle = getWindow().getDecorView();
      paramBundle.setBackgroundColor(Color.argb(153, Color.red(i), Color.green(i), Color.blue(i)));
      localObject = new ViewHolderGenerator(new UploadingImageCache(), localApi, localProvider, this.conversationId, new LightboxOpeningImageClickListener(localApi), new LinkOpeningButtonClickListener(localApi), this.requestManager, ((Injector)localObject).getGson(), ((Injector)localObject).getBus(), this.metricTracker).getPostHolder();
      this.postContainer = ((FrameLayout)findViewById(R.id.post_container));
      this.composerLayout = findViewById(R.id.conversation_coordinator);
      this.textComposer = ((EditText)findViewById(R.id.composer_input_view));
      this.reactionComposer = ((ReactionInputView)findViewById(R.id.reaction_input_view));
      this.postView = ((ContentAwareScrollView)findViewById(R.id.post_view));
      localObject = ViewHolderGenerator.createPartsLayout((BlocksViewHolder)localObject, this.part, this);
      this.postView.addView(BlockUtils.getBlockView(this.postView, (LinearLayout)localObject, this));
      if ((this.isPreview) && (!ReactionReply.isNull(this.part.getReactionReply())))
      {
        localObject = new ConversationReactionListener(MetricTracker.ReactionLocation.IN_APP, this.part.getId(), this.conversationId, Injector.get().getApi(), this.metricTracker);
        this.postView.setListener(new ContentAwareScrollView.Listener()
        {
          public void onBottomReached()
          {
            IntercomPostActivity.this.postView.setListener(null);
            if (IntercomPostActivity.this.composerLayout.getVisibility() != 0)
            {
              IntercomPostActivity.this.composerLayout.setVisibility(0);
              IntercomPostActivity.this.reactionComposer.setUpReactions(IntercomPostActivity.this.part.getReactionReply(), true, localObject, IntercomPostActivity.this.requestManager);
            }
          }
          
          public void onScrollChanged(int paramAnonymousInt) {}
        });
        this.reactionComposer.preloadReactionImages(this.part.getReactionReply(), this.requestManager);
      }
      if (openedFromConversation()) {
        this.metricTracker.viewedInAppFromMessenger(this.part.getMessageStyle(), this.conversationId, this.part.getId());
      }
      paramBundle.setAlpha(0.0F);
      paramBundle.animate().alpha(1.0F).setDuration(200L).setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          IntercomPostActivity.this.animateToolbar(localIntercomToolbar);
          IntercomPostActivity.this.animateContent();
          if (IntercomPostActivity.this.openedFromConversation()) {
            IntercomPostActivity.this.composerLayout.setVisibility(8);
          }
          while (!ReactionReply.isNull(IntercomPostActivity.this.part.getReactionReply())) {
            return;
          }
          IntercomPostActivity.this.findViewById(R.id.post_touch_target).setOnClickListener(IntercomPostActivity.this);
          IntercomPostActivity.this.animateComposer();
        }
      }).start();
      return;
    }
  }
  
  boolean openedFromConversation()
  {
    return !this.isPreview;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/IntercomPostActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */