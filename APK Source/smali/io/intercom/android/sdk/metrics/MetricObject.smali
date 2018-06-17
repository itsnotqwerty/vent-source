.class public Lio/intercom/android/sdk/metrics/MetricObject;
.super Ljava/lang/Object;


# static fields
.field static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ANDROID_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android_installer_package_name"

.field private static final KEY_ANDROID_IS_DEBUG_BUILD:Ljava/lang/String; = "android_is_debug_build"

.field static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field static final KEY_CONTEXT:Ljava/lang/String; = "context"

.field static final KEY_OBJECT:Ljava/lang/String; = "object"

.field static final KEY_OWNER:Ljava/lang/String; = "owner"

.field static final KEY_PLACE:Ljava/lang/String; = "place"

.field static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private final createdAt:J
    .annotation runtime Lio/intercom/a/b/a/a/c;
        value = "created_at"
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/intercom/android/sdk/commons/utilities/TimeProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    iput-object p1, p0, Lio/intercom/android/sdk/metrics/MetricObject;->name:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p9}, Lio/intercom/android/sdk/commons/utilities/TimeProvider;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->createdAt:J

    iput-object p3, p0, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "action"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "object"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "place"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "context"

    invoke-interface {v0, v1, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "owner"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "user_id"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "sdk_version"

    invoke-interface {v0, v1, p11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    const-string v1, "app_version"

    invoke-interface {v0, v1, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method addInstallerPackageName(Ljava/lang/String;)Lio/intercom/android/sdk/metrics/MetricObject;
    .locals 1

    const-string v0, "android_installer_package_name"

    invoke-virtual {p0, v0, p1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    return-object p0
.end method

.method addIsDebugBuild(Z)Lio/intercom/android/sdk/metrics/MetricObject;
    .locals 2

    const-string v0, "android_is_debug_build"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/intercom/android/sdk/metrics/MetricObject;->addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;

    return-object p0
.end method

.method addMetaData(Ljava/lang/String;Ljava/lang/Object;)Lio/intercom/android/sdk/metrics/MetricObject;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Lio/intercom/android/sdk/metrics/MetricObject;

    iget-wide v2, p0, Lio/intercom/android/sdk/metrics/MetricObject;->createdAt:J

    iget-wide v4, p1, Lio/intercom/android/sdk/metrics/MetricObject;->createdAt:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    iget-object v1, p1, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCreatedAt()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->createdAt:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lio/intercom/android/sdk/metrics/MetricObject;->createdAt:J

    iget-wide v4, p0, Lio/intercom/android/sdk/metrics/MetricObject;->createdAt:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MetricObject{metadata="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/android/sdk/metrics/MetricObject;->metadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/android/sdk/metrics/MetricObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lio/intercom/android/sdk/metrics/MetricObject;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
