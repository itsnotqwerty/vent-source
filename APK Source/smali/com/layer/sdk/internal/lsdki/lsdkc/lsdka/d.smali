.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;
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
.field private final c:Lcom/layer/b/d/k;

.field private final d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/layer/a/c/a;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->c:Lcom/layer/b/d/k;

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

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

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->a(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GetIdentityUpdatesTask: Run"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    sget-object v2, Lcom/layer/sdk/internal/lsdke/f;->a:Lcom/layer/sdk/internal/lsdke/f;

    invoke-interface {v0, v2}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(Lcom/layer/sdk/internal/lsdke/f;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_0
    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GetIdentityUpdatesTask: Fetching identity updates"

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->c:Lcom/layer/b/d/k;

    new-instance v3, Lcom/layer/b/d/k$f;

    invoke-direct {v3, v0}, Lcom/layer/b/d/k$f;-><init>(Lcom/layer/b/d/k;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/layer/b/d/k$f;->a([Ljava/lang/Integer;)Lcom/layer/b/d/k$f;

    move-result-object v3

    new-instance v4, Lcom/layer/b/d/k$12;

    invoke-direct {v4, v0, v2}, Lcom/layer/b/d/k$12;-><init>(Lcom/layer/b/d/k;I)V

    invoke-virtual {v3, v4}, Lcom/layer/b/d/k$f;->a(Lcom/layer/b/d/k$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/f/a/g;

    invoke-static {}, Lcom/layer/sdk/internal/lsdkk/k;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "GetIdentityUpdatesTask: Fetched identity updates"

    invoke-static {v3}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget v3, v0, Lcom/layer/b/f/a/g;->a:I

    if-le v3, v2, :cond_3

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->d:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iget-object v4, v0, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-interface {v2, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->a(ILjava/util/List;)V

    :cond_3
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Completing getIdentityUpdatesTask. IdentityCount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    if-nez v4, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v7

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception when requesting identity updates. Current saved sequence: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    new-instance v1, Lcom/layer/a/c/e;

    invoke-virtual {v0}, Lcom/layer/b/d/m;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/d;->a(Lcom/layer/a/c/e;)V

    goto :goto_1

    :cond_6
    iget-object v0, v0, Lcom/layer/b/f/a/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
