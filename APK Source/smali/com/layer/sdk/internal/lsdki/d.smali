.class public Lcom/layer/sdk/internal/lsdki/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdki/d$a;,
        Lcom/layer/sdk/internal/lsdki/d$b;,
        Lcom/layer/sdk/internal/lsdki/d$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Lcom/layer/sdk/internal/lsdki/d$c;

.field private c:Ljava/lang/Long;

.field private d:Lcom/layer/sdk/internal/lsdki/d$a;

.field private e:Lcom/layer/sdk/internal/lsdki/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdki/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/d;->d:Lcom/layer/sdk/internal/lsdki/d$a;

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdki/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/d;->e:Lcom/layer/sdk/internal/lsdki/d$b;

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdki/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/d;->b:Lcom/layer/sdk/internal/lsdki/d$c;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/d;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/d$c;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/d;->a(Lcom/layer/sdk/internal/lsdki/d$c;)V

    return-void
.end method

.method public b()Lcom/layer/sdk/internal/lsdki/d$c;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d;->b:Lcom/layer/sdk/internal/lsdki/d$c;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdki/d;->c:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdki/d$b;->a(Ljava/lang/String;)Lcom/layer/sdk/internal/lsdki/d$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/d;->a(Lcom/layer/sdk/internal/lsdki/d$b;)V

    return-void
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Lcom/layer/sdk/internal/lsdki/d$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d;->d:Lcom/layer/sdk/internal/lsdki/d$a;

    return-object v0
.end method

.method public e()Lcom/layer/sdk/internal/lsdki/d$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d;->e:Lcom/layer/sdk/internal/lsdki/d$b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncedChange: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/d;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/d;->d()Lcom/layer/sdk/internal/lsdki/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/d;->b()Lcom/layer/sdk/internal/lsdki/d$c;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/sdk/internal/lsdki/d$c;->b(Lcom/layer/sdk/internal/lsdki/d$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/d;->e:Lcom/layer/sdk/internal/lsdki/d$b;

    if-nez v0, :cond_0

    const-string v0, "."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/d;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdki/d;->e:Lcom/layer/sdk/internal/lsdki/d$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
