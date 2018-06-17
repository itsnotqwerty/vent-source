.class public final Lio/intercom/android/sdk/models/ConversationList$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/models/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field conversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation$Builder;",
            ">;"
        }
    .end annotation
.end field

.field more_pages_available:Z

.field unread_conversation_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/models/ConversationList;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lio/intercom/android/sdk/models/ConversationList$Builder;->conversations:Ljava/util/List;

    invoke-static {v0}, Lio/intercom/android/sdk/commons/utilities/CollectionUtils;->capacityFor(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/ConversationList$Builder;->conversations:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/android/sdk/models/ConversationList$Builder;->conversations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/models/Conversation$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/Conversation$Builder;->build()Lio/intercom/android/sdk/models/Conversation;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lio/intercom/android/sdk/models/ConversationList$Builder;->unread_conversation_ids:Ljava/util/List;

    invoke-static {v0}, Lio/intercom/android/sdk/commons/utilities/CollectionUtils;->capacityFor(Ljava/util/Collection;)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lio/intercom/android/sdk/models/ConversationList$Builder;->unread_conversation_ids:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/android/sdk/models/ConversationList$Builder;->unread_conversation_ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lio/intercom/android/sdk/models/ConversationList$Builder;->more_pages_available:Z

    invoke-static {v1, v2, v0}, Lio/intercom/android/sdk/models/ConversationList;->create(Ljava/util/List;Ljava/util/Set;Z)Lio/intercom/android/sdk/models/ConversationList;

    move-result-object v0

    return-object v0
.end method
