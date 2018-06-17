.class public Lcom/amazonaws/services/s3/model/CanonicalGrantee;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/services/s3/model/Grantee;


# instance fields
.field public arj:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->arj:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final jR()Ljava/lang/String;
    .locals 1

    const-string v0, "id"

    return-object v0
.end method

.method public final jS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/CanonicalGrantee;->id:Ljava/lang/String;

    return-object v0
.end method
