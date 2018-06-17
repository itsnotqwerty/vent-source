.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketWebsiteConfigurationHandler"
.end annotation


# instance fields
.field private final atv:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

.field private atw:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

.field private atx:Lcom/amazonaws/services/s3/model/RedirectRule;

.field private aty:Lcom/amazonaws/services/s3/model/RoutingRule;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;-><init>(B)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atv:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atw:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iput-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->aty:Lcom/amazonaws/services/s3/model/RoutingRule;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RedirectAllRequestsTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "RoutingRules"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "RoutingRule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/RoutingRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RoutingRule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->aty:Lcom/amazonaws/services/s3/model/RoutingRule;

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "RoutingRules"

    aput-object v1, v0, v3

    const-string v1, "RoutingRule"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Condition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atw:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    goto :goto_0

    :cond_3
    const-string v0, "Redirect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazonaws/services/s3/model/RedirectRule;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/RedirectRule;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    goto :goto_0
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RedirectAllRequestsTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atv:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->aqN:Lcom/amazonaws/services/s3/model/RedirectRule;

    iput-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "IndexDocument"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Suffix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atv:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->aqL:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "ErrorDocument"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atv:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->aqM:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "RoutingRules"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "RoutingRule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atv:Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->aqO:Ljava/util/List;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->aty:Lcom/amazonaws/services/s3/model/RoutingRule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->aty:Lcom/amazonaws/services/s3/model/RoutingRule;

    goto :goto_0

    :cond_4
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "RoutingRules"

    aput-object v1, v0, v3

    const-string v1, "RoutingRule"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Condition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->aty:Lcom/amazonaws/services/s3/model/RoutingRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atw:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RoutingRule;->asD:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    iput-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atw:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    goto/16 :goto_0

    :cond_5
    const-string v0, "Redirect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->aty:Lcom/amazonaws/services/s3/model/RoutingRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RoutingRule;->asE:Lcom/amazonaws/services/s3/model/RedirectRule;

    iput-object v5, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "RoutingRules"

    aput-object v1, v0, v3

    const-string v1, "RoutingRule"

    aput-object v1, v0, v4

    const-string v1, "Condition"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "KeyPrefixEquals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atw:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->asF:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "HttpErrorCodeReturnedEquals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atw:Lcom/amazonaws/services/s3/model/RoutingRuleCondition;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RoutingRuleCondition;->asG:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "RedirectAllRequestsTo"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WebsiteConfiguration"

    aput-object v1, v0, v2

    const-string v1, "RoutingRules"

    aput-object v1, v0, v3

    const-string v1, "RoutingRule"

    aput-object v1, v0, v4

    const-string v1, "Redirect"

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    const-string v0, "Protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RedirectRule;->protocol:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "HostName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RedirectRule;->asx:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "ReplaceKeyPrefixWith"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RedirectRule;->asy:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v0, "ReplaceKeyWith"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RedirectRule;->asz:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "HttpRedirectCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->atx:Lcom/amazonaws/services/s3/model/RedirectRule;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/RedirectRule;->asA:Ljava/lang/String;

    goto/16 :goto_0
.end method
