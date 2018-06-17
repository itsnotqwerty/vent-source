package io.intercom.android.sdk.inbox;

import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.x;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.state.InboxState;
import io.intercom.android.sdk.state.InboxState.Status;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.utilities.TimeFormatter;
import java.util.List;
import java.util.Locale;

class InboxAdapter
  extends RecyclerView.a<RecyclerView.x>
{
  static final int CONVERSATION = 0;
  static final int LOADING = 1;
  private final Provider<AppConfig> appConfigProvider;
  private final ConversationClickListener conversationClickListener;
  private InboxState inboxState;
  private final LayoutInflater inflater;
  private final j requestManager;
  private final Store<State> store;
  private final TimeFormatter timeFormatter;
  private UserIdentity userIdentity;
  
  InboxAdapter(LayoutInflater paramLayoutInflater, ConversationClickListener paramConversationClickListener, Store<State> paramStore, TimeFormatter paramTimeFormatter, Provider<AppConfig> paramProvider, UserIdentity paramUserIdentity, j paramj)
  {
    this.inflater = paramLayoutInflater;
    this.conversationClickListener = paramConversationClickListener;
    this.store = paramStore;
    this.timeFormatter = paramTimeFormatter;
    this.appConfigProvider = paramProvider;
    this.userIdentity = paramUserIdentity;
    this.requestManager = paramj;
    setHasStableIds(true);
  }
  
  private int conversationCount()
  {
    return this.inboxState.conversations().size();
  }
  
  public int getItemCount()
  {
    int j = conversationCount();
    if (this.inboxState.status() == InboxState.Status.LOADING) {}
    for (int i = 1;; i = 0) {
      return i + j;
    }
  }
  
  public long getItemId(int paramInt)
  {
    if (paramInt == conversationCount()) {
      return -1L;
    }
    String str = ((Conversation)this.inboxState.conversations().get(paramInt)).getId();
    if ((!TextUtils.isEmpty(str)) && (TextUtils.isDigitsOnly(str))) {
      return Long.valueOf(str).longValue();
    }
    return str.hashCode();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == conversationCount()) {
      return 1;
    }
    return 0;
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    if ((paramx instanceof InboxRowViewHolder)) {
      ((InboxRowViewHolder)paramx).bindData((Conversation)this.inboxState.conversations().get(paramInt), this.userIdentity, (AppConfig)this.appConfigProvider.get(), (TeamPresence)this.store.select(Selectors.TEAM_PRESENCE));
    }
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 0) {
      return new InboxRowViewHolder(this.inflater.inflate(R.layout.intercom_row_inbox, paramViewGroup, false), this.conversationClickListener, this.timeFormatter, this.requestManager);
    }
    if (paramInt == 1) {
      return new LoadingViewHolder(this.inflater.inflate(R.layout.intercom_row_loading, paramViewGroup, false), ((AppConfig)this.appConfigProvider.get()).getBaseColor());
    }
    throw new RuntimeException(String.format(Locale.getDefault(), "View type %d not supported", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  void setInboxState(InboxState paramInboxState)
  {
    this.inboxState = paramInboxState;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/inbox/InboxAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */