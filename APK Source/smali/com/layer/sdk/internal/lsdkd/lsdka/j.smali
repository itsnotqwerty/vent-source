.class public Lcom/layer/sdk/internal/lsdkd/lsdka/j;
.super Lcom/layer/sdk/messaging/MessagePart;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkd/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Ljava/lang/Object;

.field bre:Ljava/io/InputStream;

.field brf:[B

.field brg:Ljava/io/File;

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/layer/sdk/internal/lsdkd/h;

.field private e:Landroid/net/Uri;

.field private f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

.field private g:Z

.field private h:Ljava/util/Date;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Date;

.field private k:Ljava/lang/Long;

.field private l:Ljava/lang/Long;

.field private final m:Lcom/layer/sdk/internal/lsdkd/lsdka/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layer/sdk/internal/lsdkd/lsdka/f",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/i;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/layer/sdk/messaging/MessagePart;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->e:Landroid/net/Uri;

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g:Z

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->e:Landroid/net/Uri;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o:J

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;-><init>(Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/io/InputStream;)[B
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v0}, Lcom/layer/b/e/b;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->NOT_AUTHENTICATED:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-direct {v0, v1, p1}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/io/InputStream;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;Z)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->h:Ljava/util/Date;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    iput-boolean p5, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g:Z

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([B)Lcom/layer/sdk/internal/lsdkd/lsdka/j;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->e:Landroid/net/Uri;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j$3;->bqe:[I

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/changes/LayerChange$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->INSERT:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot UPDATE without an attribute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    invoke-virtual {v1, v2}, Lcom/layer/sdk/changes/LayerChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$3;->b:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    move-object v0, v1

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    goto :goto_0

    :pswitch_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :pswitch_5
    check-cast v1, Ljava/util/Date;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Ljava/util/Date;)V

    goto/16 :goto_0

    :pswitch_6
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    check-cast v1, Ljava/util/Date;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d(Ljava/util/Date;)V

    goto/16 :goto_0

    :pswitch_8
    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b([B)V

    goto/16 :goto_0

    :pswitch_9
    check-cast v1, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/io/File;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d:Lcom/layer/sdk/internal/lsdkd/h;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a(Lcom/layer/sdk/internal/lsdkd/h;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    sget-object v1, Lcom/layer/sdk/changes/LayerChange$Type;->UPDATE:Lcom/layer/sdk/changes/LayerChange$Type;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    return-void
.end method

.method public a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d(Z)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/Date;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set messagePart message to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a(Landroid/net/Uri;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 6

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/b;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->b()Lcom/layer/sdk/internal/lsdkd/e;

    move-result-object v3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getOldValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/b;->getNewValue()Ljava/lang/Object;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/layer/sdk/internal/lsdkd/b;-><init>(Lcom/layer/sdk/changes/LayerChange$Type;Lcom/layer/sdk/internal/lsdkd/d;Lcom/layer/sdk/internal/lsdkd/e;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Lcom/layer/sdk/internal/lsdkd/b;)V

    return-void
.end method

.method public b(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->b:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/io/File;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/io/File;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->h:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->l:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/Date;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->h:Ljava/util/Date;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b([B)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a([B)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->g:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/layer/sdk/internal/lsdkd/b;)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/util/Date;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->l()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/util/Date;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->d:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Z)[B
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    :try_start_3
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v3, "Content file not found."

    invoke-static {v2, v3, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public d(Ljava/util/Date;)V
    .locals 3

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkd/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/util/Date;)V

    sget-object v2, Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;->f:Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;

    invoke-virtual {p0, v2, v0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j$a;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Z)V
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteLocalContent()V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$2;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public download(Lcom/layer/sdk/listeners/LayerProgressListener;)V
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->n()Lcom/layer/sdk/internal/lsdkd/i;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkd/lsdka/j$1;

    invoke-direct {v1, p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j$1;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkd/i;->a(Lcom/layer/sdk/internal/lsdkk/f$a;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o:J

    iget-wide v4, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    if-nez v2, :cond_6

    :cond_8
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    if-nez v2, :cond_9

    :cond_b
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    if-nez v2, :cond_c

    :cond_e
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_0

    :cond_11
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    if-nez v2, :cond_10

    :cond_12
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n:Ljava/lang/String;

    if-nez v2, :cond_13

    :cond_15
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i:Ljava/lang/String;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public f()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    return-object v0
.end method

.method public g()[B
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getData()[B
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->MESSAGE_PART_IS_NEW:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Cannot get message part data for message parts constructed with streams before sending."

    invoke-direct {v0, v2, v3}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->isContentReady()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Content is not ready."

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Z)[B

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->MESSAGE_PART_IS_NEW:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v3, "Cannot get message part data for message parts constructed with streams before sending."

    invoke-direct {v0, v2, v3}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->h()Ljava/io/InputStream;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getId()Landroid/net/Uri;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->e:Landroid/net/Uri;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMessage()Lcom/layer/sdk/messaging/Message;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->m:Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/Message;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSize()J
    .locals 4

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o:J

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Ljava/io/InputStream;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const/4 v3, 0x6

    :try_start_3
    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    monitor-exit v2

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public i()Ljava/lang/Long;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isContentReady()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method public j()Ljava/lang/Long;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->l:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()Ljava/util/Date;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->h:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m()Landroid/net/Uri;
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->e:Landroid/net/Uri;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->getValue()I

    move-result v0

    return v0
.end method

.method public q()Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method

.method public r()Z
    .locals 2

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessagePartImpl{mDatabaseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMimeType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->o:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrlExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->j:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTransferStatus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {v1}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPruned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->bre:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInlineData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brf:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFileData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->brg:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
