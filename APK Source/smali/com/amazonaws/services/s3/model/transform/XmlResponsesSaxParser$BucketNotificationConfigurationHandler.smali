.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketNotificationConfigurationHandler"
.end annotation


# instance fields
.field private aqF:Ljava/lang/String;

.field private aqG:Ljava/lang/String;

.field private final atm:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->atm:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    return-void
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NotificationConfiguration"

    aput-object v1, v0, v2

    const-string v1, "TopicConfiguration"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqF:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqG:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "NotificationConfiguration"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TopicConfiguration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqF:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqG:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->atm:Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration;->aqE:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqF:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqG:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/services/s3/model/BucketNotificationConfiguration$TopicConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqF:Ljava/lang/String;

    iput-object v4, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->aqG:Ljava/lang/String;

    goto :goto_0
.end method
