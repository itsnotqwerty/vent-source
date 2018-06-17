.class public final Lcom/layer/b/d/h;
.super Lcom/layer/b/f/c/m;


# instance fields
.field public bwE:Ljava/lang/Long;

.field public bwF:Ljava/lang/Integer;

.field public bwG:Ljava/lang/Integer;

.field public bwH:Ljava/lang/Integer;

.field public bwI:Ljava/lang/Integer;

.field public bwJ:Ljava/lang/Integer;

.field public bwK:Ljava/lang/Integer;

.field public bwL:Ljava/lang/Integer;

.field private bwM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layer/b/d/i;",
            ">;"
        }
    .end annotation
.end field

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/b/d/h;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/layer/b/f/c/m;-><init>()V

    iput-object v0, p0, Lcom/layer/b/d/h;->bwM:Ljava/util/Set;

    iput-object v0, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Lcom/layer/b/f/c/m;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/layer/b/f/c/m;-><init>(Lcom/layer/b/f/c/m;)V

    iput-object v0, p0, Lcom/layer/b/d/h;->bwM:Ljava/util/Set;

    iput-object v0, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/layer/b/f/c/m;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layer/b/d/h;->bwM:Ljava/util/Set;

    iget-object v0, p1, Lcom/layer/b/f/c/m;->bEP:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/c/p;

    iget-object v2, p0, Lcom/layer/b/d/h;->bwM:Ljava/util/Set;

    new-instance v3, Lcom/layer/b/d/i;

    invoke-direct {v3, v0}, Lcom/layer/b/d/i;-><init>(Lcom/layer/b/f/c/p;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/layer/b/f/c/m;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/b/d/h;-><init>(Lcom/layer/b/f/c/m;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/UUID;
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/d/h;->xG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/d/h;->yZ()[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/UUID;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/layer/b/f/c/m;->bEK:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/layer/b/e/d;->d(Ljava/util/UUID;)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/d/h;->xm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/d/h;->za()[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/layer/b/d/h;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/layer/b/f/c/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/layer/b/d/h;

    iget-object v2, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    iget-object v3, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/layer/b/f/c/m;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

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

    const-string v1, "Stream{mDatabaseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/b/d/h;->bwE:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinSyncedSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/h;->bwF:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxSyncedSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/h;->bwG:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBaseSyncSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/h;->bwH:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMarkedToFetchHistoricData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/h;->bwI:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/b/d/h;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBaseSyncMutationSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/h;->bwJ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinSyncedMutationSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/h;->bwK:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxSyncedMutationSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/h;->bwL:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/layer/b/f/c/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wV()Ljava/util/UUID;
    .locals 1

    invoke-virtual {p0}, Lcom/layer/b/d/h;->ys()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/b/d/h;->zd()[B

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/d;->s([B)Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
