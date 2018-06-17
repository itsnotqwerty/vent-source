package io.intercom.android.sdk.store;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import io.intercom.a.c.a.b;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.api.UserUpdateBatcher;
import io.intercom.android.sdk.conversation.SoundPlayer;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.middleware.ApiMiddleware;
import io.intercom.android.sdk.middleware.AppConfigMiddleware;
import io.intercom.android.sdk.middleware.AudioMiddleware;
import io.intercom.android.sdk.middleware.FirstMessageMiddleware;
import io.intercom.android.sdk.middleware.LoggerMiddleware;
import io.intercom.android.sdk.middleware.MetricTrackerMiddleware;
import io.intercom.android.sdk.middleware.NexusClientMiddleware;
import io.intercom.android.sdk.middleware.OperatorClientConditionsMiddleware;
import io.intercom.android.sdk.middleware.OverlayPresenterMiddleware;
import io.intercom.android.sdk.middleware.UserIdentityMiddleware;
import io.intercom.android.sdk.middleware.UserUpdateBatcherMiddleware;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.overlay.OverlayPresenter;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.twig.Twig;

public class StoreFactory
{
  public static Store<State> createStore(Provider<Api> paramProvider, Provider<AppConfig> paramProvider1, Provider<NexusClient> paramProvider2, Provider<OverlayPresenter> paramProvider3, Provider<UserUpdateBatcher> paramProvider4, SoundPlayer paramSoundPlayer, Provider<UserIdentity> paramProvider5, Context paramContext, Twig paramTwig, b paramb, Provider<MetricTracker> paramProvider6)
  {
    return new Store(new StateReducer(new HasConversationsReducer(), new LastViewReducer(), new TeamPresenceReducer(), new UnreadConversationsReducer(), new InboxStateReducer(), new HostAppStateReducer(), new OverlayStateReducer(), new ActiveConversationStateReducer()), State.create(false, LastViewReducer.INITIAL_STATE, TeamPresenceReducer.INITIAL_STATE, UnreadConversationsReducer.INITIAL_STATE, InboxStateReducer.INITIAL_STATE, HostAppStateReducer.INITIAL_STATE, OverlayStateReducer.INITIAL_STATE, ActiveConversationStateReducer.INITIAL_STATE), new Store.Middleware[] { new LoggerMiddleware(paramTwig), new ApiMiddleware(paramProvider), new UserUpdateBatcherMiddleware(paramProvider4, paramProvider1, paramProvider5), new NexusClientMiddleware(paramProvider2, paramProvider1, new Handler(Looper.getMainLooper())), new OverlayPresenterMiddleware(paramProvider3), new AudioMiddleware(paramSoundPlayer, paramProvider5), new FirstMessageMiddleware(paramTwig, paramContext), new UserIdentityMiddleware(paramProvider5), new AppConfigMiddleware(paramProvider1, paramb), new MetricTrackerMiddleware(paramProvider6), new OperatorClientConditionsMiddleware(paramProvider, new Handler(Looper.getMainLooper())) });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/store/StoreFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */