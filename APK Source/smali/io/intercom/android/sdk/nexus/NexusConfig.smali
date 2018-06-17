.class public Lio/intercom/android/sdk/nexus/NexusConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/nexus/NexusConfig$Builder;
    }
.end annotation


# instance fields
.field private final connectionTimeout:I

.field private final endpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final presenceHeartbeatInterval:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;

    invoke-direct {v0}, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;-><init>()V

    invoke-direct {p0, v0}, Lio/intercom/android/sdk/nexus/NexusConfig;-><init>(Lio/intercom/android/sdk/nexus/NexusConfig$Builder;)V

    return-void
.end method

.method public constructor <init>(Lio/intercom/android/sdk/nexus/NexusConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->endpoints:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->endpoints:Ljava/util/List;

    iget v0, p1, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->presence_heartbeat_interval:I

    iput v0, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->presenceHeartbeatInterval:I

    iget v0, p1, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->connection_timeout:I

    iput v0, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->connectionTimeout:I

    return-void

    :cond_0
    iget-object v0, p1, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->endpoints:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lio/intercom/android/sdk/nexus/NexusConfig;

    iget v2, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->connectionTimeout:I

    iget v3, p1, Lio/intercom/android/sdk/nexus/NexusConfig;->connectionTimeout:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->presenceHeartbeatInterval:I

    iget v3, p1, Lio/intercom/android/sdk/nexus/NexusConfig;->presenceHeartbeatInterval:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->endpoints:Ljava/util/List;

    iget-object v3, p1, Lio/intercom/android/sdk/nexus/NexusConfig;->endpoints:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->connectionTimeout:I

    return v0
.end method

.method public getEndpoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->endpoints:Ljava/util/List;

    return-object v0
.end method

.method public getPresenceHeartbeatInterval()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->presenceHeartbeatInterval:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->endpoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->presenceHeartbeatInterval:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/android/sdk/nexus/NexusConfig;->connectionTimeout:I

    add-int/2addr v0, v1

    return v0
.end method
