.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketLifecycleConfigurationHandler"
.end annotation


# instance fields
.field private final ath:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

.field private ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

.field private atj:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

.field private atk:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ath:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Rule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Transition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atj:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    goto :goto_0

    :cond_2
    const-string v0, "NoncurrentVersionTransition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atk:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    goto :goto_0
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Rule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ath:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->aqs:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v6, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->id:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Prefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqv:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqr:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "Transition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atj:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqz:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iput-object v6, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atj:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    goto :goto_0

    :cond_5
    const-string v0, "NoncurrentVersionTransition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atk:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqA:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    iput-object v6, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atk:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    goto :goto_0

    :cond_6
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    const-string v1, "Expiration"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ab(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqy:Ljava/util/Date;

    goto/16 :goto_0

    :cond_7
    const-string v0, "Days"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqw:I

    goto/16 :goto_0

    :cond_8
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    const-string v1, "Transition"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atj:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/StorageClass;->am(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->aqu:Lcom/amazonaws/services/s3/model/StorageClass;

    goto/16 :goto_0

    :cond_9
    const-string v0, "Date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atj:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->ab(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->aqB:Ljava/util/Date;

    goto/16 :goto_0

    :cond_a
    const-string v0, "Days"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atj:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->aqt:I

    goto/16 :goto_0

    :cond_b
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    const-string v1, "NoncurrentVersionExpiration"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "NoncurrentDays"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->ati:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqx:I

    goto/16 :goto_0

    :cond_c
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "LifecycleConfiguration"

    aput-object v1, v0, v2

    const-string v1, "Rule"

    aput-object v1, v0, v3

    const-string v1, "NoncurrentVersionTransition"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StorageClass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atk:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/model/StorageClass;->am(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->aqu:Lcom/amazonaws/services/s3/model/StorageClass;

    goto/16 :goto_0

    :cond_d
    const-string v0, "NoncurrentDays"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketLifecycleConfigurationHandler;->atk:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;->aqt:I

    goto/16 :goto_0
.end method
