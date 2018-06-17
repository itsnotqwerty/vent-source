package io.intercom.android.sdk.conversation;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.design.internal.SnackbarContentLayout;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.AppBarLayout.b;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.Snackbar;
import android.support.design.widget.Snackbar.1;
import android.support.design.widget.b.e;
import android.support.v4.app.i;
import android.support.v7.app.c.a;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import io.intercom.a.a.a.c;
import io.intercom.a.c.a.h;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.activities.ConversationReactionListener;
import io.intercom.android.sdk.activities.IntercomPostActivity;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.BlockFactory;
import io.intercom.android.sdk.blocks.BlockType;
import io.intercom.android.sdk.blocks.Blocks;
import io.intercom.android.sdk.blocks.logic.TextSplittingStrategy;
import io.intercom.android.sdk.blocks.models.Block.Builder;
import io.intercom.android.sdk.blocks.models.BlockAttachment.Builder;
import io.intercom.android.sdk.conversation.composer.ComposerPresenter;
import io.intercom.android.sdk.conversation.composer.ComposerPresenter.Listener;
import io.intercom.android.sdk.conversation.events.AdminIsTypingEvent;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.imageloader.WallpaperLoader;
import io.intercom.android.sdk.imageloader.WallpaperLoader.Listener;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.metrics.MetricTracker.ReactionLocation;
import io.intercom.android.sdk.metrics.ops.OpsMetricTracker;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.LastParticipatingAdmin;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Participant;
import io.intercom.android.sdk.models.Participant.Builder;
import io.intercom.android.sdk.models.ReactionReply;
import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.models.events.ConversationEvent;
import io.intercom.android.sdk.models.events.ReplyEvent;
import io.intercom.android.sdk.models.events.failure.ConversationFailedEvent;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.nexus.NexusEvent;
import io.intercom.android.sdk.profile.ProfilePresenter;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Subscriber2;
import io.intercom.android.sdk.store.Store.Subscription;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.ContextLocaliser;
import io.intercom.android.sdk.utilities.Phrase;
import io.intercom.android.sdk.utilities.StoreUtils;
import io.intercom.android.sdk.utilities.TimeFormatter;
import io.intercom.android.sdk.utilities.ViewUtils;
import io.intercom.android.sdk.utilities.connectivity.NetworkConnectivityMonitor;
import io.intercom.android.sdk.utilities.connectivity.NetworkConnectivityMonitor.ConnectivityEventListener;
import io.intercom.android.sdk.views.IntercomErrorView;
import io.intercom.android.sdk.views.IntercomLinkView;
import io.intercom.android.sdk.views.IntercomToolbar;
import io.intercom.android.sdk.views.IntercomToolbar.Listener;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ConversationFragment
  extends i
  implements ConversationContentPresenter.Host, ConversationPartAdapter.Listener, Store.Subscriber2<Integer, TeamPresence>, IntercomToolbar.Listener
{
  private static final String ARG_CONVERSATION_ID = "conversationId";
  private static final String ARG_GROUP_PARTICIPANTS = "group_participants";
  private static final String ARG_INITIAL_MESSAGE = "initial_message";
  private static final String ARG_IS_READ = "intercomsdk-isRead";
  private static final String ARG_IS_TWO_PANE = "is_two_pane";
  private static final String ARG_LAST_PARTICIPANT = "last_participant";
  private static final int COMPOSER_LIGHTBOX_REQUEST_CODE = 25;
  private static final String EXTRA_GALLERY_IMAGE = "gallery_image";
  private static final String IMAGE_MIME_TYPE = "image";
  private static final int MAX_FILE_SIZE_BYTES = 41943040;
  Provider<AppConfig> appConfigProvider;
  private io.intercom.a.c.a.b bus;
  private boolean canOpenProfile = true;
  private RelativeLayout composerHolder;
  private final ComposerPresenter.Listener composerListener = new ComposerPresenter.Listener()
  {
    private final BlockFactory blockFactory = new BlockFactory(new TextSplittingStrategy());
    
    private List<Block.Builder> createBlocks(com.intercom.input.gallery.b paramAnonymousb)
    {
      ArrayList localArrayList = new ArrayList();
      if (paramAnonymousb.mimeType.contains("image"))
      {
        localArrayList.add(new Block.Builder().withUrl(paramAnonymousb.path).withType(BlockType.LOCALIMAGE.name()).withWidth(paramAnonymousb.imageWidth).withHeight(paramAnonymousb.imageHeight));
        return localArrayList;
      }
      paramAnonymousb = new BlockAttachment.Builder().withName(paramAnonymousb.bmd).withUrl(paramAnonymousb.path).withContentType(paramAnonymousb.mimeType).build();
      localArrayList.add(new Block.Builder().withAttachments(Collections.singletonList(paramAnonymousb)).withType(BlockType.LOCAL_ATTACHMENT.name()));
      return localArrayList;
    }
    
    private void showUploadError()
    {
      new c.a(ConversationFragment.this.getActivity()).setTitle(R.string.intercom_failed_to_send).setMessage(R.string.intercom_file_too_big).setPositiveButton(17039370, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int) {}
      }).show();
    }
    
    public void onRemoteImageSelected(com.intercom.input.gallery.b paramAnonymousb)
    {
      ConversationFragment.this.contentPresenter.sendPart(Collections.singletonList(new Block.Builder().withType("image").withUrl(paramAnonymousb.path).withAttribution(paramAnonymousb.attribution).withHeight(paramAnonymousb.imageHeight).withWidth(paramAnonymousb.imageWidth)));
      ConversationFragment.this.composerPresenter.returnToDefaultInput();
    }
    
    public void onSendButtonPressed(CharSequence paramAnonymousCharSequence)
    {
      paramAnonymousCharSequence = paramAnonymousCharSequence.toString().trim();
      if (!paramAnonymousCharSequence.isEmpty())
      {
        ConversationFragment.this.opsMetricTracker.trackEvent("start", "time-to-process-action-send-part-ms");
        ConversationFragment.this.contentPresenter.sendPart(this.blockFactory.getBlocksForText(paramAnonymousCharSequence));
        if (TextUtils.isEmpty(ConversationFragment.this.conversationId)) {
          ConversationFragment.this.rootView.findViewById(R.id.disabled_view).setVisibility(0);
        }
      }
    }
    
    public void onUploadImageSelected(com.intercom.input.gallery.b paramAnonymousb)
    {
      if (paramAnonymousb.bmf > 41943040)
      {
        showUploadError();
        return;
      }
      ConversationFragment.this.contentPresenter.uploadImage(createBlocks(paramAnonymousb), paramAnonymousb);
    }
  };
  ComposerPresenter composerPresenter;
  private final NetworkConnectivityMonitor.ConnectivityEventListener connectivityEventListener = new NetworkConnectivityMonitor.ConnectivityEventListener()
  {
    public void onDisconnect()
    {
      Snackbar.c(ConversationFragment.this.rootView, R.string.intercom_no_network_connection, -2).show();
    }
    
    public void onReconnect()
    {
      Snackbar localSnackbar = Snackbar.c(ConversationFragment.this.rootView, R.string.intercom_connected, 0);
      int i = ((AppConfig)ConversationFragment.this.appConfigProvider.get()).getBaseColor();
      ((SnackbarContentLayout)localSnackbar.jh.getChildAt(0)).getActionView().setTextColor(i);
      i = R.string.intercom_dismiss;
      View.OnClickListener local1 = new View.OnClickListener()
      {
        public void onClick(View paramAnonymous2View) {}
      };
      CharSequence localCharSequence = localSnackbar.mContext.getText(i);
      Button localButton = ((SnackbarContentLayout)localSnackbar.jh.getChildAt(0)).getActionView();
      if (TextUtils.isEmpty(localCharSequence))
      {
        localButton.setVisibility(8);
        localButton.setOnClickListener(null);
      }
      for (;;)
      {
        localSnackbar.show();
        return;
        localButton.setVisibility(0);
        localButton.setText(localCharSequence);
        localButton.setOnClickListener(new Snackbar.1(localSnackbar, local1));
      }
    }
  };
  ConversationContentPresenter contentPresenter;
  Conversation conversation;
  String conversationId;
  private int currentOrientation;
  private final ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    private int previousHeight;
    
    public void onGlobalLayout()
    {
      int i = ConversationFragment.this.rootView.getHeight();
      if ((this.previousHeight != 0) && (!ConversationFragment.this.orientationChanged) && (this.previousHeight > i))
      {
        ConversationFragment.this.profilePresenter.closeProfile();
        if (ConversationFragment.this.shouldStayAtBottom)
        {
          ConversationFragment.this.contentPresenter.scrollToBottom();
          ConversationFragment.this.shouldStayAtBottom = false;
        }
      }
      if ((ConversationFragment.this.orientationChanged) && (this.previousHeight != i)) {
        ConversationFragment.this.orientationChanged = false;
      }
      this.previousHeight = i;
      ConversationFragment.this.contentPresenter.onGlobalLayout();
    }
  };
  private List<Participant> groupParticipants;
  private boolean hasLoadedConversation = false;
  private String initialMessage = "";
  private IntercomErrorView intercomErrorView;
  private IntercomToolbar intercomToolbar;
  private boolean isTwoPane = false;
  private CharSequence lastActiveTime;
  private LastParticipatingAdmin lastParticipant;
  private Listener listener;
  private MetricTracker metricTracker;
  final NetworkConnectivityMonitor networkConnectivityMonitor = new NetworkConnectivityMonitor();
  private NexusClient nexusClient;
  private OpsMetricTracker opsMetricTracker;
  boolean orientationChanged = false;
  private final ProfileExpansionLogic profileExpansionLogic = new ProfileExpansionLogic();
  ProfilePresenter profilePresenter;
  private ReactionInputView reactionComposer;
  private io.intercom.a.a.a.j requestManager;
  View rootView;
  boolean shouldStayAtBottom = false;
  SoundPlayer soundPlayer;
  private Store<State> store;
  private Store.Subscription subscription;
  private final Twig twig = LumberMill.getLogger();
  private UserIdentity userIdentity;
  private WallpaperLoader wallpaperLoader;
  
  private void configureInputView(Conversation paramConversation)
  {
    Part localPart = paramConversation.getLastPart();
    if (ReactionReply.isNull(localPart.getReactionReply()))
    {
      this.composerPresenter.showComposer();
      this.composerPresenter.requestFocus();
      this.reactionComposer.setVisibility(8);
      return;
    }
    paramConversation = new ConversationReactionListener(MetricTracker.ReactionLocation.CONVERSATION, localPart.getId(), paramConversation.getId(), Injector.get().getApi(), this.metricTracker);
    this.reactionComposer.setUpReactions(localPart.getReactionReply(), true, paramConversation, this.requestManager);
    this.composerPresenter.hideComposer();
  }
  
  private ConversationContentPresenter createContentPresenter(View paramView)
  {
    Injector localInjector = Injector.get();
    IntercomLinkView localIntercomLinkView = (IntercomLinkView)paramView.findViewById(R.id.intercom_link);
    TextView localTextView = (TextView)paramView.findViewById(R.id.pill);
    paramView = (RecyclerView)paramView.findViewById(R.id.conversation_list);
    Blocks localBlocks = new Blocks(getActivity(), LumberMill.getBlocksTwig());
    Api localApi = localInjector.getApi();
    ArrayList localArrayList = new ArrayList();
    ContextLocaliser localContextLocaliser = new ContextLocaliser(this.appConfigProvider);
    return ConversationContentPresenter.create(this, paramView, ConversationPartAdapter.create(getActivity(), localArrayList, this, localApi, this.conversationId, this.appConfigProvider, this.userIdentity, localInjector.getTimeProvider(), localContextLocaliser, this.requestManager), localIntercomLinkView, this.appConfigProvider, localApi, localArrayList, this.conversationId, localTextView, this.soundPlayer, localBlocks, this.userIdentity, this.opsMetricTracker, this.requestManager);
  }
  
  private void displayErrorView()
  {
    this.intercomErrorView.setVisibility(0);
    this.composerHolder.setVisibility(8);
    this.contentPresenter.showErrorView();
  }
  
  public static ConversationFragment newInstance(String paramString1, LastParticipatingAdmin paramLastParticipatingAdmin, boolean paramBoolean1, boolean paramBoolean2, String paramString2, List<Participant> paramList)
  {
    ConversationFragment localConversationFragment = new ConversationFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("conversationId", paramString1);
    localBundle.putString("initial_message", paramString2);
    localBundle.putParcelable("last_participant", paramLastParticipatingAdmin);
    localBundle.putParcelableArrayList("group_participants", new ArrayList(paramList));
    localBundle.putBoolean("intercomsdk-isRead", paramBoolean1);
    localBundle.putBoolean("is_two_pane", paramBoolean2);
    localBundle.setClassLoader(Part.class.getClassLoader());
    localConversationFragment.setArguments(localBundle);
    return localConversationFragment;
  }
  
  private void toggleProfile()
  {
    if (this.profilePresenter.isExpanded())
    {
      this.profilePresenter.closeProfile();
      return;
    }
    this.profilePresenter.profileClicked();
    this.contentPresenter.smoothScrollToTop();
  }
  
  private void trackLastPart(Part paramPart)
  {
    if (paramPart.isLinkList())
    {
      this.metricTracker.receivedOperatorReply(this.conversationId);
      return;
    }
    this.metricTracker.receivedReply(paramPart.hasAttachments(), paramPart.isLinkCard(), paramPart.getId(), this.conversationId);
  }
  
  private void updateLastActiveTime()
  {
    if ((this.conversation.getLastParticipatingAdmin() != null) && (getActivity() != null)) {
      this.lastActiveTime = new TimeFormatter(getActivity(), Injector.get().getTimeProvider()).getAdminActiveStatus(this.lastParticipant, this.appConfigProvider);
    }
  }
  
  private void updateProfileToolbar(TeamPresence paramTeamPresence)
  {
    android.support.v4.app.j localj = getActivity();
    if (localj == null) {
      return;
    }
    if ((LastParticipatingAdmin.isNull(this.lastParticipant)) || (this.lastParticipant == LastParticipatingAdmin.NONE))
    {
      int i = localj.getWindow().getDecorView().getMeasuredWidth();
      this.profilePresenter.setTeamPresence(paramTeamPresence, i, this.requestManager);
      return;
    }
    updateLastActiveTime();
    this.profilePresenter.setTeammatePresence(this.lastParticipant, this.groupParticipants, this.lastActiveTime, this.rootView.getWidth());
  }
  
  @h
  public void adminIsTyping(AdminIsTypingEvent paramAdminIsTypingEvent)
  {
    if (this.conversationId.equals(paramAdminIsTypingEvent.getConversationId())) {
      this.contentPresenter.onAdminStartedTyping(paramAdminIsTypingEvent);
    }
  }
  
  @h
  public void conversationFailure(ConversationFailedEvent paramConversationFailedEvent)
  {
    if (isAdded()) {
      displayErrorView();
    }
  }
  
  @h
  public void conversationSuccess(ConversationEvent paramConversationEvent)
  {
    this.composerHolder.setVisibility(0);
    int j = this.conversation.getParts().size();
    Object localObject = paramConversationEvent.getResponse().getParts();
    int i;
    if ((paramConversationEvent.getResponse().getId().equals(this.conversationId)) && (((List)localObject).size() > j))
    {
      this.conversation = paramConversationEvent.getResponse();
      if (isAdded())
      {
        this.contentPresenter.onConversationFetched(paramConversationEvent);
        displayConversation();
      }
      if (this.conversation.isRead()) {
        break label310;
      }
      i = 1;
      if (i != 0)
      {
        Injector.get().getApi().markConversationAsRead(this.conversationId);
        this.store.dispatch(Actions.conversationMarkedAsRead(this.conversationId));
        this.nexusClient.fire(NexusEvent.getConversationSeenEvent(this.conversationId, this.userIdentity.getIntercomId()));
      }
      if (j != 0) {
        break label325;
      }
      paramConversationEvent = (Part)((List)localObject).get(((List)localObject).size() - 1);
      if ((paramConversationEvent.isReply()) && (i != 0)) {
        trackLastPart(paramConversationEvent);
      }
      if (this.canOpenProfile)
      {
        paramConversationEvent = getView();
        if (paramConversationEvent != null)
        {
          final boolean bool = this.profileExpansionLogic.shouldExpandProfile(this.conversation);
          paramConversationEvent.postDelayed(new Runnable()
          {
            public void run()
            {
              if (ConversationFragment.this.getContext() == null) {
                return;
              }
              if (bool)
              {
                ConversationFragment.this.profilePresenter.profileAutoOpened();
                ConversationFragment.this.profilePresenter.startOffsetListener();
                ConversationFragment.this.contentPresenter.smoothScrollToTop();
                return;
              }
              ConversationFragment.this.profilePresenter.startOffsetListener();
            }
          }, 50L);
          if (!bool) {
            break label315;
          }
          this.contentPresenter.scrollToTop();
          label249:
          this.canOpenProfile = false;
        }
      }
    }
    for (;;)
    {
      this.lastParticipant = this.conversation.getLastParticipatingAdmin();
      this.groupParticipants = this.conversation.getGroupConversationParticipants();
      if (this.lastParticipant != null) {
        updateLastActiveTime();
      }
      updateProfileToolbar((TeamPresence)this.store.select(Selectors.TEAM_PRESENCE));
      this.hasLoadedConversation = true;
      return;
      label310:
      i = 0;
      break;
      label315:
      this.contentPresenter.scrollToBottom();
      break label249;
      label325:
      paramConversationEvent = ((List)localObject).subList(j, ((List)localObject).size());
      localObject = paramConversationEvent.iterator();
      while (((Iterator)localObject).hasNext()) {
        if (((Part)((Iterator)localObject).next()).isAdmin()) {
          this.soundPlayer.playMessageReceivedSound();
        }
      }
      this.contentPresenter.onNewPartReceived();
      trackLastPart((Part)paramConversationEvent.get(paramConversationEvent.size() - 1));
    }
  }
  
  void displayConversation()
  {
    if (isAdded())
    {
      this.intercomErrorView.setVisibility(8);
      this.contentPresenter.showContentView();
      configureInputView(this.conversation);
    }
  }
  
  void displayLoadingView()
  {
    if (isAdded())
    {
      this.intercomErrorView.setVisibility(8);
      this.composerPresenter.hideComposer();
      this.contentPresenter.showLoadingView();
    }
  }
  
  public Conversation getConversation()
  {
    return this.conversation;
  }
  
  public String getConversationId()
  {
    return this.conversationId;
  }
  
  public void handleOnBackPressed()
  {
    this.composerPresenter.onBackPressed();
  }
  
  boolean hasNotLoadedLastAdminForExistingConversation()
  {
    return (!this.hasLoadedConversation) && (!this.conversationId.isEmpty()) && (LastParticipatingAdmin.isNull(this.lastParticipant));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      return;
    } while ((paramIntent == null) || (!paramIntent.hasExtra("gallery_image")));
    paramIntent = (com.intercom.input.gallery.b)paramIntent.getParcelableExtra("gallery_image");
    this.composerListener.onUploadImageSelected(paramIntent);
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    try
    {
      this.listener = ((Listener)paramContext);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramContext + " must implement ConversationFragment.Listener");
    }
  }
  
  public void onCloseClicked()
  {
    this.listener.onToolbarCloseClicked();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (paramConfiguration.orientation != this.currentOrientation)
    {
      this.orientationChanged = true;
      this.composerPresenter.updateMaxLines();
    }
    this.currentOrientation = paramConfiguration.orientation;
  }
  
  public void onConversationCreated(Conversation paramConversation)
  {
    this.rootView.findViewById(R.id.disabled_view).setVisibility(8);
    this.conversation = paramConversation;
    this.conversationId = paramConversation.getId();
    this.profilePresenter.setConversationId(this.conversationId);
    this.composerPresenter.setConversationId(this.conversationId);
    this.composerPresenter.setHint(R.string.intercom_reply_to_conversation);
    this.nexusClient.fire(NexusEvent.getNewCommentEvent(this.conversationId, this.userIdentity.getIntercomId()));
    paramConversation = (Part)paramConversation.getParts().get(0);
    this.metricTracker.sentInNewConversation(paramConversation.hasAttachments(), paramConversation.isGifOnlyPart(), paramConversation.getId(), this.conversationId, ((TeamPresence)this.store.select(Selectors.TEAM_PRESENCE)).getOfficeHours().isEmpty());
    this.metricTracker.startConversation(this.conversationId);
    this.hasLoadedConversation = true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.requestManager = c.r(this);
    paramBundle = Injector.get();
    this.bus = paramBundle.getBus();
    this.nexusClient = paramBundle.getNexusClient();
    this.appConfigProvider = paramBundle.getAppConfigProvider();
    this.userIdentity = paramBundle.getUserIdentity();
    this.store = paramBundle.getStore();
    this.metricTracker = paramBundle.getMetricTracker();
    this.opsMetricTracker = paramBundle.getOpsMetricTracker();
    this.opsMetricTracker.trackEvent("start", "time-to-process-action-load-conversation-ms");
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      paramBundle.setClassLoader(Part.class.getClassLoader());
      this.conversationId = paramBundle.getString("conversationId", "");
      this.initialMessage = paramBundle.getString("initial_message", "");
      this.lastParticipant = ((LastParticipatingAdmin)paramBundle.getParcelable("last_participant"));
      if (this.lastParticipant == null) {
        this.lastParticipant = LastParticipatingAdmin.NULL;
      }
      this.groupParticipants = paramBundle.getParcelableArrayList("group_participants");
      if (this.groupParticipants == null) {
        this.groupParticipants = new ArrayList();
      }
      if (!paramBundle.getBoolean("intercomsdk-isRead", false)) {
        this.store.dispatch(Actions.conversationMarkedAsRead(this.conversationId));
      }
      this.isTwoPane = paramBundle.getBoolean("is_two_pane", false);
      if (!TextUtils.isEmpty(this.conversationId)) {
        break label285;
      }
      this.store.dispatch(Actions.composerOpened());
    }
    for (;;)
    {
      this.conversation = new Conversation();
      this.soundPlayer = new SoundPlayer(getActivity(), this.appConfigProvider);
      this.currentOrientation = getResources().getConfiguration().orientation;
      return;
      label285:
      this.store.dispatch(Actions.conversationOpened(this.conversationId));
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.rootView == null)
    {
      this.rootView = paramLayoutInflater.inflate(R.layout.intercom_fragment_conversation, paramViewGroup, false);
      this.composerHolder = ((RelativeLayout)this.rootView.findViewById(R.id.composer_holder));
      this.profilePresenter = new ProfilePresenter((CoordinatorLayout)this.rootView.findViewById(R.id.conversation_coordinator_layout), this.metricTracker, this.appConfigProvider, this.requestManager);
      this.profilePresenter.setConversationId(this.conversationId);
      this.intercomErrorView = ((IntercomErrorView)this.rootView.findViewById(R.id.error_layout_conversation));
      this.intercomErrorView.setActionButtonTextColor(((AppConfig)this.appConfigProvider.get()).getBaseColor());
      this.intercomErrorView.setActionButtonClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ConversationFragment.this.displayLoadingView();
          ConversationFragment.this.contentPresenter.fetchConversation(ConversationFragment.this.conversationId);
        }
      });
      this.profilePresenter.addListener(new AppBarLayout.b()
      {
        public void onOffsetChanged(AppBarLayout paramAnonymousAppBarLayout, int paramAnonymousInt)
        {
          ConversationFragment.this.contentPresenter.onProfileScrolled();
        }
      });
      paramLayoutInflater = (ImageView)this.rootView.findViewById(R.id.wallpaper);
      this.wallpaperLoader = WallpaperLoader.create(getContext(), this.appConfigProvider, this.requestManager);
      this.wallpaperLoader.loadWallpaperInto(paramLayoutInflater, new WallpaperLoader.Listener()
      {
        public void onLoadComplete()
        {
          BackgroundUtils.setBackground(ConversationFragment.this.rootView, null);
        }
      });
      this.reactionComposer = ((ReactionInputView)this.rootView.findViewById(R.id.reaction_input_view));
      this.intercomToolbar = ((IntercomToolbar)this.rootView.findViewById(R.id.intercom_toolbar));
      this.intercomToolbar.setListener(this);
      paramLayoutInflater = this.intercomToolbar;
      if (!this.isTwoPane) {
        break label320;
      }
    }
    label320:
    for (int i = 8;; i = 0)
    {
      paramLayoutInflater.setInboxButtonVisibility(i);
      this.listener.setStatusBarColor();
      this.rootView.getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
      return this.rootView;
      paramLayoutInflater = (ViewGroup)this.rootView.getParent();
      if (paramLayoutInflater == null) {
        break;
      }
      paramLayoutInflater.removeView(this.rootView);
      break;
    }
  }
  
  public void onDestroy()
  {
    this.store.dispatch(Actions.conversationClosed());
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    ViewUtils.removeGlobalLayoutListener(this.rootView, this.globalLayoutListener);
    this.composerPresenter.cleanup();
    this.contentPresenter.cleanup();
    try
    {
      this.wallpaperLoader.close();
      super.onDestroyView();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        this.twig.d("Couldn't close LongTermImageLoader: " + localIOException.getMessage(), new Object[0]);
      }
    }
  }
  
  public void onInboxClicked()
  {
    this.composerPresenter.cleanup();
    this.listener.onBackToInboxClicked();
    this.intercomToolbar.setInboxButtonVisibility(8);
    CharSequence localCharSequence = Phrase.from(this.intercomToolbar.getContext(), R.string.intercom_conversations_with_app).put("name", ((AppConfig)this.appConfigProvider.get()).getName()).format();
    this.intercomToolbar.setTitle(localCharSequence);
    this.intercomToolbar.setSubtitle("");
  }
  
  public void onPartClicked(Part paramPart)
  {
    this.contentPresenter.onPartClicked(paramPart);
  }
  
  public void onPostCardClicked(Part paramPart)
  {
    startActivity(IntercomPostActivity.buildPostIntent(getContext(), paramPart, "", this.lastParticipant, false));
  }
  
  public void onStart()
  {
    super.onStart();
    this.networkConnectivityMonitor.startListening(getActivity());
    this.networkConnectivityMonitor.setListener(this.connectivityEventListener);
    this.subscription = this.store.subscribeToChanges(Selectors.UNREAD_COUNT, Selectors.TEAM_PRESENCE, this);
    this.bus.register(this);
    this.bus.register(this.contentPresenter);
    this.contentPresenter.fetchConversation(this.conversationId);
  }
  
  public void onStateChange(Integer paramInteger, TeamPresence paramTeamPresence)
  {
    this.intercomToolbar.setUnreadCount(paramInteger);
    if (hasNotLoadedLastAdminForExistingConversation())
    {
      this.profilePresenter.setUnknownPresence();
      return;
    }
    updateProfileToolbar(paramTeamPresence);
  }
  
  public void onStop()
  {
    StoreUtils.safeUnsubscribe(this.subscription);
    this.bus.unregister(this);
    this.bus.unregister(this.contentPresenter);
    this.networkConnectivityMonitor.setListener(null);
    this.networkConnectivityMonitor.stopListening(getActivity());
    this.opsMetricTracker.clear();
    this.profilePresenter.onStop();
    super.onStop();
  }
  
  public void onToolbarClicked()
  {
    toggleProfile();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.contentPresenter = createContentPresenter(paramView);
    paramBundle = (FrameLayout)this.rootView.findViewById(R.id.composer_container);
    paramBundle.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (ConversationFragment.this.contentPresenter.isAtBottom()) {
          ConversationFragment.this.shouldStayAtBottom = true;
        }
      }
    });
    this.composerPresenter = new ComposerPresenter(this.composerListener, paramBundle, getChildFragmentManager(), LayoutInflater.from(paramView.getContext()), this.nexusClient, this.userIdentity, this.appConfigProvider, this.metricTracker, this.conversationId, this.initialMessage, this.store, getActivity(), ((AppConfig)this.appConfigProvider.get()).getBaseColor());
    this.contentPresenter.setup();
    this.composerPresenter.requestFocus();
    configureInputView(this.conversation);
    if (this.conversationId.isEmpty())
    {
      this.composerHolder.setVisibility(0);
      displayConversation();
    }
    for (;;)
    {
      if (this.conversationId.isEmpty())
      {
        this.canOpenProfile = false;
        paramView.postDelayed(new Runnable()
        {
          public void run()
          {
            if (ConversationFragment.this.getActivity() == null) {
              return;
            }
            ConversationFragment.this.profilePresenter.profileAutoOpened();
            ConversationFragment.this.profilePresenter.startOffsetListener();
            ConversationFragment.this.contentPresenter.smoothScrollToTop();
          }
        }, 50L);
      }
      return;
      this.composerPresenter.setConversationId(this.conversationId);
      displayLoadingView();
    }
  }
  
  @h
  public void replySuccess(ReplyEvent paramReplyEvent)
  {
    if (paramReplyEvent.getConversationId().equals(this.conversationId))
    {
      this.nexusClient.fire(NexusEvent.getNewCommentEvent(this.conversationId, this.userIdentity.getIntercomId()));
      Part localPart = paramReplyEvent.getResponse();
      Participant localParticipant2 = this.conversation.getParticipant(localPart.getParticipantId());
      Participant localParticipant1 = localParticipant2;
      if (localParticipant2 == Participant.NULL)
      {
        localParticipant1 = new Participant.Builder().withId(localPart.getParticipantId()).build();
        this.conversation.getParticipants().put(localPart.getParticipantId(), localParticipant1);
      }
      localPart.setParticipant(localParticipant1);
      this.contentPresenter.onReplyDelivered(paramReplyEvent);
      paramReplyEvent = new TimeFormatter(getActivity(), Injector.get().getTimeProvider());
      this.metricTracker.sentInConversation(localPart.hasAttachments(), localPart.isGifOnlyPart(), localPart.getId(), this.conversationId, ((TeamPresence)this.store.select(Selectors.TEAM_PRESENCE)).getOfficeHours().isEmpty(), this.lastParticipant.isActive(), paramReplyEvent.getLastActiveMinutes(this.lastParticipant.getLastActiveAt()));
    }
  }
  
  public void sdkWindowFinishedAnimating()
  {
    if ((getView() != null) && (this.profileExpansionLogic.shouldExpandProfile(this.conversation)))
    {
      this.profilePresenter.profileAutoOpened();
      this.contentPresenter.smoothScrollToTop();
    }
  }
  
  public boolean shouldHandleOnBackPressed()
  {
    return (this.composerPresenter != null) && (this.composerPresenter.isOpen());
  }
  
  public static abstract interface Listener
  {
    public abstract void onBackToInboxClicked();
    
    public abstract void onToolbarCloseClicked();
    
    public abstract void setStatusBarColor();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/ConversationFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */