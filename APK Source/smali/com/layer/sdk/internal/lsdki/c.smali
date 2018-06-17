.class public Lcom/layer/sdk/internal/lsdki/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/c$a;,
        Lcom/layer/sdk/internal/lsdki/c$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Long;

.field b:Lcom/layer/sdk/internal/lsdki/c$b;

.field bsu:Lcom/layer/sdk/internal/lsdki/c$a;

.field c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/c;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdki/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/c;->bsu:Lcom/layer/sdk/internal/lsdki/c$a;

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdki/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/c;->b:Lcom/layer/sdk/internal/lsdki/c$b;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/c;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/c$b;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/c$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/c;->a(Lcom/layer/sdk/internal/lsdki/c$b;)V

    return-void
.end method

.method public b()Lcom/layer/sdk/internal/lsdki/c$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/c;->b:Lcom/layer/sdk/internal/lsdki/c$b;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/c;->c:Ljava/lang/Long;

    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/c;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Lcom/layer/sdk/internal/lsdki/c$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/c;->bsu:Lcom/layer/sdk/internal/lsdki/c$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncableChange: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->d()Lcom/layer/sdk/internal/lsdki/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->b()Lcom/layer/sdk/internal/lsdki/c$b;

    move-result-object v1

    iget-object v1, v1, Lcom/layer/sdk/internal/lsdki/c$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/c;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
