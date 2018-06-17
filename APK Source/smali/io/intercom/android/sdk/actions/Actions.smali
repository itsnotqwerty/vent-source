.class public Lio/intercom/android/sdk/actions/Actions;
.super Ljava/lang/Object;


# static fields
.field private static final NONE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "No Value"

    sput-object v0, Lio/intercom/android/sdk/actions/Actions;->NONE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityPaused(Landroid/app/Activity;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_PAUSED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static activityReadyForViewAttachment(Landroid/app/Activity;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_READY_FOR_VIEW_ATTACHMENT:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static activityStopped(Landroid/app/Activity;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_STOPPED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static appEnteredBackground(J)Lio/intercom/android/sdk/actions/Action;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->APP_ENTERED_BACKGROUND:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static appEnteredForeground(J)Lio/intercom/android/sdk/actions/Action;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->APP_ENTERED_FOREGROUND:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static baseResponseReceived(Lio/intercom/android/sdk/models/BaseResponse;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/BaseResponse;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/models/BaseResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->BASE_RESPONSE_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static composerCleared(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_CLEARED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static composerInputChanged()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_INPUT_CHANGED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static composerOpened()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->NEW_CONVERSATION_SCREEN_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static composerSendButtonPressed()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_SEND_BUTTON_PRESSED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static composerTypedIn(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_TYPED_IN:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static conversationClosed()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_CLOSED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static conversationMarkedAsDismissed(Lio/intercom/android/sdk/models/Conversation;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/Conversation;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_DISMISSED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static conversationMarkedAsRead(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_READ:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static conversationOpened(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static conversationReplySuccess(Lio/intercom/android/sdk/state/ReplyPart;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/state/ReplyPart;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/state/ReplyPart;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_REPLY_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fetchConversationSuccess(Lio/intercom/android/sdk/models/Conversation;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/Conversation;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fetchInboxBeforeDateRequest(J)Lio/intercom/android/sdk/actions/Action;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_BEFORE_DATE_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static fetchInboxFailed()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_FAILED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static fetchInboxRequest()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static fetchInboxSuccess(Lio/intercom/android/sdk/models/ConversationsResponse;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/ConversationsResponse;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/models/ConversationsResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static hardReset()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->HARD_RESET:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static inboxOpened()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->INBOX_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static newCommentEventReceived(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->NEW_COMMENT_EVENT_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newConversationSuccess(Lio/intercom/android/sdk/models/Conversation;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/Conversation;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->NEW_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/actions/Action$Type;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Actions;->NONE:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static sessionStarted()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->SESSION_STARTED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static setBottomPadding(I)Lio/intercom/android/sdk/actions/Action;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->SET_BOTTOM_PADDING:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setInAppNotificationVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Intercom$Visibility;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/Intercom$Visibility;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->SET_IN_APP_NOTIFICATION_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setLauncherVisibility(Lio/intercom/android/sdk/Intercom$Visibility;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/Intercom$Visibility;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/Intercom$Visibility;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->SET_LAUNCHER_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static softReset()Lio/intercom/android/sdk/actions/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/actions/Action",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->SOFT_RESET:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0}, Lio/intercom/android/sdk/actions/Actions;->noValueAction(Lio/intercom/android/sdk/actions/Action$Type;)Lio/intercom/android/sdk/actions/Action;

    move-result-object v0

    return-object v0
.end method

.method public static teamPresenceUpdated(Lio/intercom/android/sdk/models/TeamPresence;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/TeamPresence;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/models/TeamPresence;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->TEAM_PRESENCE_UPDATED:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static unreadConversationsSuccess(Lio/intercom/android/sdk/models/UsersResponse;)Lio/intercom/android/sdk/actions/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/android/sdk/models/UsersResponse;",
            ")",
            "Lio/intercom/android/sdk/actions/Action",
            "<",
            "Lio/intercom/android/sdk/models/UsersResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/actions/Action;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->UNREAD_CONVERSATIONS_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    invoke-direct {v0, v1, p0}, Lio/intercom/android/sdk/actions/Action;-><init>(Lio/intercom/android/sdk/actions/Action$Type;Ljava/lang/Object;)V

    return-object v0
.end method
