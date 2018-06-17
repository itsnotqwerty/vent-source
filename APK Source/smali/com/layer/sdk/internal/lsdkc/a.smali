.class public Lcom/layer/sdk/internal/lsdkc/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;
.implements Lcom/layer/sdk/internal/lsdkd/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkc/a$c;,
        Lcom/layer/sdk/internal/lsdkc/a$a;,
        Lcom/layer/sdk/internal/lsdkc/a$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/internal/lsdkc/a$b;

.field private final c:Lcom/layer/b/d/k;

.field private final d:Lcom/layer/sdk/internal/lsdkc/d;

.field private final e:Lcom/layer/sdk/internal/lsdkc/a$a;

.field private final f:Ljava/io/File;

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/internal/lsdkc/lsdka/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/layer/a/a/b$a;

.field private final i:Lcom/layer/a/a/b$a;

.field private final j:Lcom/layer/sdk/internal/lsdkc/b;

.field private final k:Lcom/layer/sdk/internal/lsdka/c;

.field private final l:Lcom/layer/sdk/internal/lsdkd/h;

.field private final m:Lcom/layer/sdk/internal/lsdkc/f;

.field private final n:Ljava/lang/Object;

.field private volatile o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkc/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkc/f;Lcom/layer/sdk/internal/lsdkc/a$b;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkc/d;Ljava/io/File;Lcom/layer/sdk/internal/lsdkc/a$a;Lcom/layer/sdk/internal/lsdka/c;Lcom/layer/sdk/internal/lsdkd/h;Lcom/layer/sdk/internal/lsdkk/o;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/layer/a/a/b$a;

    invoke-direct {v0}, Lcom/layer/a/a/b$a;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->h:Lcom/layer/a/a/b$a;

    new-instance v0, Lcom/layer/a/a/b$a;

    invoke-direct {v0}, Lcom/layer/a/a/b$a;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->i:Lcom/layer/a/a/b$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->n:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkc/a;->m:Lcom/layer/sdk/internal/lsdkc/f;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkc/a;->c:Lcom/layer/b/d/k;

    iput-object p4, p0, Lcom/layer/sdk/internal/lsdkc/a;->d:Lcom/layer/sdk/internal/lsdkc/d;

    iput-object p5, p0, Lcom/layer/sdk/internal/lsdkc/a;->f:Ljava/io/File;

    iput-object p6, p0, Lcom/layer/sdk/internal/lsdkc/a;->e:Lcom/layer/sdk/internal/lsdkc/a$a;

    new-instance v0, Lcom/layer/sdk/internal/lsdkc/b;

    invoke-direct {v0, p9}, Lcom/layer/sdk/internal/lsdkc/b;-><init>(Lcom/layer/sdk/internal/lsdkk/o;)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    iput-object p7, p0, Lcom/layer/sdk/internal/lsdkc/a;->k:Lcom/layer/sdk/internal/lsdka/c;

    iput-object p8, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ChangeableContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/f$b;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    return-object v0
.end method

.method private a(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;
    .locals 4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New ContentTask queued: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->f()Lcom/layer/a/c/d;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->e:Lcom/layer/sdk/internal/lsdkc/a$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$a;->p()Lcom/layer/a/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p1

    :cond_1
    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Existing ContentTask already queued: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkc/a;)Lcom/layer/sdk/internal/lsdkd/h;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/io/File;ZLcom/layer/sdk/internal/lsdkd/k$a;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkc/a$2;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkc/a$2;-><init>(Lcom/layer/sdk/internal/lsdkc/a;)V

    invoke-static {v0, p1, p4, v1}, Lcom/layer/sdk/internal/lsdkd/l;->a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/l$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Failed to perform transactedCacheUpdate in delete"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/layer/sdk/internal/lsdkc/a;Landroid/net/Uri;Ljava/io/File;ZLcom/layer/sdk/internal/lsdkd/k$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/layer/sdk/internal/lsdkc/a;->a(Landroid/net/Uri;Ljava/io/File;ZLcom/layer/sdk/internal/lsdkd/k$a;)V

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V
    .locals 5

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Not setting message part\'s transfer status due to null context or cache"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    new-instance v4, Lcom/layer/sdk/internal/lsdkc/a$4;

    invoke-direct {v4, p0, p2, v0}, Lcom/layer/sdk/internal/lsdkc/a$4;-><init>(Lcom/layer/sdk/internal/lsdkc/a;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;Ljava/util/Date;)V

    invoke-static {v1, v2, v3, v4}, Lcom/layer/sdk/internal/lsdkd/l;->a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/l$a;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Failed to perform transactedCacheUpdate in setTransferStatus"

    invoke-static {v1, v2}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->b(Ljava/util/Date;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->d(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/layer/sdk/internal/lsdkc/a;)Lcom/layer/sdk/internal/lsdkc/f;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->m:Lcom/layer/sdk/internal/lsdkc/f;

    return-object v0
.end method

.method private b(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;
    .locals 2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkc/a;->a(Landroid/net/Uri;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/layer/sdk/internal/lsdkc/a;)Lcom/layer/sdk/internal/lsdkc/a$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    return-object v0
.end method

.method private static c(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;
    .locals 3

    instance-of v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->DOWNLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/layer/sdk/internal/lsdkc/lsdka/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->UPLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown task: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->getMessageParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/messaging/MessagePart;

    if-ne v0, p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic ws()Lcom/layer/sdk/internal/lsdkk/k$a;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Lcom/layer/sdk/internal/lsdkc/a$c;
    .locals 8

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessagePart has no ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x800

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->c(Z)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessagePart has no data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, v0

    int-to-long v2, v1

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given size doesn\'t match the actual size of the data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a([B)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a$c;->a:Lcom/layer/sdk/internal/lsdkc/a$c;

    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a$c;->b:Lcom/layer/sdk/internal/lsdkc/a$c;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->h()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessagePart has no data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->f:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkc/e;->a(Ljava/io/File;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/layer/sdk/internal/lsdkk/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Ljava/io/File;)Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a$c;->b:Lcom/layer/sdk/internal/lsdkc/a$c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->DEVICE_PERSISTENCE_FAILURE:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Given size doesn\'t match the actual size of the data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_4
    new-instance v2, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v4, Lcom/layer/sdk/exceptions/LayerException$Type;->DEVICE_PERSISTENCE_FAILURE:Lcom/layer/sdk/exceptions/LayerException$Type;

    const-string v5, "Cannot write to local storage"

    invoke-direct {v2, v4, v5, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v3, :cond_8

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v2, Lcom/layer/sdk/exceptions/LayerException$Type;->DEVICE_PERSISTENCE_FAILURE:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Closing ContentManager"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/f$b;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkc/b;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Lcom/layer/a/c/c;)V
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/internal/lsdkc/a$5;->b:[I

    invoke-virtual {v1}, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    invoke-virtual {v2, v0, v1}, Lcom/layer/sdk/internal/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->UPLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-direct {p0, v0, v2}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->DOWNLOADING:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-direct {p0, v0, v2}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/layer/a/c/c;JLjava/lang/Throwable;)V
    .locals 6

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MessagePart "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " retrying "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p4}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/layer/a/c/c;Lcom/layer/a/c/c$b;Ljava/lang/Throwable;)V
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkc/a;->b(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    sget-object v2, Lcom/layer/sdk/internal/lsdkc/a$5;->b:[I

    invoke-virtual {v1}, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    invoke-virtual {v2, v0, v1, p3}, Lcom/layer/sdk/internal/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-direct {p0, v0, v2}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-direct {p0, v0, v2}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/layer/sdk/internal/lsdkc/lsdka/a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;JJ)V
    .locals 9

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    move-result-object v3

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/layer/sdk/internal/lsdkc/b;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;JJ)V

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/c;)V
    .locals 4

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/changes/LayerChange;

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getObjectType()Lcom/layer/sdk/messaging/LayerObject$Type;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/messaging/LayerObject$Type;->MESSAGE_PART:Lcom/layer/sdk/messaging/LayerObject$Type;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getChangeType()Lcom/layer/sdk/changes/LayerChange$Type;

    move-result-object v2

    sget-object v3, Lcom/layer/sdk/changes/LayerChange$Type;->DELETE:Lcom/layer/sdk/changes/LayerChange$Type;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/changes/LayerChange;->getObject()Lcom/layer/sdk/messaging/LayerObject;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    sget-object v3, Lcom/layer/sdk/internal/lsdkd/k$a;->e:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {p0, v0, v2, v3}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;ZLcom/layer/sdk/internal/lsdkd/k$a;)Z

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/layer/sdk/internal/lsdkc/b;->a(Landroid/net/Uri;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/layer/sdk/internal/lsdkc/b;->a(Landroid/net/Uri;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    goto :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener;)Z
    .locals 6

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No message part ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkc/a;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already managing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No message part in persistence for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v0

    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    if-eq v0, v2, :cond_8

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot upload MessagePart when it is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    :cond_9
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    new-instance v2, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkc/a;->c:Lcom/layer/b/d/k;

    iget-object v5, p0, Lcom/layer/sdk/internal/lsdkc/a;->d:Lcom/layer/sdk/internal/lsdkc/d;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;-><init>(Lcom/layer/sdk/internal/lsdkd/h;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkc/d;Ljava/util/UUID;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdkc/lsdka/c;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/a;->h:Lcom/layer/a/a/b$a;

    invoke-virtual {v3}, Lcom/layer/a/a/b$a;->wo()Lcom/layer/a/a/b;

    move-result-object v3

    invoke-direct {v0, v3, p0, v2, p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/c;-><init>(Lcom/layer/a/a/a;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Lcom/layer/sdk/internal/lsdkc/lsdka/c$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    move-result-object v2

    if-ne v2, v0, :cond_a

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;ZLcom/layer/sdk/internal/lsdkd/k$a;)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->e:Lcom/layer/sdk/internal/lsdkc/a$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$a;->q()Lcom/layer/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkc/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/layer/sdk/internal/lsdkc/a$1;-><init>(Lcom/layer/sdk/internal/lsdkc/a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;ZLcom/layer/sdk/internal/lsdkd/k$a;)V

    invoke-virtual {v0, v1}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Lcom/layer/sdk/internal/lsdkc/a$c;
    .locals 6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessagePart has no ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->g()[B

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a$c;->a:Lcom/layer/sdk/internal/lsdkc/a$c;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x800

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->q()Lcom/layer/sdk/internal/lsdkd/h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layer/sdk/messaging/Conversation;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MessagePart has no inline content but has size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " less than 2048 (Conversation ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Message ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->m()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->m()Landroid/net/Uri;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    :goto_3
    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a$c;->b:Lcom/layer/sdk/internal/lsdkc/a$c;

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot find conversation ID for new message part: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "N/A"

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->a(Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a$c;->b:Lcom/layer/sdk/internal/lsdkc/a$c;

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$b;->c()V

    return-void
.end method

.method public b(Lcom/layer/a/c/c;)V
    .locals 3

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/a;->a()Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->COMPLETE:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    invoke-direct {p0, v0, v1}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)V

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkc/a;->b(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkc/a;->d()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/layer/sdk/internal/lsdkc/b;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener$Operation;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->k:Lcom/layer/sdk/internal/lsdka/c;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    move-result-object v1

    sget-object v2, Lcom/layer/sdk/listeners/LayerProgressListener$Operation;->UPLOAD:Lcom/layer/sdk/listeners/LayerProgressListener$Operation;

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->k:Lcom/layer/sdk/internal/lsdka/c;

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdka/c;->a(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/layer/sdk/internal/lsdkc/b;->b(Landroid/net/Uri;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->j:Lcom/layer/sdk/internal/lsdkc/b;

    invoke-virtual {p1}, Lcom/layer/sdk/messaging/MessagePart;->getId()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/layer/sdk/internal/lsdkc/b;->b(Landroid/net/Uri;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    goto :goto_0
.end method

.method public b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener;)Z
    .locals 9

    const/4 v2, 0x2

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/messaging/MessagePart;Lcom/layer/sdk/listeners/LayerProgressListener;)V

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No message part ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkc/a;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already managing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    move v0, v8

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->r()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessagePart is deleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    move v0, v8

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v1}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No message part in persistence for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    move v0, v8

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v0

    sget-object v1, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    if-eq v0, v1, :cond_b

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot download MessagePart when it is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    move v0, v8

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No stream ID for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    move v0, v8

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/i;->p()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_f

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No message seq for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_e
    move v0, v8

    goto/16 :goto_0

    :cond_f
    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkc/a;->d(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_11

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/layer/sdk/internal/lsdkc/a;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No message part index for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    move v0, v8

    goto/16 :goto_0

    :cond_11
    new-instance v0, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a;->f:Ljava/io/File;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/a;->c:Lcom/layer/b/d/k;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkc/a;->d:Lcom/layer/sdk/internal/lsdkc/d;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;-><init>(Lcom/layer/sdk/internal/lsdkd/h;Ljava/io/File;Lcom/layer/b/d/k;Lcom/layer/sdk/internal/lsdkc/d;Ljava/util/UUID;II)V

    new-instance v1, Lcom/layer/sdk/internal/lsdkc/lsdka/b;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a;->i:Lcom/layer/a/a/b$a;

    invoke-virtual {v2}, Lcom/layer/a/a/b$a;->wo()Lcom/layer/a/a/b;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0, p1}, Lcom/layer/sdk/internal/lsdkc/lsdka/b;-><init>(Lcom/layer/a/a/a;Lcom/layer/sdk/internal/lsdkc/lsdka/a$a;Lcom/layer/sdk/internal/lsdkc/lsdka/b$a;Lcom/layer/sdk/internal/lsdkd/lsdka/j;)V

    invoke-direct {p0, v1}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkc/lsdka/a;)Lcom/layer/sdk/internal/lsdkc/lsdka/a;

    move-result-object v0

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_12
    move v0, v8

    goto/16 :goto_0
.end method

.method public c()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->b:Lcom/layer/sdk/internal/lsdkc/a$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    sget-object v2, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/layer/sdk/internal/lsdkc/a$b;->a([Lcom/layer/sdk/messaging/MessagePart$TransferStatus;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkc/a;->l:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v2}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getId()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/j;

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkc/a;->c(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/layer/sdk/internal/lsdkc/a$5;->bqe:[I

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0, v5}, Lcom/layer/sdk/internal/lsdkc/a;->a(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0, v5}, Lcom/layer/sdk/internal/lsdkc/a;->b(Lcom/layer/sdk/internal/lsdkd/lsdka/j;Lcom/layer/sdk/listeners/LayerProgressListener;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Lcom/layer/sdk/internal/lsdkd/lsdka/j;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getTransferStatus()Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    move-result-object v0

    sget-object v3, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->AWAITING_UPLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/layer/sdk/messaging/MessagePart$TransferStatus;->READY_FOR_DOWNLOAD:Lcom/layer/sdk/messaging/MessagePart$TransferStatus;

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMessage()Lcom/layer/sdk/messaging/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/layer/sdk/messaging/Message;->getConversation()Lcom/layer/sdk/messaging/Conversation;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/c;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/c;->j()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->m:Lcom/layer/sdk/internal/lsdkc/f;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/f;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/a;->m:Lcom/layer/sdk/internal/lsdkc/f;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdkc/f;->b()J

    move-result-wide v4

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkc/a;->m:Lcom/layer/sdk/internal/lsdkc/f;

    invoke-interface {v3}, Lcom/layer/sdk/internal/lsdkc/f;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_6

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-lez v3, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/j;->getSize()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gtz v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkc/a;->e:Lcom/layer/sdk/internal/lsdkc/a$a;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkc/a$a;->q()Lcom/layer/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/layer/sdk/internal/lsdkc/a$3;

    invoke-direct {v1, p0}, Lcom/layer/sdk/internal/lsdkc/a$3;-><init>(Lcom/layer/sdk/internal/lsdkc/a;)V

    invoke-virtual {v0, v1}, Lcom/layer/a/b/a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
