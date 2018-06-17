.class public final Lio/intercom/a/a/a/c/d/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/e/a$b;,
        Lio/intercom/a/a/a/c/d/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Lio/intercom/a/a/a/c/d/e/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final cOt:Lio/intercom/a/a/a/c/d/e/a$a;

.field private static final cOu:Lio/intercom/a/a/a/c/d/e/a$b;


# instance fields
.field private final cID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field private final cOv:Lio/intercom/a/a/a/c/d/e/a$b;

.field private final cOw:Lio/intercom/a/a/a/c/d/e/a$a;

.field private final cOx:Lio/intercom/a/a/a/c/d/e/b;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/c/d/e/a$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/d/e/a$a;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/d/e/a;->cOt:Lio/intercom/a/a/a/c/d/e/a$a;

    new-instance v0, Lio/intercom/a/a/a/c/d/e/a$b;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/d/e/a$b;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/d/e/a;->cOu:Lio/intercom/a/a/a/c/d/e/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Lio/intercom/a/a/a/c/b/a/e;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            ")V"
        }
    .end annotation

    sget-object v5, Lio/intercom/a/a/a/c/d/e/a;->cOu:Lio/intercom/a/a/a/c/d/e/a$b;

    sget-object v6, Lio/intercom/a/a/a/c/d/e/a;->cOt:Lio/intercom/a/a/a/c/d/e/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lio/intercom/a/a/a/c/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/c/d/e/a$b;Lio/intercom/a/a/a/c/d/e/a$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/c/d/e/a$b;Lio/intercom/a/a/a/c/d/e/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/f;",
            ">;",
            "Lio/intercom/a/a/a/c/b/a/e;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            "Lio/intercom/a/a/a/c/d/e/a$b;",
            "Lio/intercom/a/a/a/c/d/e/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/a;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/e/a;->cID:Ljava/util/List;

    iput-object p6, p0, Lio/intercom/a/a/a/c/d/e/a;->cOw:Lio/intercom/a/a/a/c/d/e/a$a;

    new-instance v0, Lio/intercom/a/a/a/c/d/e/b;

    invoke-direct {v0, p3, p4}, Lio/intercom/a/a/a/c/d/e/b;-><init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/a;->cOx:Lio/intercom/a/a/a/c/d/e/b;

    iput-object p5, p0, Lio/intercom/a/a/a/c/d/e/a;->cOv:Lio/intercom/a/a/a/c/d/e/a$b;

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/d/e/e;
    .locals 10

    const/4 v0, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/a;->cOv:Lio/intercom/a/a/a/c/d/e/a$b;

    invoke-virtual {v1, p1}, Lio/intercom/a/a/a/c/d/e/a$b;->b(Ljava/nio/ByteBuffer;)Lio/intercom/a/a/a/b/d;

    move-result-object v7

    :try_start_0
    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v8

    iget-object v1, v7, Lio/intercom/a/a/a/b/d;->cHk:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/a;->cOv:Lio/intercom/a/a/a/c/d/e/a$b;

    invoke-virtual {v1, v7}, Lio/intercom/a/a/a/c/d/e/a$b;->a(Lio/intercom/a/a/a/b/d;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v7}, Lio/intercom/a/a/a/b/d;->HR()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Lio/intercom/a/a/a/b/d;->readHeader()V

    invoke-virtual {v7}, Lio/intercom/a/a/a/b/d;->HR()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Lio/intercom/a/a/a/b/d;->HN()V

    iget-object v1, v7, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget v1, v1, Lio/intercom/a/a/a/b/c;->cHb:I

    if-gez v1, :cond_1

    iget-object v1, v7, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    const/4 v2, 0x1

    iput v2, v1, Lio/intercom/a/a/a/b/c;->status:I

    :cond_1
    iget-object v4, v7, Lio/intercom/a/a/a/b/d;->cHl:Lio/intercom/a/a/a/b/c;

    iget v1, v4, Lio/intercom/a/a/a/b/c;->cHb:I

    if-lez v1, :cond_2

    iget v1, v4, Lio/intercom/a/a/a/b/c;->status:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/a;->cOv:Lio/intercom/a/a/a/c/d/e/a$b;

    invoke-virtual {v1, v7}, Lio/intercom/a/a/a/c/d/e/a$b;->a(Lio/intercom/a/a/a/b/d;)V

    return-object v0

    :cond_3
    :try_start_2
    sget-object v1, Lio/intercom/a/a/a/c/d/e/i;->cNP:Lio/intercom/a/a/a/c/i;

    invoke-virtual {p4, v1}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lio/intercom/a/a/a/c/b;->cHK:Lio/intercom/a/a/a/c/b;

    if-ne v1, v2, :cond_6

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v3, v1

    :goto_1
    iget v1, v4, Lio/intercom/a/a/a/b/c;->height:I

    div-int/2addr v1, p3

    iget v2, v4, Lio/intercom/a/a/a/b/c;->width:I

    div-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-string v2, "BufferGifDecoder"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-le v1, v6, :cond_4

    const-string v2, "BufferGifDecoder"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Downsampling GIF, sampleSize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target dimens: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], actual dimens: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lio/intercom/a/a/a/b/c;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lio/intercom/a/a/a/b/c;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lio/intercom/a/a/a/c/d/e/a;->cOx:Lio/intercom/a/a/a/c/d/e/b;

    new-instance v2, Lio/intercom/a/a/a/b/e;

    invoke-direct {v2, v5, v4, p1, v1}, Lio/intercom/a/a/a/b/e;-><init>(Lio/intercom/a/a/a/b/a$a;Lio/intercom/a/a/a/b/c;Ljava/nio/ByteBuffer;I)V

    invoke-interface {v2, v3}, Lio/intercom/a/a/a/b/a;->a(Landroid/graphics/Bitmap$Config;)V

    invoke-interface {v2}, Lio/intercom/a/a/a/b/a;->advance()V

    invoke-interface {v2}, Lio/intercom/a/a/a/b/a;->HM()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lio/intercom/a/a/a/c/d/b;->IU()Lio/intercom/a/a/a/c/d/b;

    move-result-object v3

    new-instance v0, Lio/intercom/a/a/a/c/d/e/c;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/a;->context:Landroid/content/Context;

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lio/intercom/a/a/a/c/d/e/c;-><init>(Landroid/content/Context;Lio/intercom/a/a/a/b/a;Lio/intercom/a/a/a/c/m;IILandroid/graphics/Bitmap;)V

    const-string v1, "BufferGifDecoder"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "BufferGifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Decoded GIF from stream in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Lio/intercom/a/a/a/c/d/e/e;

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/d/e/e;-><init>(Lio/intercom/a/a/a/c/d/e/c;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v3, v1

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/intercom/a/a/a/c/d/e/a;->a(Ljava/nio/ByteBuffer;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/d/e/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Lio/intercom/a/a/a/c/d/e/i;->cOT:Lio/intercom/a/a/a/c/i;

    invoke-virtual {p2, v0}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v3, p0, Lio/intercom/a/a/a/c/d/e/a;->cID:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/f;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/f;->a(Ljava/nio/ByteBuffer;)Lio/intercom/a/a/a/c/f$a;

    move-result-object v0

    sget-object v5, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;

    if-eq v0, v5, :cond_0

    :goto_1
    sget-object v2, Lio/intercom/a/a/a/c/f$a;->cHR:Lio/intercom/a/a/a/c/f$a;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lio/intercom/a/a/a/c/f$a;->cHY:Lio/intercom/a/a/a/c/f$a;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
