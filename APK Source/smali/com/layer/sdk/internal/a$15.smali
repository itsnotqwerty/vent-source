.class final Lcom/layer/sdk/internal/a$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->Q()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/layer/sdk/internal/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$15;->a:Lcom/layer/sdk/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Failed to fetch config"

    invoke-static {v0, v1, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final wp()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/a;->wr()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Config fetched successfully"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
