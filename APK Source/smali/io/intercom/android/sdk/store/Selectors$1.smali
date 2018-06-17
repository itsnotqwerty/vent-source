.class final Lio/intercom/android/sdk/store/Selectors$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/store/Store$Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/store/Selectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/android/sdk/store/Store$Selector",
        "<",
        "Lio/intercom/android/sdk/state/State;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Lio/intercom/android/sdk/state/State;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->unreadConversationIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/intercom/android/sdk/state/State;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/store/Selectors$1;->transform(Lio/intercom/android/sdk/state/State;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
