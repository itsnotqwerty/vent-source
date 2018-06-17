.class public abstract Lio/intercom/android/sdk/state/State;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ZLio/intercom/android/sdk/state/UiState;Lio/intercom/android/sdk/models/TeamPresence;Ljava/util/Set;Lio/intercom/android/sdk/state/InboxState;Lio/intercom/android/sdk/state/HostAppState;Lio/intercom/android/sdk/state/OverlayState;Lio/intercom/android/sdk/state/ActiveConversationState;)Lio/intercom/android/sdk/state/State;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/intercom/android/sdk/state/UiState;",
            "Lio/intercom/android/sdk/models/TeamPresence;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/intercom/android/sdk/state/InboxState;",
            "Lio/intercom/android/sdk/state/HostAppState;",
            "Lio/intercom/android/sdk/state/OverlayState;",
            "Lio/intercom/android/sdk/state/ActiveConversationState;",
            ")",
            "Lio/intercom/android/sdk/state/State;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/state/AutoValue_State;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/intercom/android/sdk/state/AutoValue_State;-><init>(ZLio/intercom/android/sdk/state/UiState;Lio/intercom/android/sdk/models/TeamPresence;Ljava/util/Set;Lio/intercom/android/sdk/state/InboxState;Lio/intercom/android/sdk/state/HostAppState;Lio/intercom/android/sdk/state/OverlayState;Lio/intercom/android/sdk/state/ActiveConversationState;)V

    return-object v0
.end method


# virtual methods
.method public abstract activeConversationState()Lio/intercom/android/sdk/state/ActiveConversationState;
.end method

.method public abstract hasConversations()Z
.end method

.method public abstract hostAppState()Lio/intercom/android/sdk/state/HostAppState;
.end method

.method public abstract inboxState()Lio/intercom/android/sdk/state/InboxState;
.end method

.method public abstract overlayState()Lio/intercom/android/sdk/state/OverlayState;
.end method

.method public abstract teamPresence()Lio/intercom/android/sdk/models/TeamPresence;
.end method

.method public abstract uiState()Lio/intercom/android/sdk/state/UiState;
.end method

.method public abstract unreadConversationIds()Ljava/util/Set;
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
