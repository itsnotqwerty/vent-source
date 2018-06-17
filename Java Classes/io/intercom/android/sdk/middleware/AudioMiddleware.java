package io.intercom.android.sdk.middleware;

import android.support.v4.g.m;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.actions.Action;
import io.intercom.android.sdk.conversation.SoundPlayer;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.state.OverlayState;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Selectors;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.store.Store.Middleware;
import io.intercom.android.sdk.store.Store.NextDispatcher;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class AudioMiddleware
  implements Store.Middleware<State>
{
  private final m<String, String> playedPartIdsForConversations = new m();
  private final SoundPlayer soundPlayer;
  private final Provider<UserIdentity> userIdentityProvider;
  
  public AudioMiddleware(SoundPlayer paramSoundPlayer, Provider<UserIdentity> paramProvider)
  {
    this.soundPlayer = paramSoundPlayer;
    this.userIdentityProvider = paramProvider;
  }
  
  private boolean neverPlayedAudioFor(Conversation paramConversation, Part paramPart)
  {
    paramConversation = (String)this.playedPartIdsForConversations.get(paramConversation.getId());
    return !paramPart.getId().equals(paramConversation);
  }
  
  private static boolean noActivityForOverlays(OverlayState paramOverlayState)
  {
    return paramOverlayState.resumedHostActivity() == null;
  }
  
  private static boolean notificationsDisabled(OverlayState paramOverlayState)
  {
    return paramOverlayState.notificationVisibility() != Intercom.Visibility.VISIBLE;
  }
  
  public void dispatch(Store<State> paramStore, Action<?> paramAction, Store.NextDispatcher paramNextDispatcher)
  {
    paramNextDispatcher.dispatch(paramAction);
    if (((UserIdentity)this.userIdentityProvider.get()).isSoftReset()) {}
    int i;
    do
    {
      do
      {
        return;
        switch (paramAction.type())
        {
        default: 
          return;
        case ???: 
        case ???: 
        case ???: 
          paramAction = (OverlayState)paramStore.select(Selectors.OVERLAY);
        }
      } while ((notificationsDisabled(paramAction)) || (noActivityForOverlays(paramAction)));
      paramStore = paramAction.dismissedPartIds();
      paramAction = paramAction.conversations().iterator();
      i = 0;
      while (paramAction.hasNext())
      {
        paramNextDispatcher = (Conversation)paramAction.next();
        Part localPart = paramNextDispatcher.getLastPart();
        if ((localPart != Part.NULL) && (!paramStore.contains(localPart.getId())))
        {
          if ((i != 0) || (neverPlayedAudioFor(paramNextDispatcher, localPart))) {}
          for (i = 1;; i = 0)
          {
            this.playedPartIdsForConversations.put(paramNextDispatcher.getId(), localPart.getId());
            break;
          }
        }
      }
    } while (i == 0);
    this.soundPlayer.playMessageReceivedSound();
    return;
    this.playedPartIdsForConversations.clear();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/middleware/AudioMiddleware.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */