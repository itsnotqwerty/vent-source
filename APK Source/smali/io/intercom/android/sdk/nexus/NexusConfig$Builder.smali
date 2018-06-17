.class public Lio/intercom/android/sdk/nexus/NexusConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/nexus/NexusConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field connection_timeout:I

.field endpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field presence_heartbeat_interval:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/intercom/android/sdk/nexus/NexusConfig;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/nexus/NexusConfig;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/nexus/NexusConfig;-><init>(Lio/intercom/android/sdk/nexus/NexusConfig$Builder;)V

    return-object v0
.end method

.method public withConnectionTimeout(I)Lio/intercom/android/sdk/nexus/NexusConfig$Builder;
    .locals 0

    iput p1, p0, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->connection_timeout:I

    return-object p0
.end method

.method public withEndpoints(Ljava/util/List;)Lio/intercom/android/sdk/nexus/NexusConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/intercom/android/sdk/nexus/NexusConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->endpoints:Ljava/util/List;

    return-object p0
.end method

.method public withPresenceHeartbeatInterval(I)Lio/intercom/android/sdk/nexus/NexusConfig$Builder;
    .locals 0

    iput p1, p0, Lio/intercom/android/sdk/nexus/NexusConfig$Builder;->presence_heartbeat_interval:I

    return-object p0
.end method
