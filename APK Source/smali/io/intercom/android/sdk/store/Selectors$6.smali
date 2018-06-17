.class final Lio/intercom/android/sdk/store/Selectors$6;
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
        "Lio/intercom/android/sdk/models/TeamPresence;",
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
.method public final transform(Lio/intercom/android/sdk/state/State;)Lio/intercom/android/sdk/models/TeamPresence;
    .locals 1

    invoke-virtual {p1}, Lio/intercom/android/sdk/state/State;->teamPresence()Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/intercom/android/sdk/state/State;

    invoke-virtual {p0, p1}, Lio/intercom/android/sdk/store/Selectors$6;->transform(Lio/intercom/android/sdk/state/State;)Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v0

    return-object v0
.end method
