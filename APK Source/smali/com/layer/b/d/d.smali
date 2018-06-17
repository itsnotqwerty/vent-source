.class public final Lcom/layer/b/d/d;
.super Lcom/layer/b/f/a/c;


# instance fields
.field public bqW:Z

.field public bvT:Z

.field public o:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/b/d/d;-><init>(Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Lcom/layer/b/f/a/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/layer/b/f/a/c;-><init>(Lcom/layer/b/f/a/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/a/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/b/d/d;-><init>(Lcom/layer/b/f/a/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/b/f/a/c;-><init>()V

    iput-object p1, p0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/layer/b/d/d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/layer/b/f/a/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/layer/b/d/d;

    iget-object v2, p0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    iget-object v3, p1, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/layer/b/f/a/c;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Identity{mDatabaseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/b/d/d;->o:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFollowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/b/d/d;->bqW:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncableChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/b/d/d;->bvT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/layer/b/f/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
