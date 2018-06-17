.class public enum Lio/intercom/android/sdk/nexus/NexusEventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/nexus/NexusEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum AdminIsTyping:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum AdminIsTypingANote:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ConversationAssigned:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ConversationClosed:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ConversationReopened:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ConversationSeen:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum NewComment:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum NewNote:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum Subscribe:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ThreadAssigned:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ThreadClosed:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ThreadCreated:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ThreadReopened:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum ThreadUpdated:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum UNKNOWN:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum Unsubscribe:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum UserContentSeenByAdmin:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum UserIsTyping:Lio/intercom/android/sdk/nexus/NexusEventType;

.field public static final enum UserPresence:Lio/intercom/android/sdk/nexus/NexusEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$1;

    const-string v1, "NewComment"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/nexus/NexusEventType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->NewComment:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$2;

    const-string v1, "ConversationSeen"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/nexus/NexusEventType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationSeen:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$3;

    const-string v1, "UserIsTyping"

    invoke-direct {v0, v1, v5}, Lio/intercom/android/sdk/nexus/NexusEventType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->UserIsTyping:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$4;

    const-string v1, "AdminIsTyping"

    invoke-direct {v0, v1, v6}, Lio/intercom/android/sdk/nexus/NexusEventType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->AdminIsTyping:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$5;

    const-string v1, "AdminIsTypingANote"

    invoke-direct {v0, v1, v7}, Lio/intercom/android/sdk/nexus/NexusEventType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->AdminIsTypingANote:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$6;

    const-string v1, "NewNote"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->NewNote:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$7;

    const-string v1, "ConversationAssigned"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationAssigned:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$8;

    const-string v1, "ConversationClosed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationClosed:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$9;

    const-string v1, "ConversationReopened"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationReopened:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$10;

    const-string v1, "UserPresence"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->UserPresence:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$11;

    const-string v1, "UserContentSeenByAdmin"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->UserContentSeenByAdmin:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$12;

    const-string v1, "Subscribe"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->Subscribe:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$13;

    const-string v1, "Unsubscribe"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->Unsubscribe:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$14;

    const-string v1, "ThreadAssigned"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadAssigned:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$15;

    const-string v1, "ThreadClosed"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadClosed:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$16;

    const-string v1, "ThreadReopened"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadReopened:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$17;

    const-string v1, "ThreadUpdated"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadUpdated:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$18;

    const-string v1, "ThreadCreated"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadCreated:Lio/intercom/android/sdk/nexus/NexusEventType;

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusEventType$19;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/nexus/NexusEventType$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->UNKNOWN:Lio/intercom/android/sdk/nexus/NexusEventType;

    const/16 v0, 0x13

    new-array v0, v0, [Lio/intercom/android/sdk/nexus/NexusEventType;

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusEventType;->NewComment:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationSeen:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusEventType;->UserIsTyping:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusEventType;->AdminIsTyping:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v1, v0, v6

    sget-object v1, Lio/intercom/android/sdk/nexus/NexusEventType;->AdminIsTypingANote:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->NewNote:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationAssigned:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationClosed:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ConversationReopened:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->UserPresence:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->UserContentSeenByAdmin:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->Subscribe:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->Unsubscribe:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadAssigned:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadClosed:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadReopened:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadUpdated:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->ThreadCreated:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lio/intercom/android/sdk/nexus/NexusEventType;->UNKNOWN:Lio/intercom/android/sdk/nexus/NexusEventType;

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->$VALUES:[Lio/intercom/android/sdk/nexus/NexusEventType;

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

.method synthetic constructor <init>(Ljava/lang/String;ILio/intercom/android/sdk/nexus/NexusEventType$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/intercom/android/sdk/nexus/NexusEventType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static safeValueOf(Ljava/lang/String;)Lio/intercom/android/sdk/nexus/NexusEventType;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lio/intercom/android/sdk/nexus/NexusEventType;->valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/nexus/NexusEventType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->UNKNOWN:Lio/intercom/android/sdk/nexus/NexusEventType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/nexus/NexusEventType;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/nexus/NexusEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/nexus/NexusEventType;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/nexus/NexusEventType;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/nexus/NexusEventType;->$VALUES:[Lio/intercom/android/sdk/nexus/NexusEventType;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/nexus/NexusEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/nexus/NexusEventType;

    return-object v0
.end method


# virtual methods
.method protected toJsonObject(Lio/intercom/android/sdk/nexus/NexusEvent;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "conversationId"

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getEventData()Lio/intercom/android/sdk/nexus/EventData;

    move-result-object v3

    const-string v4, "conversationId"

    invoke-virtual {v3, v4}, Lio/intercom/android/sdk/nexus/EventData;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventGuid"

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventName"

    invoke-virtual {p0}, Lio/intercom/android/sdk/nexus/NexusEventType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "eventData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lio/intercom/android/sdk/nexus/NexusEvent;->getTopics()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "nx.Topics"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method protected toStringEncodedJsonObject(Lio/intercom/android/sdk/nexus/NexusEvent;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/nexus/NexusEventType;->toJsonObject(Lio/intercom/android/sdk/nexus/NexusEvent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
