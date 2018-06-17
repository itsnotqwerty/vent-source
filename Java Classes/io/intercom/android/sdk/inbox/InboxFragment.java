package io.intercom.android.sdk.inbox;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.i;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ProgressBar;
import io.intercom.a.a.a.c;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.state.InboxState;
import io.intercom.android.sdk.state.InboxState.Status;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Subscriber;
import io.intercom.android.sdk.store.Store.Subscription;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.Phrase;
import io.intercom.android.sdk.utilities.StoreUtils;
import io.intercom.android.sdk.utilities.TimeFormatter;
import io.intercom.android.sdk.utilities.ViewUtils;
import io.intercom.android.sdk.views.EndlessRecyclerScrollListener;
import io.intercom.android.sdk.views.EndlessScrollListener;
import io.intercom.android.sdk.views.IntercomErrorView;
import io.intercom.android.sdk.views.IntercomToolbar;
import io.intercom.android.sdk.views.IntercomToolbar.Listener;
import java.util.List;
import java.util.concurrent.Executor;

public class InboxFragment
  extends i
  implements View.OnClickListener, ConversationClickListener, Store.Subscriber<InboxState>, EndlessScrollListener, IntercomToolbar.Listener
{
  private static final String ARG_IS_TWO_PANE = "is_two_pane";
  private static final int FADE_DURATION_MS = 150;
  private InboxAdapter adapter;
  private Provider<AppConfig> appConfigProvider;
  private FloatingActionButton composerButton;
  private EndlessRecyclerScrollListener endlessRecyclerScrollListener;
  private IntercomErrorView inboxErrorView;
  RecyclerView inboxView;
  private IntercomToolbar intercomToolbar;
  private boolean isTwoPane = false;
  private LinearLayoutManager layoutManager;
  Listener listener = Listener.EMPTY;
  private ProgressBar progressBar;
  private io.intercom.a.a.a.j requestManager;
  private View rootView;
  private Store<State> store;
  private Store.Subscription subscription;
  private final Twig twig = LumberMill.getLogger();
  
  private void displayEmptyView()
  {
    this.inboxErrorView.setTitle(R.string.intercom_no_conversations);
    CharSequence localCharSequence = Phrase.from(getContext(), R.string.intercom_empty_conversations).put("name", ((AppConfig)this.appConfigProvider.get()).getName()).format();
    this.inboxErrorView.setSubtitle(localCharSequence);
    this.inboxErrorView.setActionButtonVisibility(8);
    this.inboxErrorView.setVisibility(0);
    showComposerButtonIfEnabled();
    this.inboxView.setVisibility(8);
    this.progressBar.setVisibility(8);
  }
  
  private void displayErrorView()
  {
    this.inboxErrorView.setTitle(R.string.intercom_inbox_error_state_title);
    this.inboxErrorView.setSubtitle(R.string.intercom_failed_to_load_conversation);
    this.inboxErrorView.setActionButtonText(R.string.intercom_retry);
    this.inboxErrorView.setActionButtonVisibility(0);
    this.inboxErrorView.setVisibility(0);
    this.inboxView.setVisibility(8);
    this.progressBar.setVisibility(8);
    this.composerButton.setVisibility(8);
  }
  
  private void displayInbox()
  {
    this.inboxView.setVisibility(0);
    showComposerButtonIfEnabled();
    this.inboxErrorView.setVisibility(8);
    this.progressBar.setVisibility(8);
  }
  
  private void displayLoadingView()
  {
    this.inboxErrorView.setVisibility(8);
    this.inboxView.setVisibility(8);
    this.composerButton.setVisibility(8);
    this.progressBar.setVisibility(0);
  }
  
  private void fadeOutInbox(Animator.AnimatorListener paramAnimatorListener)
  {
    this.intercomToolbar.fadeOutTitle(150);
    this.inboxView.animate().alpha(0.0F).setDuration(150L).setListener(paramAnimatorListener).start();
  }
  
  private boolean isInboundMessageEnabled()
  {
    return ((AppConfig)this.appConfigProvider.get()).isInboundMessages();
  }
  
  public static InboxFragment newInstance(boolean paramBoolean)
  {
    InboxFragment localInboxFragment = new InboxFragment();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("is_two_pane", paramBoolean);
    localInboxFragment.setArguments(localBundle);
    return localInboxFragment;
  }
  
  private void setColorScheme()
  {
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    this.progressBar.getIndeterminateDrawable().setColorFilter(i, PorterDuff.Mode.SRC_IN);
    this.composerButton.setBackgroundTintList(ColorStateList.valueOf(i));
    this.listener.setStatusBarColor();
    this.intercomToolbar.setBackgroundColor(i);
  }
  
  private void setToolbarTitle()
  {
    Object localObject = ((AppConfig)this.appConfigProvider.get()).getName();
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      this.intercomToolbar.setTitle(getString(R.string.intercom_conversations));
      return;
    }
    localObject = Phrase.from(getContext(), R.string.intercom_conversations_with_app).put("name", (CharSequence)localObject).format();
    this.intercomToolbar.setTitle((CharSequence)localObject);
  }
  
  private void showComposerButtonIfEnabled()
  {
    FloatingActionButton localFloatingActionButton = this.composerButton;
    if (isInboundMessageEnabled()) {}
    for (int i = 0;; i = 8)
    {
      localFloatingActionButton.setVisibility(i);
      return;
    }
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
      throw new ClassCastException(paramContext + " must implement InboxFragment.Listener");
    }
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.compose_action_button)
    {
      if (this.isTwoPane) {
        this.listener.onComposerSelected();
      }
    }
    else {
      return;
    }
    fadeOutInbox(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        InboxFragment.this.listener.onComposerSelected();
      }
    });
  }
  
  public void onCloseClicked()
  {
    this.listener.onToolbarCloseClicked();
  }
  
  public void onConversationClicked(int paramInt)
  {
    final Conversation localConversation = (Conversation)((State)this.store.state()).inboxState().conversations().get(paramInt);
    if (this.isTwoPane)
    {
      this.listener.onConversationSelected(localConversation);
      return;
    }
    fadeOutInbox(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        InboxFragment.this.listener.onConversationSelected(localConversation);
      }
    });
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = Injector.get();
    this.requestManager = c.r(this);
    this.store = paramBundle.getStore();
    this.appConfigProvider = paramBundle.getAppConfigProvider();
    android.support.v4.app.j localj = getActivity();
    TimeFormatter localTimeFormatter = new TimeFormatter(localj, paramBundle.getTimeProvider());
    this.adapter = new InboxAdapter(LayoutInflater.from(localj), this, this.store, localTimeFormatter, this.appConfigProvider, paramBundle.getUserIdentity(), this.requestManager);
    this.layoutManager = new LinearLayoutManager(localj);
    this.endlessRecyclerScrollListener = new EndlessRecyclerScrollListener(this.layoutManager, this);
    paramBundle = getArguments();
    if (paramBundle != null) {
      this.isTwoPane = paramBundle.getBoolean("is_two_pane", false);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.twig.internal("inbox frag", "creating view for fragment");
    if (this.rootView == null)
    {
      this.rootView = paramLayoutInflater.inflate(R.layout.intercom_fragment_inbox, paramViewGroup, false);
      this.progressBar = ((ProgressBar)this.rootView.findViewById(R.id.progress_bar));
      this.inboxView = ((RecyclerView)this.rootView.findViewById(R.id.inbox_recycler_view));
      this.inboxView.setLayoutManager(this.layoutManager);
      this.inboxView.a(this.endlessRecyclerScrollListener);
      this.inboxView.setAdapter(this.adapter);
      this.composerButton = ((FloatingActionButton)this.rootView.findViewById(R.id.compose_action_button));
      this.composerButton.setOnClickListener(this);
      this.inboxErrorView = ((IntercomErrorView)this.rootView.findViewById(R.id.error_layout_inbox));
      this.inboxErrorView.setActionButtonTextColor(((AppConfig)this.appConfigProvider.get()).getBaseColor());
      this.inboxErrorView.setActionButtonClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          InboxFragment.this.store.dispatch(Actions.fetchInboxRequest());
        }
      });
      this.intercomToolbar = ((IntercomToolbar)this.rootView.findViewById(R.id.intercom_toolbar));
      this.intercomToolbar.setListener(this);
      this.intercomToolbar.setSubtitleVisibility(8);
      if (this.isTwoPane) {
        this.intercomToolbar.setCloseButtonVisibility(8);
      }
      AsyncTask.THREAD_POOL_EXECUTOR.execute(new Runnable()
      {
        public void run()
        {
          InboxFragment.this.store.dispatch(Actions.fetchInboxRequest());
        }
      });
    }
    for (;;)
    {
      return this.rootView;
      paramLayoutInflater = (ViewGroup)this.rootView.getParent();
      if (paramLayoutInflater != null) {
        paramLayoutInflater.removeView(this.rootView);
      }
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    this.listener = Listener.EMPTY;
  }
  
  public void onInboxClicked() {}
  
  public void onLoadMore()
  {
    InboxState localInboxState = ((State)this.store.state()).inboxState();
    List localList = localInboxState.conversations();
    if ((localInboxState.status() == InboxState.Status.LOADING) || (localList.isEmpty())) {
      return;
    }
    long l = ((Conversation)localList.get(localList.size() - 1)).getLastPart().getCreatedAt();
    this.store.dispatch(Actions.fetchInboxBeforeDateRequest(l));
  }
  
  public void onResume()
  {
    this.store.dispatch(Actions.inboxOpened());
    if (!this.isTwoPane) {
      this.inboxView.setAlpha(1.0F);
    }
    setToolbarTitle();
    setColorScheme();
    super.onResume();
  }
  
  public void onStart()
  {
    super.onStart();
    this.subscription = this.store.subscribeToChanges(Selectors.INBOX, this);
  }
  
  public void onStateChange(InboxState paramInboxState)
  {
    this.adapter.setInboxState(paramInboxState);
    this.adapter.notifyDataSetChanged();
    this.endlessRecyclerScrollListener.setMorePagesAvailable(paramInboxState.hasMorePages());
    if ((!isAdded()) || (getView() == null)) {
      return;
    }
    switch (paramInboxState.status())
    {
    default: 
      displayErrorView();
      return;
    case ???: 
      displayLoadingView();
      return;
    case ???: 
      if (paramInboxState.conversations().isEmpty())
      {
        displayLoadingView();
        return;
      }
      displayInbox();
      return;
    }
    if (this.layoutManager.hr() == 0) {
      this.layoutManager.bA(0);
    }
    if (paramInboxState.conversations().isEmpty()) {
      displayEmptyView();
    }
    for (;;)
    {
      this.listener.onConversationsLoaded(paramInboxState.conversations(), paramInboxState.status());
      return;
      displayInbox();
    }
  }
  
  public void onStop()
  {
    StoreUtils.safeUnsubscribe(this.subscription);
    super.onStop();
  }
  
  public void onToolbarClicked() {}
  
  public void setOverScrollColour()
  {
    ViewUtils.setOverScrollColour(this.inboxView, ((AppConfig)this.appConfigProvider.get()).getBaseColor());
  }
  
  public static abstract interface Listener
  {
    public static final Listener EMPTY = new Listener()
    {
      public final void onComposerSelected() {}
      
      public final void onConversationSelected(Conversation paramAnonymousConversation) {}
      
      public final void onConversationsLoaded(List<Conversation> paramAnonymousList, InboxState.Status paramAnonymousStatus) {}
      
      public final void onToolbarCloseClicked() {}
      
      public final void setStatusBarColor() {}
    };
    
    public abstract void onComposerSelected();
    
    public abstract void onConversationSelected(Conversation paramConversation);
    
    public abstract void onConversationsLoaded(List<Conversation> paramList, InboxState.Status paramStatus);
    
    public abstract void onToolbarCloseClicked();
    
    public abstract void setStatusBarColor();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/inbox/InboxFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */