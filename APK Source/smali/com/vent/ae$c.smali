.class public final Lcom/vent/ae$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field final cdB:I

.field final cdC:I

.field final cdD:Z

.field final cdE:Ljava/lang/String;

.field cdF:I

.field cdG:Landroid/graphics/Bitmap;

.field cdH:I

.field final cdI:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/vent/ae$a;",
            ">;"
        }
    .end annotation
.end field

.field volatile cdJ:Z

.field volatile cdK:Z

.field volatile cdL:Z

.field filename:Ljava/lang/String;

.field final imageUrl:Ljava/lang/String;

.field time:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/support/v4/g/b;-><init>(I)V

    iput-object v0, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    iput-object p1, p0, Lcom/vent/ae$c;->imageUrl:Ljava/lang/String;

    iput p2, p0, Lcom/vent/ae$c;->cdB:I

    iput p3, p0, Lcom/vent/ae$c;->cdC:I

    iput-boolean p4, p0, Lcom/vent/ae$c;->cdD:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/vent/ae$c;->cdF:I

    invoke-static {p1, p2, p3, p4}, Lcom/vent/ae$c;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vent/ae$c;->cdE:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 2

    const/16 v1, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final Dk()Z
    .locals 2

    iget-boolean v0, p0, Lcom/vent/ae$c;->cdJ:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Dl()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/vent/ae$c;->cdL:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vent/ae$c;->cdK:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/vent/ae$c;->cdJ:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vent/ae$c;->cdD:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vent/ae$c;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method final Dm()V
    .locals 3

    iget-object v1, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/support/v4/g/b;

    iget-object v2, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    invoke-direct {v0, v2}, Landroid/support/v4/g/b;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vent/ae$a;

    invoke-interface {v0}, Lcom/vent/ae$a;->Di()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method final a(Lcom/vent/ae$a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/ae$c;->cdK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "attaching to a canceled bmp"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/vent/ae$a;)V
    .locals 2

    iget-object v1, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vent/ae$c;->cdI:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vent/ae$c;->Dl()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/vent/ae;->cdj:I

    sget v1, Lcom/vent/ae;->cdk:I

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vent/ae$c;->destroy()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final destroy()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vent/ae$c;->cdK:Z

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/vent/ae$c;->cdH:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/vent/ae$c;->cdH:I

    iget-boolean v2, p0, Lcom/vent/ae$c;->cdL:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vent/ae$c;->cdL:Z

    iget-boolean v3, p0, Lcom/vent/ae$c;->cdJ:Z

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vent/ae$c;->cdG:Landroid/graphics/Bitmap;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    sget v0, Lcom/vent/ae;->cdj:I

    sub-int/2addr v0, v1

    sput v0, Lcom/vent/ae;->cdj:I

    if-nez v2, :cond_2

    sget-object v0, Lcom/vent/ae;->cde:Ljava/util/Map;

    iget-object v1, p0, Lcom/vent/ae$c;->cdE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
