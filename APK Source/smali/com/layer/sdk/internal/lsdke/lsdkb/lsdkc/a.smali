.class public Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/a;
.super Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find schema path: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdkc/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdke/lsdkb/lsdka/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
