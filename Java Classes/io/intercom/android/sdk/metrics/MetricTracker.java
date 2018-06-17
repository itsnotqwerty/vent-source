package io.intercom.android.sdk.metrics;

import android.content.Context;
import io.intercom.android.sdk.commons.utilities.DeviceUtils;
import io.intercom.android.sdk.commons.utilities.TimeProvider;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.overlay.LauncherOpenBehaviour.LauncherType;
import io.intercom.android.sdk.profile.ProfilePresenter.ProfileType;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class MetricTracker
{
  static final String METADATA_BADGE_VALUE = "badge_value";
  static final String METADATA_COMMENT_ID = "comment_id";
  static final String METADATA_CONVERSATION_ID = "conversation_id";
  static final String METADATA_HAS_ARTICLE_CARD = "has_article_card";
  static final String METADATA_IS_ATTACHMENT = "is_attachment";
  static final String METADATA_IS_GIF = "is_gif";
  static final String METADATA_MESSAGE_ID = "message_id";
  static final String METADATA_MESSAGE_TYPE = "message_type";
  static final String METADATA_PUSH_TYPE = "push_type";
  static final String METADATA_REACTION_INDEX = "reaction_index";
  static final String METADATA_SEARCH_QUERY = "search_query";
  static final String METADATA_TEAMMATE_STATUS = "teammate_status";
  static final String METADATA_TIME_SINCE_LAST_ACTIVE = "time_since_last_active";
  static final String METADATA_URL = "url";
  static final String METADATA_WITHIN_OFFICE_HOURS = "within_office_hours";
  static final String VALUE_ACTIVE = "active";
  static final String VALUE_AWAY = "away";
  static final String VALUE_MESSAGE = "message";
  static final String VALUE_NOTIFICATION = "notification";
  private final String appVersion;
  private final String sdkVersion;
  private final MetricsStore store;
  private final TimeProvider timeProvider;
  private final UserIdentity userIdentity;
  
  public MetricTracker(UserIdentity paramUserIdentity, MetricsStore paramMetricsStore, Context paramContext)
  {
    this(paramUserIdentity, paramMetricsStore, TimeProvider.SYSTEM, paramContext);
  }
  
  MetricTracker(UserIdentity paramUserIdentity, MetricsStore paramMetricsStore, TimeProvider paramTimeProvider, Context paramContext)
  {
    this.userIdentity = paramUserIdentity;
    this.timeProvider = paramTimeProvider;
    this.store = paramMetricsStore;
    this.sdkVersion = "4.1.9";
    this.appVersion = DeviceUtils.getAppVersion(paramContext);
  }
  
  private static String contextForInApp(@InAppMessageViewContext int paramInt)
  {
    if (paramInt == 0) {
      return "from_snippet";
    }
    return "from_full";
  }
  
  private static String contextFrom(LauncherOpenBehaviour.LauncherType paramLauncherType)
  {
    if (LauncherOpenBehaviour.LauncherType.DEFAULT == paramLauncherType) {
      return "from_launcher";
    }
    return "from_custom_launcher";
  }
  
  private MetricObject createMetric(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return new MetricObject(paramString1, paramString2, UUID.randomUUID().toString(), this.userIdentity.getIntercomId(), paramString3, paramString4, paramString5, paramString6, this.timeProvider, this.appVersion, this.sdkVersion);
  }
  
  private MetricObject newEducateMetric(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return createMetric("educate_event", "educate", paramString1, paramString2, paramString3, paramString4);
  }
  
  private MetricObject newMetric(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    return createMetric("mv3_metric", "messenger", paramString1, paramString2, paramString3, paramString4);
  }
  
  private static String objectFrom(ProfilePresenter.ProfileType paramProfileType)
  {
    if (ProfilePresenter.ProfileType.TEAMMATE == paramProfileType) {
      return "teammate_profile";
    }
    return "team_profile";
  }
  
  private void track(MetricObject paramMetricObject)
  {
    this.store.track(paramMetricObject);
  }
  
  public void clickedInput(String paramString1, String paramString2)
  {
    track(newMetric("clicked", paramString2, "messenger", "in_conversation").addMetaData("conversation_id", paramString1));
  }
  
  public void closedArticle(String paramString1, String paramString2, int paramInt)
  {
    if (paramInt == 0) {}
    for (String str = "from_close_button";; str = "from_android_back_button")
    {
      track(newEducateMetric("closed", "article", "messenger", str).addMetaData("message_id", paramString2).addMetaData("conversation_id", paramString1));
      return;
    }
  }
  
  public void closedHelpCenter(String paramString, int paramInt)
  {
    if (paramInt == 0) {}
    for (String str = "from_close_button";; str = "from_android_back_button")
    {
      track(newEducateMetric("closed", "help_center", "messenger", str).addMetaData("conversation_id", paramString));
      return;
    }
  }
  
  public void closedInAppFromFull(String paramString1, String paramString2)
  {
    track(newMetric("closed", "message", "in_app", "from_full").addMetaData("message_id", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void closedMessengerBackButton()
  {
    track(newMetric("closed", "messenger", "messenger", "from_android_back_button"));
  }
  
  public void closedMessengerCloseButton()
  {
    track(newMetric("closed", "messenger", "messenger", "from_close_button"));
  }
  
  public void closedMessengerSheet(String paramString1, String paramString2)
  {
    track(newMetric("closed", "messenger_sheet", "messenger", "in_conversation").addMetaData("url", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void dismissInAppCommentSnippet(String paramString1, String paramString2)
  {
    track(newMetric("dismissed", "reply", "in_app", "from_snippet").addMetaData("conversation_id", paramString1).addMetaData("comment_id", paramString2));
  }
  
  public void dismissInAppMessageSnippet(String paramString1, String paramString2)
  {
    track(newMetric("dismissed", "message", "in_app", "from_snippet").addMetaData("conversation_id", paramString1).addMetaData("message_id", paramString2));
  }
  
  public void dismissedPushNotification(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "message";; str = "notification")
    {
      track(newMetric("dismissed", "message", "in_app", "from_push").addMetaData("conversation_id", paramString).addMetaData("push_type", str));
      return;
    }
  }
  
  public void educateWebviewMetric(String paramString1, String paramString2, String paramString3, Map<String, Object> paramMap)
  {
    paramString1 = newEducateMetric(paramString1, paramString2, paramString3, "from_help_center_webview");
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramString2 = paramMap.keySet().iterator();
      while (paramString2.hasNext())
      {
        paramString3 = (String)paramString2.next();
        paramString1.addMetaData(paramString3, paramMap.get(paramString3));
      }
    }
    track(paramString1);
  }
  
  public void expandedInput(String paramString1, String paramString2)
  {
    track(newMetric("opened", "expanded_gif_input", "messenger", "in_conversation").addMetaData("conversation_id", paramString1));
  }
  
  public void messengerCardWebViewEvent(String paramString1, String paramString2, String paramString3, Map<String, Object> paramMap)
  {
    paramString1 = newEducateMetric(paramString1, paramString2, paramString3, "from_messenger_card_webview");
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramString2 = paramMap.keySet().iterator();
      while (paramString2.hasNext())
      {
        paramString3 = (String)paramString2.next();
        paramString1.addMetaData(paramString3, paramMap.get(paramString3));
      }
    }
    track(paramString1);
  }
  
  public void newConversationFromComposeButton(boolean paramBoolean)
  {
    track(newMetric("opened", "new_conversation", "messenger", "from_conversation_list").addMetaData("within_office_hours", Boolean.valueOf(paramBoolean)));
  }
  
  public void openConversationFromConversationList(String paramString1, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    MetricObject localMetricObject = newMetric("opened", "conversation", "messenger", "from_conversation_list").addMetaData("conversation_id", paramString1).addMetaData("within_office_hours", Boolean.valueOf(paramBoolean1));
    if (paramBoolean2) {}
    for (paramString1 = "active";; paramString1 = "away")
    {
      track(localMetricObject.addMetaData("teammate_status", paramString1).addMetaData("time_since_last_active", paramString2));
      return;
    }
  }
  
  public void openConversationsListFromConversation(String paramString)
  {
    track(newMetric("opened", "conversation_list", "messenger", "from_conversation").addMetaData("conversation_id", paramString));
  }
  
  public void openConversationsListFromNewConversation()
  {
    track(newMetric("opened", "conversation_list", "messenger", "from_new_conversation"));
  }
  
  public void openedConversationFromFull(String paramString1, String paramString2)
  {
    track(newMetric("opened", "conversation", "messenger", "from_full").addMetaData("comment_id", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void openedConversationFromSnippet(String paramString1, String paramString2)
  {
    track(newMetric("opened", "conversation", "messenger", "from_snippet").addMetaData("comment_id", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void openedMessengerConversation(String paramString, LauncherOpenBehaviour.LauncherType paramLauncherType)
  {
    track(newMetric("opened", "conversation", "messenger", contextFrom(paramLauncherType)).addMetaData("conversation_id", paramString));
  }
  
  public void openedMessengerConversationList(LauncherOpenBehaviour.LauncherType paramLauncherType)
  {
    track(newMetric("opened", "conversation_list", "messenger", contextFrom(paramLauncherType)));
  }
  
  public void openedMessengerNewConversation(LauncherOpenBehaviour.LauncherType paramLauncherType)
  {
    track(newMetric("opened", "new_conversation", "messenger", contextFrom(paramLauncherType)));
  }
  
  public void openedPushOnlyNotification(String paramString)
  {
    track(newMetric("opened", "message", "in_app", "from_push").addMetaData("conversation_id", paramString).addMetaData("push_type", "message"));
  }
  
  public void profileAutoOpen(String paramString, ProfilePresenter.ProfileType paramProfileType)
  {
    track(newMetric("opened", objectFrom(paramProfileType), "messenger", "from_auto").addMetaData("conversation_id", paramString));
  }
  
  public void profileClickedOpen(String paramString, ProfilePresenter.ProfileType paramProfileType)
  {
    track(newMetric("opened", objectFrom(paramProfileType), "messenger", "from_clicking").addMetaData("conversation_id", paramString));
  }
  
  public void profileScrolledOpen(String paramString, ProfilePresenter.ProfileType paramProfileType)
  {
    track(newMetric("opened", objectFrom(paramProfileType), "messenger", "from_scrolling").addMetaData("conversation_id", paramString));
  }
  
  public void receivedMessageFromFullWhenClosed(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3)
  {
    track(newMetric("received", "message", "in_app", "from_full").addMetaData("conversation_id", paramString1).addMetaData("message_id", paramString2).addMetaData("message_type", paramString3).addMetaData("is_attachment", Boolean.valueOf(paramBoolean1)).addMetaData("has_article_card", Boolean.valueOf(paramBoolean2)));
  }
  
  public void receivedMessageFromSnippetWhenClosed(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, String paramString3)
  {
    track(newMetric("received", "message", "in_app", "from_snippet").addMetaData("conversation_id", paramString1).addMetaData("message_id", paramString2).addMetaData("message_type", paramString3).addMetaData("is_attachment", Boolean.valueOf(paramBoolean1)).addMetaData("has_article_card", Boolean.valueOf(paramBoolean2)));
  }
  
  public void receivedNotificationFromBadgeWhenMessengerClosed(String paramString)
  {
    track(newMetric("received", "badge", "in_app", "from_launcher").addMetaData("badge_value", paramString));
  }
  
  public void receivedOperatorReply(String paramString)
  {
    track(newEducateMetric("received", "operator_reply", "messenger", "from_conversation").addMetaData("conversation_id", paramString));
  }
  
  public void receivedPushNotification(String paramString)
  {
    track(newMetric("received", "message", "push", "from_push").addMetaData("conversation_id", paramString).addMetaData("push_type", "notification"));
  }
  
  public void receivedPushOnlyNotification(String paramString)
  {
    track(newMetric("received", "message", "push", "from_push").addMetaData("conversation_id", paramString).addMetaData("push_type", "message"));
  }
  
  public void receivedReply(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    track(newMetric("received", "reply", "messenger", "in_conversation").addMetaData("is_attachment", Boolean.valueOf(paramBoolean1)).addMetaData("has_article_card", Boolean.valueOf(paramBoolean2)).addMetaData("comment_id", paramString1).addMetaData("conversation_id", paramString2));
  }
  
  public void receivedReplyFromSnippetWhenClosed(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    track(newMetric("received", "reply", "in_app", "from_snippet").addMetaData("conversation_id", paramString1).addMetaData("comment_id", paramString2).addMetaData("is_attachment", Boolean.valueOf(paramBoolean1)).addMetaData("has_article_card", Boolean.valueOf(paramBoolean2)));
  }
  
  public void searchedGifInput(String paramString)
  {
    track(newMetric("searched", "expanded_gif_input", "messenger", "in_conversation").addMetaData("search_query", paramString));
  }
  
  public void sentInConversation(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, boolean paramBoolean3, boolean paramBoolean4, String paramString3)
  {
    paramString2 = newMetric("sent", "reply", "messenger", "in_conversation").addMetaData("is_attachment", Boolean.valueOf(paramBoolean1)).addMetaData("is_gif", Boolean.valueOf(paramBoolean2)).addMetaData("message_id", paramString1).addMetaData("conversation_id", paramString2).addMetaData("within_office_hours", Boolean.valueOf(paramBoolean3));
    if (paramBoolean4) {}
    for (paramString1 = "active";; paramString1 = "away")
    {
      track(paramString2.addMetaData("teammate_status", paramString1).addMetaData("time_since_last_active", paramString3));
      return;
    }
  }
  
  public void sentInNewConversation(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2, boolean paramBoolean3)
  {
    track(newMetric("sent", "message", "messenger", "in_new_conversation").addMetaData("is_attachment", Boolean.valueOf(paramBoolean1)).addMetaData("is_gif", Boolean.valueOf(paramBoolean2)).addMetaData("message_id", paramString1).addMetaData("conversation_id", paramString2).addMetaData("within_office_hours", Boolean.valueOf(paramBoolean3)));
  }
  
  public void sentReaction(String paramString1, String paramString2, int paramInt, ReactionLocation paramReactionLocation)
  {
    if (ReactionLocation.CONVERSATION == paramReactionLocation)
    {
      track(newMetric("sent", "reaction", "messenger", "in_conversation").addMetaData("message_id", paramString2).addMetaData("reaction_index", Integer.valueOf(paramInt)).addMetaData("conversation_id", paramString1));
      return;
    }
    if (ReactionLocation.LINK == paramReactionLocation)
    {
      track(newEducateMetric("sent", "reaction", "messenger", "on_article").addMetaData("message_id", paramString2).addMetaData("conversation_id", paramString1));
      return;
    }
    track(newMetric("sent", "reaction", "in_app", "from_full").addMetaData("message_id", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void startConversation(String paramString)
  {
    track(newMetric("opened", "conversation", "messenger", "from_new_conversation").addMetaData("conversation_id", paramString));
  }
  
  void typeInConversation(String paramString)
  {
    track(newMetric("typed", "reply", "messenger", "in_conversation").addMetaData("conversation_id", paramString));
  }
  
  void typeInNewConversation()
  {
    track(newMetric("typed", "message", "messenger", "in_new_conversation"));
  }
  
  public void viewedArticle(String paramString1, String paramString2)
  {
    track(newEducateMetric("viewed", "article", "messenger", "from_conversation").addMetaData("message_id", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void viewedHelpCenter(String paramString)
  {
    track(newEducateMetric("viewed", "help_center", "messenger", "from_conversation").addMetaData("conversation_id", paramString));
  }
  
  public void viewedInApp(String paramString1, String paramString2, @InAppMessageViewContext int paramInt)
  {
    track(newMetric("viewed", "message", "in_app", contextForInApp(paramInt)).addMetaData("message_id", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void viewedInAppFromMessenger(String paramString1, String paramString2, String paramString3)
  {
    track(newMetric("viewed", "message", "messenger", "from_full").addMetaData("message_type", paramString3).addMetaData("message_id", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void viewedMessengerSheet(String paramString1, String paramString2)
  {
    track(newMetric("viewed", "messenger_sheet", "messenger", "in_conversation").addMetaData("url", paramString2).addMetaData("conversation_id", paramString1));
  }
  
  public void viewedPushNotification(String paramString)
  {
    track(newMetric("viewed", "message", "in_app", "from_push").addMetaData("conversation_id", paramString).addMetaData("push_type", "notification"));
  }
  
  public void viewedReply(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    track(newMetric("viewed", "reply", "messenger", "from_snippet").addMetaData("is_attachment", Boolean.valueOf(paramBoolean1)).addMetaData("has_article_card", Boolean.valueOf(paramBoolean2)).addMetaData("comment_id", paramString1).addMetaData("conversation_id", paramString2));
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Action
  {
    public static final String CLICKED = "clicked";
    public static final String CLOSED = "closed";
    public static final String DISMISSED = "dismissed";
    public static final String OPENED = "opened";
    public static final String RECEIVED = "received";
    public static final String SEARCHED = "searched";
    public static final String SENT = "sent";
    public static final String TYPED = "typed";
    public static final String VIEWED = "viewed";
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface CloseActionContext
  {
    public static final int BACK_BUTTON = 1;
    public static final int CLOSE_BUTTON = 0;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Context
  {
    public static final String FROM_ANDROID_BACK_BUTTON = "from_android_back_button";
    public static final String FROM_AUTO = "from_auto";
    public static final String FROM_CLICKING = "from_clicking";
    public static final String FROM_CLOSE_BUTTON = "from_close_button";
    public static final String FROM_CONVERSATION = "from_conversation";
    public static final String FROM_CONVERSATION_LIST = "from_conversation_list";
    public static final String FROM_CUSTOM_LAUNCHER = "from_custom_launcher";
    public static final String FROM_FULL = "from_full";
    public static final String FROM_HELP_CENTER_WEBVIEW = "from_help_center_webview";
    public static final String FROM_LAUNCHER = "from_launcher";
    public static final String FROM_MESSENGER_CARD_WEBVIEW = "from_messenger_card_webview";
    public static final String FROM_NEW_CONVERSATION = "from_new_conversation";
    public static final String FROM_PUSH = "from_push";
    public static final String FROM_SCROLLING = "from_scrolling";
    public static final String FROM_SNIPPET = "from_snippet";
    public static final String IN_CONVERSATION = "in_conversation";
    public static final String IN_NEW_CONVERSATION = "in_new_conversation";
    public static final String ON_ARTICLE = "on_article";
  }
  
  public static @interface InAppMessageViewContext
  {
    public static final int FULL = 1;
    public static final int SNIPPET = 0;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Name
  {
    public static final String EDUCATE = "educate_event";
    public static final String MESSENGER = "mv3_metric";
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Object
  {
    public static final String ARTICLE = "article";
    public static final String BADGE = "badge";
    public static final String CONVERSATION = "conversation";
    public static final String CONVERSATION_LIST = "conversation_list";
    public static final String EXPANDED_GIF_INPUT = "expanded_gif_input";
    public static final String EXPANDED_IMAGE_INPUT = "expanded_image_input";
    public static final String GIF_INPUT = "gif_input";
    public static final String HELP_CENTER = "help_center";
    public static final String IMAGE_INPUT = "image_input";
    public static final String INPUT = "input";
    public static final String MESSAGE = "message";
    public static final String MESSENGER = "messenger";
    public static final String MESSENGER_SHEET = "messenger_sheet";
    public static final String NEW_CONVERSATION = "new_conversation";
    public static final String OPERATOR_REPLY = "operator_reply";
    public static final String REACTION = "reaction";
    public static final String REPLY = "reply";
    public static final String TEAMMATE_PROFILE = "teammate_profile";
    public static final String TEAM_PROFILE = "team_profile";
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Owner
  {
    public static final String EDUCATE = "educate";
    public static final String MESSENGER = "messenger";
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Place
  {
    public static final String IN_APP = "in_app";
    public static final String MESSENGER = "messenger";
    public static final String MESSENGER_CARD = "messenger_card";
    public static final String PUSH = "push";
  }
  
  public static enum ReactionLocation
  {
    CONVERSATION,  IN_APP,  LINK;
    
    private ReactionLocation() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/metrics/MetricTracker.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */