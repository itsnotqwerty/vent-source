.class public Lcom/layer/sdk/internal/lsdkd/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/l$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/internal/lsdkd/f;

.field private final c:Lcom/layer/sdk/internal/lsdkd/d;

.field private final d:Lcom/layer/sdk/internal/lsdkd/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/l;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/l;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/l;->b:Lcom/layer/sdk/internal/lsdkd/f;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/l;->c:Lcom/layer/sdk/internal/lsdkd/d;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdkd/l;->d:Lcom/layer/sdk/internal/lsdkd/k$a;

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;Lcom/layer/sdk/internal/lsdkd/l$a;)Z
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/l;-><init>(Lcom/layer/sdk/internal/lsdkd/f;Landroid/net/Uri;Lcom/layer/sdk/internal/lsdkd/k$a;)V

    invoke-direct {v0, p3}, Lcom/layer/sdk/internal/lsdkd/l;->a(Lcom/layer/sdk/internal/lsdkd/l$a;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/layer/sdk/internal/lsdkd/l$a;)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/l;->b:Lcom/layer/sdk/internal/lsdkd/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to perform transactedUpdate due to no cache"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/l;->c:Lcom/layer/sdk/internal/lsdkd/d;

    invoke-interface {p1, v2, v0}, Lcom/layer/sdk/internal/lsdkd/l$a;->a(Lcom/layer/sdk/internal/lsdkd/d;Ljava/lang/Throwable;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/l;->c:Lcom/layer/sdk/internal/lsdkd/d;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to perform transactedUpdate due to no changeable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/l;->b:Lcom/layer/sdk/internal/lsdkd/f;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/l;->d:Lcom/layer/sdk/internal/lsdkd/k$a;

    invoke-virtual {v0, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k$a;)Lcom/layer/sdk/internal/lsdkd/k;

    move-result-object v2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/l;->c:Lcom/layer/sdk/internal/lsdkd/d;

    invoke-interface {p1, v0}, Lcom/layer/sdk/internal/lsdkd/l$a;->a(Lcom/layer/sdk/internal/lsdkd/d;)Z

    move-result v0

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/l;->b:Lcom/layer/sdk/internal/lsdkd/f;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/layer/sdk/internal/lsdkd/l;->c:Lcom/layer/sdk/internal/lsdkd/d;

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Lcom/layer/sdk/internal/lsdkd/f;->b(Lcom/layer/sdk/internal/lsdkd/k;[Lcom/layer/sdk/internal/lsdkd/d;)V

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/l;->b:Lcom/layer/sdk/internal/lsdkd/f;

    invoke-virtual {v3, v2, v0}, Lcom/layer/sdk/internal/lsdkd/f;->a(Lcom/layer/sdk/internal/lsdkd/k;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
