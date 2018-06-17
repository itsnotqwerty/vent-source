.class public final Lio/intercom/a/a/a/c/b/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/a/k$b;,
        Lio/intercom/a/a/a/c/b/a/k$a;
    }
.end annotation


# static fields
.field private static final cLt:Landroid/graphics/Bitmap$Config;


# instance fields
.field private cLA:I

.field private cLB:I

.field private cLC:I

.field private final cLu:Lio/intercom/a/a/a/c/b/a/l;

.field private final cLv:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final cLw:J

.field private final cLx:Lio/intercom/a/a/a/c/b/a/k$a;

.field private cLy:J

.field private cLz:I

.field private maxSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lio/intercom/a/a/a/c/b/a/k;->cLt:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 5

    const/16 v3, 0x13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    new-instance v0, Lio/intercom/a/a/a/c/b/a/n;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/n;-><init>()V

    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/intercom/a/a/a/c/b/a/k;-><init>(JLio/intercom/a/a/a/c/b/a/l;Ljava/util/Set;)V

    return-void

    :cond_2
    new-instance v0, Lio/intercom/a/a/a/c/b/a/c;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/c;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>(JLio/intercom/a/a/a/c/b/a/l;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/intercom/a/a/a/c/b/a/l;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLw:J

    iput-wide p1, p0, Lio/intercom/a/a/a/c/b/a/k;->maxSize:J

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    iput-object p4, p0, Lio/intercom/a/a/a/c/b/a/k;->cLv:Ljava/util/Set;

    new-instance v0, Lio/intercom/a/a/a/c/b/a/k$b;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/k$b;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLx:Lio/intercom/a/a/a/c/b/a/k$a;

    return-void
.end method

.method private IB()V
    .locals 4

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hits="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLA:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLC:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->maxSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized U(J)V
    .locals 7

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/a/l;->Ix()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LruBitmapPool"

    const-string v1, "Size mismatch, resetting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/a/k;->IB()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/l;->i(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLC:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Evicting bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v3, v0}, Lio/intercom/a/a/a/c/b/a/l;->h(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/a/k;->dump()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dump()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/a/k;->IB()V

    :cond_0
    return-void
.end method

.method private declared-synchronized f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create a mutable Bitmap with config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    if-eqz p3, :cond_4

    move-object v0, p3

    :goto_0
    invoke-interface {v1, p1, p2, v0}, Lio/intercom/a/a/a/c/b/a/l;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v3, p1, p2, p3}, Lio/intercom/a/a/a/c/b/a/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLA:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLA:I

    :cond_2
    :goto_1
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v3, p1, p2, p3}, Lio/intercom/a/a/a/c/b/a/l;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/a/k;->dump()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_2
    sget-object v0, Lio/intercom/a/a/a/c/b/a/k;->cLt:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_5
    iget v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLz:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLz:I

    iget-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/a/l;->i(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final Iw()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LruBitmapPool"

    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lio/intercom/a/a/a/c/b/a/k;->U(J)V

    return-void
.end method

.method public final e(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lio/intercom/a/a/a/c/b/a/k;->f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final fh(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trimMemory, level="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/a/k;->Iw()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x14

    if-lt p1, v0, :cond_1

    iget-wide v0, p0, Lio/intercom/a/a/a/c/b/a/k;->maxSize:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lio/intercom/a/a/a/c/b/a/k;->U(J)V

    goto :goto_0
.end method

.method public final declared-synchronized g(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot pool recycled bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/l;->i(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLv:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v2, p1}, Lio/intercom/a/a/a/c/b/a/l;->h(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLv:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/l;->i(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v1, p1}, Lio/intercom/a/a/a/c/b/a/l;->g(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLB:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/a/a/c/b/a/k;->cLB:I

    iget-wide v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/intercom/a/a/a/c/b/a/k;->cLy:J

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Put bitmap in pool="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/a/k;->cLu:Lio/intercom/a/a/a/c/b/a/l;

    invoke-interface {v2, p1}, Lio/intercom/a/a/a/c/b/a/l;->h(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/a/k;->dump()V

    iget-wide v0, p0, Lio/intercom/a/a/a/c/b/a/k;->maxSize:J

    invoke-direct {p0, v0, v1}, Lio/intercom/a/a/a/c/b/a/k;->U(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lio/intercom/a/a/a/c/b/a/k;->f(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
