.class public final Lio/intercom/a/a/a/c/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/h;


# instance fields
.field private bkc:I

.field private final cGh:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final cGk:Ljava/lang/Object;

.field private final cIX:Lio/intercom/a/a/a/c/h;

.field private final cIZ:Lio/intercom/a/a/a/c/j;

.field private final cJb:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final cJd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/intercom/a/a/a/c/h;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/c/h;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/m",
            "<*>;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/m;->cGk:Ljava/lang/Object;

    const-string v0, "Signature must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/h;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/m;->cIX:Lio/intercom/a/a/a/c/h;

    iput p3, p0, Lio/intercom/a/a/a/c/b/m;->width:I

    iput p4, p0, Lio/intercom/a/a/a/c/b/m;->height:I

    const-string v0, "Argument must not be null"

    invoke-static {p5, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/m;->cJd:Ljava/util/Map;

    const-string v0, "Resource class must not be null"

    invoke-static {p6, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/m;->cJb:Ljava/lang/Class;

    const-string v0, "Transcode class must not be null"

    invoke-static {p7, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/m;->cGh:Ljava/lang/Class;

    const-string v0, "Argument must not be null"

    invoke-static {p8, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/j;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/m;->cIZ:Lio/intercom/a/a/a/c/j;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/c/b/m;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/b/m;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cGk:Ljava/lang/Object;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/m;->cGk:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cIX:Lio/intercom/a/a/a/c/h;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/m;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v2}, Lio/intercom/a/a/a/c/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/c/b/m;->height:I

    iget v2, p1, Lio/intercom/a/a/a/c/b/m;->height:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/c/b/m;->width:I

    iget v2, p1, Lio/intercom/a/a/a/c/b/m;->width:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cJd:Ljava/util/Map;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/m;->cJd:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cJb:Ljava/lang/Class;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/m;->cJb:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cGh:Ljava/lang/Class;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/m;->cGh:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cIZ:Lio/intercom/a/a/a/c/j;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/m;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/c/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/m;->cGk:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/a/a/a/c/b/m;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/a/a/a/c/b/m;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cJd:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cJb:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cGh:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    :cond_0
    iget v0, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EngineKey{model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cGk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/a/a/a/c/b/m;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/a/a/a/c/b/m;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cJb:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cGh:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/intercom/a/a/a/c/b/m;->bkc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transformations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cJd:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/m;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
