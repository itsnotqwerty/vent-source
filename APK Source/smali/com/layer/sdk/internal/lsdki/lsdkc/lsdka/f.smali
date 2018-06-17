.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;
.super Lcom/layer/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layer/a/c/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/layer/b/d/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/k;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->d:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->a(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetPresenceTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->d:Lcom/layer/b/d/k;

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->c:Ljava/lang/String;

    sget-object v2, Lcom/layer/b/f/a/m;->bAm:Lcom/layer/b/f/a/m;

    invoke-virtual {v0, v1, v2}, Lcom/layer/b/d/k;->a(Ljava/lang/String;Lcom/layer/b/f/a/m;)V

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->d:Lcom/layer/b/d/k;

    new-instance v1, Lcom/layer/b/d/k$f;

    invoke-direct {v1, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v1

    new-instance v2, Lcom/layer/b/d/k$21;

    invoke-direct {v2, v0}, Lcom/layer/b/d/k$21;-><init>(Lcom/layer/b/d/k;)V

    invoke-virtual {v1, v2}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/layer/sdk/exceptions/LayerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    :goto_1
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v2, "Error in GetPresenceTask"

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v5, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/f;->a(Lcom/layer/a/c/e;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
