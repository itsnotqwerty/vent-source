.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketReplicationConfigurationHandler"
.end annotation


# instance fields
.field private asC:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

.field private final atn:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

.field private ato:Ljava/lang/String;

.field private atp:Lcom/amazonaws/services/s3/model/ReplicationRule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atn:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ReplicationConfiguration"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Rule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/ReplicationRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ReplicationRule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atp:Lcom/amazonaws/services/s3/model/ReplicationRule;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ReplicationConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Destination"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->asC:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    goto :goto_0
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ReplicationConfiguration"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Rule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atn:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->ato:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atp:Lcom/amazonaws/services/s3/model/ReplicationRule;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rule id cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Replication rule cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->aqI:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atp:Lcom/amazonaws/services/s3/model/ReplicationRule;

    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->ato:Ljava/lang/String;

    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->asC:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "Role"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atn:Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketReplicationConfiguration;->aqH:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ReplicationConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->ato:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atp:Lcom/amazonaws/services/s3/model/ReplicationRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prefix cannot be null for a replication rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ReplicationRule;->aqv:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atp:Lcom/amazonaws/services/s3/model/ReplicationRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ReplicationRule;->aqr:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v0, "Destination"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->atp:Lcom/amazonaws/services/s3/model/ReplicationRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->asC:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination cannot be null in the replication rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ReplicationRule;->asC:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    goto :goto_0

    :cond_b
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ReplicationConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    const-string v1, "Destination"

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->asC:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bucket name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->asB:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketReplicationConfigurationHandler;->asC:Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/ReplicationDestinationConfig;->arR:Ljava/lang/String;

    goto/16 :goto_0
.end method
