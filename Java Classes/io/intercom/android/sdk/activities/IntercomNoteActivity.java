package io.intercom.android.sdk.activities;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
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
import io.intercom.android.sdk.blocks.LightboxOpeningImageClickListener;
import io.intercom.android.sdk.blocks.LinkOpeningButtonClickListener;
import io.intercom.android.sdk.blocks.UploadingImageCache;
import io.intercom.android.sdk.blocks.ViewHolderGenerator;
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

public class IntercomNoteActivity
  extends IntercomBaseActivity
  implements View.OnClickListener
{
  private static final String LAST_PARTICIPANT = "last_participant";
  private static final String PARCEL_CONVERSATION_ID = "parcel_conversation_id";
  private static final String PARCEL_PART = "parcel_part";
  View composerLayout;
  String conversationId;
  private LastParticipatingAdmin lastParticipatingAdmin;
  MetricTracker metricTracker;
  private LinearLayout noteLayout;
  Part part;
  private final FullScreenInAppPresenter presenter = new FullScreenInAppPresenter();
  ReactionInputView reactionComposer;
  private j requestManager;
  
  public static Intent buildNoteIntent(Context paramContext, Part paramPart, String paramString, LastParticipatingAdmin paramLastParticipatingAdmin)
  {
    paramContext = new Intent(paramContext, IntercomNoteActivity.class).putExtra("parcel_part", paramPart).putExtra("last_participant", paramLastParticipatingAdmin);
    if (!TextUtils.isEmpty(paramString)) {
      paramContext.putExtra("parcel_conversation_id", paramString);
    }
    paramContext.setExtrasClassLoader(Part.class.getClassLoader());
    return paramContext;
  }
  
  void animateContent()
  {
    this.noteLayout.setScaleX(0.9F);
    this.noteLayout.setScaleY(0.9F);
    this.noteLayout.setAlpha(0.0F);
    this.noteLayout.setVisibility(0);
    this.noteLayout.animate().scaleX(1.0F).scaleY(1.0F).alpha(1.0F).setDuration(200L).start();
  }
  
  public void onBackPressed()
  {
    this.presenter.closeWindow(this);
    this.metricTracker.closedInAppFromFull(this.conversationId, this.part.getId());
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.note_touch_target)
    {
      this.presenter.closeWindow(this);
      this.metricTracker.closedInAppFromFull(this.conversationId, this.part.getId());
      startActivity(IntercomMessengerActivity.openConversation(this, this.conversationId, this.lastParticipatingAdmin));
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.intercom_activity_note);
    this.requestManager = c.b(this);
    this.noteLayout = ((LinearLayout)findViewById(R.id.note_layout));
    this.noteLayout.setVisibility(4);
    this.reactionComposer = ((ReactionInputView)findViewById(R.id.reaction_input_view));
    final Object localObject = (IntercomToolbar)findViewById(R.id.intercom_toolbar);
    ((IntercomToolbar)localObject).setListener(new InAppToolbarListener(this));
    this.part = new Part();
    this.lastParticipatingAdmin = LastParticipatingAdmin.NULL;
    Injector localInjector = Injector.get();
    Api localApi = localInjector.getApi();
    this.metricTracker = localInjector.getMetricTracker();
    Provider localProvider = localInjector.getAppConfigProvider();
    TimeFormatter localTimeFormatter = new TimeFormatter(this, localInjector.getTimeProvider());
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      localBundle.setClassLoader(Part.class.getClassLoader());
      if (localBundle.containsKey("parcel_part"))
      {
        this.part = ((Part)localBundle.getParcelable("parcel_part"));
        if ((this.part == null) || (this.part.getParticipant() == null)) {
          break label605;
        }
      }
    }
    label605:
    for (paramBundle = this.part.getParticipant().getForename();; paramBundle = "")
    {
      String str = ((AppConfig)localProvider.get()).getName();
      ((IntercomToolbar)localObject).setTitle(Phrase.from(this, R.string.intercom_teammate_from_company).put("name", paramBundle).put("company", str).format());
      if (localBundle.containsKey("parcel_conversation_id"))
      {
        this.conversationId = localBundle.getString("parcel_conversation_id");
        localInjector.getStore().dispatch(Actions.conversationMarkedAsRead(this.conversationId));
        localApi.markConversationAsRead(this.conversationId);
      }
      if (localBundle.containsKey("last_participant"))
      {
        this.lastParticipatingAdmin = ((LastParticipatingAdmin)localBundle.getParcelable("last_participant"));
        if (!LastParticipatingAdmin.isNull(this.lastParticipatingAdmin)) {
          ((IntercomToolbar)localObject).setSubtitle(localTimeFormatter.getAdminActiveStatus(this.lastParticipatingAdmin, localProvider));
        }
      }
      ((IntercomToolbar)localObject).setUpNoteToolbar(this.part.getParticipant(), this.lastParticipatingAdmin.isActive(), new ActiveStatePresenter(), (AppConfig)localProvider.get(), this.requestManager);
      paramBundle = new ViewHolderGenerator(new UploadingImageCache(), localApi, localProvider, this.conversationId, new LightboxOpeningImageClickListener(localApi), new LinkOpeningButtonClickListener(localApi), this.requestManager, localInjector.getGson(), localInjector.getBus(), this.metricTracker).getNoteHolder();
      this.composerLayout = findViewById(R.id.note_composer_container);
      localObject = (ContentAwareScrollView)findViewById(R.id.note_view);
      ((ContentAwareScrollView)localObject).addView(BlockUtils.getBlockView((ViewGroup)localObject, ViewHolderGenerator.createPartsLayout(paramBundle, this.part, this), this));
      if (!ReactionReply.isNull(this.part.getReactionReply()))
      {
        ((ContentAwareScrollView)localObject).setListener(new ContentAwareScrollView.Listener()
        {
          public void onBottomReached()
          {
            localObject.setListener(null);
            IntercomNoteActivity.this.composerLayout.setVisibility(0);
            IntercomNoteActivity.this.reactionComposer.setUpReactions(IntercomNoteActivity.this.part.getReactionReply(), true, this.val$reactionListener, IntercomNoteActivity.this.requestManager);
          }
          
          public void onScrollChanged(int paramAnonymousInt) {}
        });
        this.reactionComposer.preloadReactionImages(this.part.getReactionReply(), this.requestManager);
      }
      paramBundle = getWindow().getDecorView();
      paramBundle.setAlpha(0.0F);
      paramBundle.animate().alpha(1.0F).setDuration(200L).setListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          IntercomNoteActivity.this.animateContent();
          if (ReactionReply.isNull(IntercomNoteActivity.this.part.getReactionReply()))
          {
            IntercomNoteActivity.this.composerLayout.setVisibility(0);
            IntercomNoteActivity.this.findViewById(R.id.note_touch_target).setOnClickListener(IntercomNoteActivity.this);
            IntercomNoteActivity.this.findViewById(R.id.composer_input_view).setVisibility(0);
          }
        }
      }).start();
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/activities/IntercomNoteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */