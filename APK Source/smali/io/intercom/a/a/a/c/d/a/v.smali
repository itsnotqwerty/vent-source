.class public final Lio/intercom/a/a/a/c/d/a/v;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/a/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final cOn:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final cOo:Lio/intercom/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/i",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final cOp:Lio/intercom/a/a/a/c/d/a/v$a;


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private final cOq:Lio/intercom/a/a/a/c/d/a/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lio/intercom/a/a/a/c/d/a/v$1;

    invoke-direct {v2}, Lio/intercom/a/a/a/c/d/a/v$1;-><init>()V

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;Lio/intercom/a/a/a/c/i$a;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/v;->cOn:Lio/intercom/a/a/a/c/i;

    const-string v0, "io.intercom.com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    const/4 v1, 0x0

    new-instance v2, Lio/intercom/a/a/a/c/d/a/v$2;

    invoke-direct {v2}, Lio/intercom/a/a/a/c/d/a/v$2;-><init>()V

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/c/i;->a(Ljava/lang/String;Ljava/lang/Object;Lio/intercom/a/a/a/c/i$a;)Lio/intercom/a/a/a/c/i;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/c/d/a/v;->cOo:Lio/intercom/a/a/a/c/i;

    new-instance v0, Lio/intercom/a/a/a/c/d/a/v$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/d/a/v$a;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/d/a/v;->cOp:Lio/intercom/a/a/a/c/d/a/v$a;

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/e;)V
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/d/a/v;->cOp:Lio/intercom/a/a/a/c/d/a/v$a;

    invoke-direct {p0, p1, v0}, Lio/intercom/a/a/a/c/d/a/v;-><init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/d/a/v$a;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/d/a/v$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/v;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/a/v;->cOq:Lio/intercom/a/a/a/c/d/a/v$a;

    return-void
.end method

.method private a(Landroid/os/ParcelFileDescriptor;Lio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Lio/intercom/a/a/a/c/j;",
            ")",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, -0x1

    sget-object v0, Lio/intercom/a/a/a/c/d/a/v;->cOn:Lio/intercom/a/a/a/c/i;

    invoke-virtual {p2, v0}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lio/intercom/a/a/a/c/d/a/v;->cOo:Lio/intercom/a/a/a/c/i;

    invoke-virtual {p2, v0}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/v;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-static {v0, v1}, Lio/intercom/a/a/a/c/d/a/d;->a(Landroid/graphics/Bitmap;Lio/intercom/a/a/a/c/b/a/e;)Lio/intercom/a/a/a/c/d/a/d;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, p1, p4}, Lio/intercom/a/a/a/c/d/a/v;->a(Landroid/os/ParcelFileDescriptor;Lio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
