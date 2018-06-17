.class public abstract Lcom/layer/sdk/LayerClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/LayerClient$DeauthenticationAction;,
        Lcom/layer/sdk/LayerClient$DeletionMode;,
        Lcom/layer/sdk/LayerClient$Options;,
        Lcom/layer/sdk/LayerClient$ContentAvailableCallback;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/LayerClient;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/LayerClient;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applicationCreated(Landroid/app/Application;)V
    .locals 0

    invoke-static {p0}, Lcom/layer/sdk/internal/a;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static getInfo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.23.26"

    return-object v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->a()Z

    move-result v0

    return v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/layer/sdk/LayerClient;
    .locals 1

    new-instance v0, Lcom/layer/sdk/LayerClient$Options;

    invoke-direct {v0}, Lcom/layer/sdk/LayerClient$Options;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/layer/sdk/LayerClient;->newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/LayerClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/LayerClient;
    .locals 4

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/LayerClient;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating new Layer client, layerAppId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null App ID provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkd/m;->a(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez p2, :cond_3

    new-instance v0, Lcom/layer/sdk/LayerClient$Options;

    invoke-direct {v0}, Lcom/layer/sdk/LayerClient$Options;-><init>()V

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/layer/sdk/internal/a;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/layer/sdk/LayerClient$Options;)Lcom/layer/sdk/LayerClient;

    move-result-object v0

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/LayerClient;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App ID has wrong format, expected form is: \'layer:///apps/[staging|production]/[UUID]\'. Provided: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {p2}, Lcom/layer/sdk/LayerClient$Options;->clone()Lcom/layer/sdk/LayerClient$Options;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendLogs(Lcom/layer/sdk/LayerClient;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Lcom/layer/sdk/LayerClient;Landroid/app/Activity;)V

    return-void
.end method

.method public static setLoggingEnabled(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setPrivateLoggingEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Z)V

    return-void
.end method

.method static synthetic wq()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/LayerClient;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public abstract addPolicy(Lcom/layer/sdk/policy/Policy;)Z
.end method

.method public abstract answerAuthenticationChallenge(Ljava/lang/String;)V
.end method

.method public abstract authenticate()Lcom/layer/sdk/LayerClient;
.end method

.method public abstract close()V
.end method

.method public abstract connect()Lcom/layer/sdk/LayerClient;
.end method

.method public abstract deauthenticate()Lcom/layer/sdk/LayerClient;
.end method

.method public abstract deauthenticate(Lcom/layer/sdk/LayerClient$DeauthenticationAction;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract disconnect()Lcom/layer/sdk/LayerClient;
.end method

.method public abstract executeQuery(Lcom/layer/sdk/query/Query;Lcom/layer/sdk/query/Query$ResultType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+",
            "Lcom/layer/sdk/query/Queryable;",
            ">;",
            "Lcom/layer/sdk/query/Query$ResultType;",
            ")",
            "Ljava/util/List;"
        }
    .end annotation
.end method

.method public abstract executeQueryForCount(Lcom/layer/sdk/query/Query;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+",
            "Lcom/layer/sdk/query/Queryable;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation
.end method

.method public abstract executeQueryForIds(Lcom/layer/sdk/query/Query;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+",
            "Lcom/layer/sdk/query/Queryable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract executeQueryForObjects(Lcom/layer/sdk/query/Query;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Query",
            "<+",
            "Lcom/layer/sdk/query/Queryable;",
            ">;)",
            "Ljava/util/List",
            "<+",
            "Lcom/layer/sdk/query/Queryable;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract follow([Lcom/layer/sdk/messaging/Identity;)V
.end method

.method public varargs abstract follow([Ljava/lang/String;)V
.end method

.method public abstract get(Landroid/net/Uri;)Lcom/layer/sdk/query/Queryable;
.end method

.method public abstract getAppId()Landroid/net/Uri;
.end method

.method public abstract getAuthenticatedUser()Lcom/layer/sdk/messaging/Identity;
.end method

.method public abstract getAutoDownloadMimeTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoDownloadSizeThreshold()J
.end method

.method public abstract getConversation(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Conversation;
.end method

.method public abstract getConversationIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConversations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Conversation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConversations(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Conversation;",
            ">;"
        }
    .end annotation
.end method

.method public varargs getConversations([Landroid/net/Uri;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Conversation;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/LayerClient;->getConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getConversationsWithParticipants(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Conversation;",
            ">;"
        }
    .end annotation
.end method

.method public varargs getConversationsWithParticipants([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Conversation;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/LayerClient;->getConversationsWithParticipants(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDiskCapacity()J
.end method

.method public abstract getDiskUtilization()J
.end method

.method public abstract getMessage(Landroid/net/Uri;)Lcom/layer/sdk/messaging/Message;
.end method

.method public abstract getMessageIds(Lcom/layer/sdk/messaging/Conversation;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessages(Lcom/layer/sdk/messaging/Conversation;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/Conversation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Message;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessages(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Message;",
            ">;"
        }
    .end annotation
.end method

.method public varargs getMessages([Landroid/net/Uri;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/Message;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/LayerClient;->getMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPolicies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/policy/Policy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPresenceStatus()Lcom/layer/sdk/messaging/Presence$PresenceStatus;
.end method

.method public abstract insertPolicy(Lcom/layer/sdk/policy/Policy;I)Z
.end method

.method public abstract isAuthenticated()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isConnecting()Z
.end method

.method public abstract newConversation(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/ConversationOptions;",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)",
            "Lcom/layer/sdk/messaging/Conversation;"
        }
    .end annotation
.end method

.method public varargs newConversation(Lcom/layer/sdk/messaging/ConversationOptions;[Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Conversation;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/layer/sdk/LayerClient;->newConversation(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public newConversation(Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/layer/sdk/messaging/Identity;",
            ">;)",
            "Lcom/layer/sdk/messaging/Conversation;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/messaging/ConversationOptions;

    invoke-direct {v0}, Lcom/layer/sdk/messaging/ConversationOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/layer/sdk/LayerClient;->newConversation(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public varargs newConversation([Lcom/layer/sdk/messaging/Identity;)Lcom/layer/sdk/messaging/Conversation;
    .locals 3

    new-instance v0, Lcom/layer/sdk/messaging/ConversationOptions;

    invoke-direct {v0}, Lcom/layer/sdk/messaging/ConversationOptions;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/LayerClient;->newConversation(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public abstract newConversationWithUserIds(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/ConversationOptions;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/messaging/Conversation;"
        }
    .end annotation
.end method

.method public varargs newConversationWithUserIds(Lcom/layer/sdk/messaging/ConversationOptions;[Ljava/lang/String;)Lcom/layer/sdk/messaging/Conversation;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/layer/sdk/LayerClient;->newConversationWithUserIds(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public newConversationWithUserIds(Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/messaging/Conversation;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/messaging/ConversationOptions;

    invoke-direct {v0}, Lcom/layer/sdk/messaging/ConversationOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/layer/sdk/LayerClient;->newConversationWithUserIds(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public varargs newConversationWithUserIds([Ljava/lang/String;)Lcom/layer/sdk/messaging/Conversation;
    .locals 3

    new-instance v0, Lcom/layer/sdk/messaging/ConversationOptions;

    invoke-direct {v0}, Lcom/layer/sdk/messaging/ConversationOptions;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/LayerClient;->newConversationWithUserIds(Lcom/layer/sdk/messaging/ConversationOptions;Ljava/util/Set;)Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public abstract newListViewController(Lcom/layer/sdk/query/Query;Ljava/util/Collection;Lcom/layer/sdk/query/ListViewController$Callback;)Lcom/layer/sdk/query/ListViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/layer/sdk/query/Queryable;",
            ">(",
            "Lcom/layer/sdk/query/Query",
            "<TT;>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/layer/sdk/query/ListViewController$Callback;",
            ")",
            "Lcom/layer/sdk/query/ListViewController",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract newMessage(Lcom/layer/sdk/messaging/MessageOptions;Ljava/util/List;)Lcom/layer/sdk/messaging/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/messaging/MessageOptions;",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/MessagePart;",
            ">;)",
            "Lcom/layer/sdk/messaging/Message;"
        }
    .end annotation
.end method

.method public varargs newMessage(Lcom/layer/sdk/messaging/MessageOptions;[Lcom/layer/sdk/messaging/MessagePart;)Lcom/layer/sdk/messaging/Message;
    .locals 1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/layer/sdk/LayerClient;->newMessage(Lcom/layer/sdk/messaging/MessageOptions;Ljava/util/List;)Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/util/List;)Lcom/layer/sdk/messaging/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/layer/sdk/messaging/MessagePart;",
            ">;)",
            "Lcom/layer/sdk/messaging/Message;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/messaging/MessageOptions;

    invoke-direct {v0}, Lcom/layer/sdk/messaging/MessageOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/layer/sdk/LayerClient;->newMessage(Lcom/layer/sdk/messaging/MessageOptions;Ljava/util/List;)Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    return-object v0
.end method

.method public varargs newMessage([Lcom/layer/sdk/messaging/MessagePart;)Lcom/layer/sdk/messaging/Message;
    .locals 2

    new-instance v0, Lcom/layer/sdk/messaging/MessageOptions;

    invoke-direct {v0}, Lcom/layer/sdk/messaging/MessageOptions;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/LayerClient;->newMessage(Lcom/layer/sdk/messaging/MessageOptions;Ljava/util/List;)Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    return-object v0
.end method

.method public newMessagePart(Ljava/lang/String;)Lcom/layer/sdk/messaging/MessagePart;
    .locals 4

    :try_start_0
    const-string v0, "text/plain"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/layer/sdk/LayerClient;->newMessagePart(Ljava/lang/String;[B)Lcom/layer/sdk/messaging/MessagePart;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No UTF-8 encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract newMessagePart(Ljava/lang/String;Ljava/io/InputStream;J)Lcom/layer/sdk/messaging/MessagePart;
.end method

.method public abstract newMessagePart(Ljava/lang/String;[B)Lcom/layer/sdk/messaging/MessagePart;
.end method

.method public abstract newRecyclerViewController(Lcom/layer/sdk/query/Query;Ljava/util/Collection;Lcom/layer/sdk/query/RecyclerViewController$Callback;)Lcom/layer/sdk/query/RecyclerViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/layer/sdk/query/Queryable;",
            ">(",
            "Lcom/layer/sdk/query/Query",
            "<TT;>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/layer/sdk/query/RecyclerViewController$Callback;",
            ")",
            "Lcom/layer/sdk/query/RecyclerViewController",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract registerAuthenticationListener(Lcom/layer/sdk/listeners/LayerAuthenticationListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract registerConnectionListener(Lcom/layer/sdk/listeners/LayerConnectionListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract registerEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract registerObjectExceptionListener(Lcom/layer/sdk/listeners/LayerObjectExceptionListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract registerPolicyListener(Lcom/layer/sdk/listeners/LayerPolicyListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract registerProgressListener(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract registerSyncListener(Lcom/layer/sdk/listeners/LayerSyncListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract registerTypingIndicator(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract removePolicy(Lcom/layer/sdk/policy/Policy;)Z
.end method

.method public abstract setAutoDownloadMimeTypes(Ljava/util/Collection;)Lcom/layer/sdk/LayerClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layer/sdk/LayerClient;"
        }
    .end annotation
.end method

.method public abstract setAutoDownloadSizeThreshold(J)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract setDiskCapacity(J)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract setPresenceStatus(Lcom/layer/sdk/messaging/Presence$PresenceStatus;)V
.end method

.method public varargs abstract unFollow([Lcom/layer/sdk/messaging/Identity;)V
.end method

.method public abstract unregisterAuthenticationListener(Lcom/layer/sdk/listeners/LayerAuthenticationListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract unregisterConnectionListener(Lcom/layer/sdk/listeners/LayerConnectionListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract unregisterEventListener(Lcom/layer/sdk/listeners/LayerChangeEventListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract unregisterObjectExceptionListener(Lcom/layer/sdk/listeners/LayerObjectExceptionListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract unregisterPolicyListener(Lcom/layer/sdk/listeners/LayerPolicyListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract unregisterProgressListener(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract unregisterSyncListener(Lcom/layer/sdk/listeners/LayerSyncListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract unregisterTypingIndicator(Lcom/layer/sdk/listeners/LayerTypingIndicatorListener;)Lcom/layer/sdk/LayerClient;
.end method

.method public abstract validatePolicy(Lcom/layer/sdk/policy/Policy;)Z
.end method

.method public abstract waitForContent(Landroid/net/Uri;JLcom/layer/sdk/LayerClient$ContentAvailableCallback;)V
.end method

.method public abstract waitForContent(Landroid/net/Uri;Lcom/layer/sdk/LayerClient$ContentAvailableCallback;)V
.end method
