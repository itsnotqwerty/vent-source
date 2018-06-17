.class public Lcom/layer/sdk/internal/lsdkd/lsdka/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/layer/sdk/internal/lsdkd/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private b:Z

.field private c:Lcom/layer/sdk/internal/lsdkd/h;

.field private d:Landroid/net/Uri;

.field private e:Lcom/layer/sdk/internal/lsdkd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    return-object v0
.end method

.method protected a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b:Z

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    return-void
.end method

.method protected b()Lcom/layer/sdk/internal/lsdkd/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->c:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->d:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/f;->e:Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_0
.end method
