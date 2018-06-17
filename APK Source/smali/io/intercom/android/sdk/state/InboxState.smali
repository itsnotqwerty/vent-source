.class public abstract Lio/intercom/android/sdk/state/InboxState;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/state/InboxState$Status;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)Lio/intercom/android/sdk/state/InboxState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Conversation;",
            ">;",
            "Lio/intercom/android/sdk/state/InboxState$Status;",
            "Z)",
            "Lio/intercom/android/sdk/state/InboxState;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/state/AutoValue_InboxState;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/android/sdk/state/AutoValue_InboxState;-><init>(Ljava/util/List;Lio/intercom/android/sdk/state/InboxState$Status;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract conversations()Ljava/util/List;
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

.method public abstract hasMorePages()Z
.end method

.method public abstract status()Lio/intercom/android/sdk/state/InboxState$Status;
.end method
