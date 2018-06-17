.class public abstract Lio/intercom/android/sdk/models/ConversationList;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/ConversationList$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;Ljava/util/Set;Z)Lio/intercom/android/sdk/models/ConversationList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lio/intercom/android/sdk/models/ConversationList;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/models/AutoValue_ConversationList;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/android/sdk/models/AutoValue_ConversationList;-><init>(Ljava/util/List;Ljava/util/Set;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract getConversations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnreadConversationIds()Ljava/util/Set;
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

.method public abstract hasMorePages()Z
.end method
