.class Lio/intercom/android/sdk/api/CallbackHolder;
.super Ljava/lang/Object;


# static fields
.field private static final TWIG:Lio/intercom/android/sdk/twig/Twig;


# instance fields
.field final bus:Lio/intercom/a/c/a/b;

.field final store:Lio/intercom/android/sdk/store/Store;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/intercom/android/sdk/logger/LumberMill;->getLogger()Lio/intercom/android/sdk/twig/Twig;

    move-result-object v0

    sput-object v0, Lio/intercom/android/sdk/api/CallbackHolder;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-void
.end method

.method constructor <init>(Lio/intercom/a/c/a/b;Lio/intercom/android/sdk/store/Store;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/c/a/b;",
            "Lio/intercom/android/sdk/store/Store",
            "<",
            "Lio/intercom/android/sdk/state/State;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/api/CallbackHolder;->bus:Lio/intercom/a/c/a/b;

    iput-object p2, p0, Lio/intercom/android/sdk/api/CallbackHolder;->store:Lio/intercom/android/sdk/store/Store;

    return-void
.end method

.method static synthetic access$000()Lio/intercom/android/sdk/twig/Twig;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/api/CallbackHolder;->TWIG:Lio/intercom/android/sdk/twig/Twig;

    return-object v0
.end method


# virtual methods
.method conversationCallback()Lio/intercom/retrofit2/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/Conversation$Builder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/api/CallbackHolder$4;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/api/CallbackHolder$4;-><init>(Lio/intercom/android/sdk/api/CallbackHolder;)V

    return-object v0
.end method

.method inboxCallback()Lio/intercom/retrofit2/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/ConversationsResponse$Builder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/api/CallbackHolder$2;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/api/CallbackHolder$2;-><init>(Lio/intercom/android/sdk/api/CallbackHolder;)V

    return-object v0
.end method

.method loggingCallback(Ljava/lang/String;)Lio/intercom/retrofit2/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/api/CallbackHolder$6;

    invoke-direct {v0, p0, p1}, Lio/intercom/android/sdk/api/CallbackHolder$6;-><init>(Lio/intercom/android/sdk/api/CallbackHolder;Ljava/lang/String;)V

    return-object v0
.end method

.method newConversationCallback(ILjava/lang/String;)Lio/intercom/retrofit2/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/Conversation$Builder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/api/CallbackHolder$5;

    invoke-direct {v0, p0, p2, p1}, Lio/intercom/android/sdk/api/CallbackHolder$5;-><init>(Lio/intercom/android/sdk/api/CallbackHolder;Ljava/lang/String;I)V

    return-object v0
.end method

.method replyCallback(IZLjava/lang/String;Ljava/lang/String;)Lio/intercom/retrofit2/Callback;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/retrofit2/Callback",
            "<",
            "Lio/intercom/android/sdk/models/Part$Builder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/api/CallbackHolder$3;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lio/intercom/android/sdk/api/CallbackHolder$3;-><init>(Lio/intercom/android/sdk/api/CallbackHolder;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method unreadCallback()Lio/intercom/android/sdk/api/BaseCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/android/sdk/api/BaseCallback",
            "<",
            "Lio/intercom/android/sdk/models/UsersResponse$Builder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/api/CallbackHolder$1;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/api/CallbackHolder$1;-><init>(Lio/intercom/android/sdk/api/CallbackHolder;)V

    return-object v0
.end method
