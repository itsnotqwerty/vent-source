.class public abstract Lio/intercom/android/sdk/models/TeamPresence;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/TeamPresence$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/intercom/android/sdk/models/TeamPresence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/android/sdk/models/TeamPresence;"
        }
    .end annotation

    new-instance v0, Lio/intercom/android/sdk/models/AutoValue_TeamPresence;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/android/sdk/models/AutoValue_TeamPresence;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getActiveAdmins()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/models/Participant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpectedResponseDelay()Ljava/lang/String;
.end method

.method public abstract getOfficeHours()Ljava/lang/String;
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/TeamPresence;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/android/sdk/models/TeamPresence;->getExpectedResponseDelay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
