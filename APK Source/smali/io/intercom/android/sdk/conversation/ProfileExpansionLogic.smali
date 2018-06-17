.class Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasNoUserReplies(Lio/intercom/android/sdk/models/Conversation;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private static hasOnlyUserParts(Lio/intercom/android/sdk/models/Conversation;)Z
    .locals 2

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/Conversation;->getParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Part;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Part;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method shouldExpandProfile(Lio/intercom/android/sdk/models/Conversation;)Z
    .locals 1

    invoke-static {p1}, Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;->hasOnlyUserParts(Lio/intercom/android/sdk/models/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/intercom/android/sdk/conversation/ProfileExpansionLogic;->hasNoUserReplies(Lio/intercom/android/sdk/models/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
