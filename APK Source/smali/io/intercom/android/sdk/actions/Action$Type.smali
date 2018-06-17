.class public final enum Lio/intercom/android/sdk/actions/Action$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/actions/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/actions/Action$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum ACTIVITY_PAUSED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum ACTIVITY_READY_FOR_VIEW_ATTACHMENT:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum ACTIVITY_STOPPED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum APP_ENTERED_BACKGROUND:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum APP_ENTERED_FOREGROUND:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum BASE_RESPONSE_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum COMPOSER_CLEARED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum COMPOSER_INPUT_CHANGED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum COMPOSER_SEND_BUTTON_PRESSED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum COMPOSER_TYPED_IN:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum CONVERSATION_CLOSED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum CONVERSATION_MARKED_AS_DISMISSED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum CONVERSATION_MARKED_AS_READ:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum CONVERSATION_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum CONVERSATION_REPLY_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum FETCH_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum FETCH_INBOX_BEFORE_DATE_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum FETCH_INBOX_FAILED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum FETCH_INBOX_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum FETCH_INBOX_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum HARD_RESET:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum INBOX_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum NEW_COMMENT_EVENT_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum NEW_CONVERSATION_SCREEN_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum NEW_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum SESSION_STARTED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum SET_BOTTOM_PADDING:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum SET_IN_APP_NOTIFICATION_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum SET_LAUNCHER_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum SOFT_RESET:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum TEAM_PRESENCE_UPDATED:Lio/intercom/android/sdk/actions/Action$Type;

.field public static final enum UNREAD_CONVERSATIONS_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "ACTIVITY_PAUSED"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_PAUSED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "ACTIVITY_READY_FOR_VIEW_ATTACHMENT"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_READY_FOR_VIEW_ATTACHMENT:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "ACTIVITY_STOPPED"

    invoke-direct {v0, v1, v5}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_STOPPED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "APP_ENTERED_BACKGROUND"

    invoke-direct {v0, v1, v6}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->APP_ENTERED_BACKGROUND:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "APP_ENTERED_FOREGROUND"

    invoke-direct {v0, v1, v7}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->APP_ENTERED_FOREGROUND:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "BASE_RESPONSE_RECEIVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->BASE_RESPONSE_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "COMPOSER_TYPED_IN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_TYPED_IN:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "COMPOSER_INPUT_CHANGED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_INPUT_CHANGED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "COMPOSER_CLEARED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_CLEARED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "COMPOSER_SEND_BUTTON_PRESSED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_SEND_BUTTON_PRESSED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "CONVERSATION_CLOSED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_CLOSED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "CONVERSATION_OPENED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "CONVERSATION_MARKED_AS_DISMISSED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_DISMISSED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "CONVERSATION_MARKED_AS_READ"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_READ:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "CONVERSATION_REPLY_SUCCESS"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_REPLY_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "FETCH_INBOX_REQUEST"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "FETCH_INBOX_BEFORE_DATE_REQUEST"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_BEFORE_DATE_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "FETCH_INBOX_SUCCESS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "FETCH_INBOX_FAILED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_FAILED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "FETCH_CONVERSATION_SUCCESS"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "HARD_RESET"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->HARD_RESET:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "INBOX_OPENED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->INBOX_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "NEW_COMMENT_EVENT_RECEIVED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->NEW_COMMENT_EVENT_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "NEW_CONVERSATION_SCREEN_OPENED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->NEW_CONVERSATION_SCREEN_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "NEW_CONVERSATION_SUCCESS"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->NEW_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "SESSION_STARTED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->SESSION_STARTED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "SET_LAUNCHER_VISIBILITY"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->SET_LAUNCHER_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "SET_IN_APP_NOTIFICATION_VISIBILITY"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->SET_IN_APP_NOTIFICATION_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "SET_BOTTOM_PADDING"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->SET_BOTTOM_PADDING:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "SOFT_RESET"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->SOFT_RESET:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "TEAM_PRESENCE_UPDATED"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->TEAM_PRESENCE_UPDATED:Lio/intercom/android/sdk/actions/Action$Type;

    new-instance v0, Lio/intercom/android/sdk/actions/Action$Type;

    const-string v1, "UNREAD_CONVERSATIONS_SUCCESS"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/actions/Action$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->UNREAD_CONVERSATIONS_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    const/16 v0, 0x20

    new-array v0, v0, [Lio/intercom/android/sdk/actions/Action$Type;

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_PAUSED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_READY_FOR_VIEW_ATTACHMENT:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->ACTIVITY_STOPPED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->APP_ENTERED_BACKGROUND:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v1, v0, v6

    sget-object v1, Lio/intercom/android/sdk/actions/Action$Type;->APP_ENTERED_FOREGROUND:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->BASE_RESPONSE_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_TYPED_IN:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_INPUT_CHANGED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_CLEARED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->COMPOSER_SEND_BUTTON_PRESSED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_CLOSED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_DISMISSED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_MARKED_AS_READ:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->CONVERSATION_REPLY_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_BEFORE_DATE_REQUEST:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_INBOX_FAILED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->FETCH_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->HARD_RESET:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->INBOX_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->NEW_COMMENT_EVENT_RECEIVED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->NEW_CONVERSATION_SCREEN_OPENED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->NEW_CONVERSATION_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->SESSION_STARTED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->SET_LAUNCHER_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->SET_IN_APP_NOTIFICATION_VISIBILITY:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->SET_BOTTOM_PADDING:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->SOFT_RESET:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->TEAM_PRESENCE_UPDATED:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lio/intercom/android/sdk/actions/Action$Type;->UNREAD_CONVERSATIONS_SUCCESS:Lio/intercom/android/sdk/actions/Action$Type;

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/android/sdk/actions/Action$Type;->$VALUES:[Lio/intercom/android/sdk/actions/Action$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/actions/Action$Type;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/actions/Action$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/actions/Action$Type;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/actions/Action$Type;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/actions/Action$Type;->$VALUES:[Lio/intercom/android/sdk/actions/Action$Type;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/actions/Action$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/actions/Action$Type;

    return-object v0
.end method
