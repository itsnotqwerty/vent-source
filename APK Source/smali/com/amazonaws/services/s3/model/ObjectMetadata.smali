.class public Lcom/amazonaws/services/s3/model/ObjectMetadata;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;
.implements Lcom/amazonaws/services/s3/internal/ObjectRestoreResult;
.implements Ljava/lang/Cloneable;


# instance fields
.field public arn:Ljava/util/Date;

.field public aro:Ljava/lang/String;

.field public asb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public asc:Ljava/util/Date;

.field private asd:Ljava/lang/Boolean;

.field private ase:Ljava/util/Date;

.field public metadata:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asb:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asb:Ljava/util/Map;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asb:Ljava/util/Map;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    if-nez v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->arn:Ljava/util/Date;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->arn:Ljava/util/Date;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->aro:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->aro:Ljava/lang/String;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asc:Ljava/util/Date;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asc:Ljava/util/Date;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asd:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asd:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->ase:Ljava/util/Date;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->ase:Ljava/util/Date;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asb:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->aro:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ak(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->asd:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->jX()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->arn:Ljava/util/Date;

    return-void
.end method

.method public final f(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->ase:Ljava/util/Date;

    return-void
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final jU()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-MD5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final jV()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final jW()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "x-amz-server-side-encryption"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final jX()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object v0
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ObjectMetadata;->metadata:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
