package io.intercom.android.sdk.actions;

import android.app.Activity;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.models.BaseResponse;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.ConversationsResponse;
import io.intercom.android.sdk.models.TeamPresence;
import io.intercom.android.sdk.models.UsersResponse;
import io.intercom.android.sdk.state.ReplyPart;

public class Actions
{
  private static final Object NONE = "No Value";
  
  public static Action<Activity> activityPaused(Activity paramActivity)
  {
    return new Action(Action.Type.ACTIVITY_PAUSED, paramActivity);
  }
  
  public static Action<Activity> activityReadyForViewAttachment(Activity paramActivity)
  {
    return new Action(Action.Type.ACTIVITY_READY_FOR_VIEW_ATTACHMENT, paramActivity);
  }
  
  public static Action<Activity> activityStopped(Activity paramActivity)
  {
    return new Action(Action.Type.ACTIVITY_STOPPED, paramActivity);
  }
  
  public static Action<Long> appEnteredBackground(long paramLong)
  {
    return new Action(Action.Type.APP_ENTERED_BACKGROUND, Long.valueOf(paramLong));
  }
  
  public static Action<Long> appEnteredForeground(long paramLong)
  {
    return new Action(Action.Type.APP_ENTERED_FOREGROUND, Long.valueOf(paramLong));
  }
  
  public static Action<BaseResponse> baseResponseReceived(BaseResponse paramBaseResponse)
  {
    return new Action(Action.Type.BASE_RESPONSE_RECEIVED, paramBaseResponse);
  }
  
  public static Action<String> composerCleared(String paramString)
  {
    return new Action(Action.Type.COMPOSER_CLEARED, paramString);
  }
  
  public static Action<?> composerInputChanged()
  {
    return noValueAction(Action.Type.COMPOSER_INPUT_CHANGED);
  }
  
  public static Action<?> composerOpened()
  {
    return noValueAction(Action.Type.NEW_CONVERSATION_SCREEN_OPENED);
  }
  
  public static Action<?> composerSendButtonPressed()
  {
    return noValueAction(Action.Type.COMPOSER_SEND_BUTTON_PRESSED);
  }
  
  public static Action<String> composerTypedIn(String paramString)
  {
    return new Action(Action.Type.COMPOSER_TYPED_IN, paramString);
  }
  
  public static Action<?> conversationClosed()
  {
    return noValueAction(Action.Type.CONVERSATION_CLOSED);
  }
  
  public static Action<Conversation> conversationMarkedAsDismissed(Conversation paramConversation)
  {
    return new Action(Action.Type.CONVERSATION_MARKED_AS_DISMISSED, paramConversation);
  }
  
  public static Action<String> conversationMarkedAsRead(String paramString)
  {
    return new Action(Action.Type.CONVERSATION_MARKED_AS_READ, paramString);
  }
  
  public static Action<String> conversationOpened(String paramString)
  {
    return new Action(Action.Type.CONVERSATION_OPENED, paramString);
  }
  
  public static Action<ReplyPart> conversationReplySuccess(ReplyPart paramReplyPart)
  {
    return new Action(Action.Type.CONVERSATION_REPLY_SUCCESS, paramReplyPart);
  }
  
  public static Action<Conversation> fetchConversationSuccess(Conversation paramConversation)
  {
    return new Action(Action.Type.FETCH_CONVERSATION_SUCCESS, paramConversation);
  }
  
  public static Action<Long> fetchInboxBeforeDateRequest(long paramLong)
  {
    return new Action(Action.Type.FETCH_INBOX_BEFORE_DATE_REQUEST, Long.valueOf(paramLong));
  }
  
  public static Action<?> fetchInboxFailed()
  {
    return noValueAction(Action.Type.FETCH_INBOX_FAILED);
  }
  
  public static Action<?> fetchInboxRequest()
  {
    return noValueAction(Action.Type.FETCH_INBOX_REQUEST);
  }
  
  public static Action<ConversationsResponse> fetchInboxSuccess(ConversationsResponse paramConversationsResponse)
  {
    return new Action(Action.Type.FETCH_INBOX_SUCCESS, paramConversationsResponse);
  }
  
  public static Action<?> hardReset()
  {
    return noValueAction(Action.Type.HARD_RESET);
  }
  
  public static Action<?> inboxOpened()
  {
    return noValueAction(Action.Type.INBOX_OPENED);
  }
  
  public static Action<String> newCommentEventReceived(String paramString)
  {
    return new Action(Action.Type.NEW_COMMENT_EVENT_RECEIVED, paramString);
  }
  
  public static Action<Conversation> newConversationSuccess(Conversation paramConversation)
  {
    return new Action(Action.Type.NEW_CONVERSATION_SUCCESS, paramConversation);
  }
  
  private static Action<?> noValueAction(Action.Type paramType)
  {
    return new Action(paramType, NONE);
  }
  
  public static Action<?> sessionStarted()
  {
    return noValueAction(Action.Type.SESSION_STARTED);
  }
  
  public static Action<Integer> setBottomPadding(int paramInt)
  {
    return new Action(Action.Type.SET_BOTTOM_PADDING, Integer.valueOf(paramInt));
  }
  
  public static Action<Intercom.Visibility> setInAppNotificationVisibility(Intercom.Visibility paramVisibility)
  {
    return new Action(Action.Type.SET_IN_APP_NOTIFICATION_VISIBILITY, paramVisibility);
  }
  
  public static Action<Intercom.Visibility> setLauncherVisibility(Intercom.Visibility paramVisibility)
  {
    return new Action(Action.Type.SET_LAUNCHER_VISIBILITY, paramVisibility);
  }
  
  public static Action<?> softReset()
  {
    return noValueAction(Action.Type.SOFT_RESET);
  }
  
  public static Action<TeamPresence> teamPresenceUpdated(TeamPresence paramTeamPresence)
  {
    return new Action(Action.Type.TEAM_PRESENCE_UPDATED, paramTeamPresence);
  }
  
  public static Action<UsersResponse> unreadConversationsSuccess(UsersResponse paramUsersResponse)
  {
    return new Action(Action.Type.UNREAD_CONVERSATIONS_SUCCESS, paramUsersResponse);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/actions/Actions.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */