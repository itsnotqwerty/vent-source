.class public Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;
.super Ljava/lang/Object;


# instance fields
.field public aqH:Ljava/lang/String;

.field public aqI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/ReplicationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->aqI:Ljava/util/Map;

    return-void
.end method
