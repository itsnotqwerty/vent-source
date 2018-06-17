.class public Lio/intercom/android/sdk/models/UpdateUserResponse;
.super Lio/intercom/android/sdk/models/UsersResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/UpdateUserResponse$Builder;
    }
.end annotation


# instance fields
.field private final teamPresence:Lio/intercom/android/sdk/models/TeamPresence;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/models/UpdateUserResponse$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lio/intercom/android/sdk/models/UsersResponse;-><init>(Lio/intercom/android/sdk/models/UsersResponse$Builder;)V

    iget-object v0, p1, Lio/intercom/android/sdk/models/UpdateUserResponse$Builder;->team_presence:Lio/intercom/android/sdk/models/TeamPresence$Builder;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/android/sdk/models/TeamPresence$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/models/TeamPresence$Builder;-><init>()V

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/TeamPresence$Builder;->build()Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/models/UpdateUserResponse;->teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/models/UpdateUserResponse$Builder;->team_presence:Lio/intercom/android/sdk/models/TeamPresence$Builder;

    invoke-virtual {v0}, Lio/intercom/android/sdk/models/TeamPresence$Builder;->build()Lio/intercom/android/sdk/models/TeamPresence;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getTeamPresence()Lio/intercom/android/sdk/models/TeamPresence;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/UpdateUserResponse;->teamPresence:Lio/intercom/android/sdk/models/TeamPresence;

    return-object v0
.end method
