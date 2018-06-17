.class final Lcom/layer/sdk/internal/a$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkh/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/sdk/internal/a;->T()Lcom/layer/sdk/internal/lsdkh/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/sdk/internal/a;

.field final synthetic bqa:Lcom/layer/sdk/internal/b;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/a;Lcom/layer/sdk/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/a$19;->b:Lcom/layer/sdk/internal/a;

    iput-object p2, p0, Lcom/layer/sdk/internal/a$19;->bqa:Lcom/layer/sdk/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/layer/sdk/internal/lsdke/g;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$19;->bqa:Lcom/layer/sdk/internal/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->k()Lcom/layer/sdk/internal/lsdke/g;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/layer/sdk/internal/lsdkd/f;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$19;->bqa:Lcom/layer/sdk/internal/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/a$19;->bqa:Lcom/layer/sdk/internal/b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/b;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
