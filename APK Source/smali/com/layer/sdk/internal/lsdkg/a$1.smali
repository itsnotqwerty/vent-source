.class final Lcom/layer/sdk/internal/lsdkg/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/a/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/lsdkg/a;->b(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdkj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic bsg:Lcom/layer/sdk/internal/lsdkg/a;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkg/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkg/a$1;->bsg:Lcom/layer/sdk/internal/lsdkg/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkg/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkg/a;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to register FCM registrationId with Layer Server: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final wp()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/layer/sdk/internal/lsdkg/a;->wu()Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    const-string v1, "Successfully registered FCM registrationId with Layer Server"

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkg/a$1;->bsg:Lcom/layer/sdk/internal/lsdkg/a;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkg/a;->a(Lcom/layer/sdk/internal/lsdkg/a;)Lcom/layer/sdk/internal/lsdkk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkg/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkk/g;->b(Ljava/lang/String;)V

    return-void
.end method
