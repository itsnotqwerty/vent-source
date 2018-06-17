.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessControlListHandler"
.end annotation


# instance fields
.field private final ast:Lcom/amazonaws/services/s3/model/AccessControlList;

.field private atc:Lcom/amazonaws/services/s3/model/Grantee;

.field private atd:Lcom/amazonaws/services/s3/model/Permission;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    new-instance v0, Lcom/amazonaws/services/s3/model/AccessControlList;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/AccessControlList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    iput-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atd:Lcom/amazonaws/services/s3/model/Permission;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "AccessControlPolicy"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    new-instance v1, Lcom/amazonaws/services/s3/model/Owner;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/Owner;-><init>()V

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/AccessControlList;->aqn:Lcom/amazonaws/services/s3/model/Owner;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccessControlPolicy"

    aput-object v1, v0, v2

    const-string v1, "AccessControlList"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Grant"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Grantee"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "xsi:type"

    invoke-static {v0, p2}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;->b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmazonCustomerByEmail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/EmailAddressGrantee;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    :cond_2
    const-string v1, "CanonicalUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/CanonicalGrantee;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    goto :goto_0

    :cond_3
    const-string v1, "Group"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final an(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "AccessControlPolicy"

    aput-object v1, v0, v2

    const-string v1, "Owner"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/AccessControlList;->aqn:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/Owner;->id:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/AccessControlList;->aqn:Lcom/amazonaws/services/s3/model/Owner;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/Owner;->arj:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "AccessControlPolicy"

    aput-object v1, v0, v2

    const-string v1, "AccessControlList"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Grant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->ast:Lcom/amazonaws/services/s3/model/AccessControlList;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    iget-object v2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atd:Lcom/amazonaws/services/s3/model/Permission;

    iget-object v0, v0, Lcom/amazonaws/services/s3/model/AccessControlList;->aqm:Ljava/util/HashSet;

    new-instance v3, Lcom/amazonaws/services/s3/model/Grant;

    invoke-direct {v3, v1, v2}, Lcom/amazonaws/services/s3/model/Grant;-><init>(Lcom/amazonaws/services/s3/model/Grantee;Lcom/amazonaws/services/s3/model/Permission;)V

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v6, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    iput-object v6, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atd:Lcom/amazonaws/services/s3/model/Permission;

    goto :goto_0

    :cond_3
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "AccessControlPolicy"

    aput-object v1, v0, v2

    const-string v1, "AccessControlList"

    aput-object v1, v0, v3

    const-string v1, "Grant"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/Permission;->ai(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atd:Lcom/amazonaws/services/s3/model/Permission;

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AccessControlPolicy"

    aput-object v1, v0, v2

    const-string v1, "AccessControlList"

    aput-object v1, v0, v3

    const-string v1, "Grant"

    aput-object v1, v0, v4

    const-string v1, "Grantee"

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->d([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/Grantee;->ag(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "EmailAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/Grantee;->ag(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/model/GroupGrantee;->ah(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/GroupGrantee;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    goto/16 :goto_0

    :cond_7
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$AccessControlListHandler;->atc:Lcom/amazonaws/services/s3/model/Grantee;

    check-cast v0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->asY:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->arj:Ljava/lang/String;

    goto/16 :goto_0
.end method
