.class final Lcom/layer/sdk/internal/lsdkh/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkh/a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/layer/sdk/internal/a;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private bpD:I

.field final bsh:Lcom/layer/sdk/internal/lsdkh/a$a;

.field final bsi:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/layer/sdk/query/Queryable;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/a;Ljava/util/concurrent/atomic/AtomicReference;Lcom/layer/sdk/internal/lsdkh/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/a;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;>;",
            "Lcom/layer/sdk/internal/lsdkh/a$a;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->d:I

    iput v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->bpD:I

    iput v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->f:I

    iput v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->g:I

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x31

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->bsi:Landroid/util/LruCache;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkh/a;->a:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkh/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkh/a;->bsh:Lcom/layer/sdk/internal/lsdkh/a$a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->f:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->g:I

    if-ge p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/layer/sdk/internal/lsdkh/a;->d:I

    iget v1, p0, Lcom/layer/sdk/internal/lsdkh/a;->bpD:I

    add-int/lit8 v2, p1, -0x18

    iput v2, p0, Lcom/layer/sdk/internal/lsdkh/a;->d:I

    add-int/lit8 v2, p1, 0x18

    iput v2, p0, Lcom/layer/sdk/internal/lsdkh/a;->bpD:I

    add-int/lit8 v2, p1, -0xc

    iput v2, p0, Lcom/layer/sdk/internal/lsdkh/a;->f:I

    add-int/lit8 v2, p1, 0xc

    iput v2, p0, Lcom/layer/sdk/internal/lsdkh/a;->g:I

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkh/a;->a:Lcom/layer/sdk/internal/a;

    new-instance v3, Lcom/layer/sdk/internal/lsdkh/a$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/layer/sdk/internal/lsdkh/a$1;-><init>(Lcom/layer/sdk/internal/lsdkh/a;III)V

    invoke-virtual {v2, v3}, Lcom/layer/sdk/internal/a;->d(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
