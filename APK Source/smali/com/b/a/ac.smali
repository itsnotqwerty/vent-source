.class public final Lcom/b/a/ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/ac$a;
    }
.end annotation


# instance fields
.field public final bIK:Lcom/b/a/aa;

.field bJh:Lcom/b/a/ac;

.field bMA:Lcom/b/a/ac;

.field final bMB:Lcom/b/a/ac;

.field private volatile bMC:Lcom/b/a/g;

.field public final bMk:Lcom/b/a/y;

.field public final bMx:Lcom/b/a/s;

.field public final bMy:Lcom/b/a/t;

.field public final bMz:Lcom/b/a/b;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/b/a/ac$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iput-object v0, p0, Lcom/b/a/ac;->bIK:Lcom/b/a/aa;

    iget-object v0, p1, Lcom/b/a/ac$a;->bMk:Lcom/b/a/y;

    iput-object v0, p0, Lcom/b/a/ac;->bMk:Lcom/b/a/y;

    iget v0, p1, Lcom/b/a/ac$a;->c:I

    iput v0, p0, Lcom/b/a/ac;->c:I

    iget-object v0, p1, Lcom/b/a/ac$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ac;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/ac$a;->bMx:Lcom/b/a/s;

    iput-object v0, p0, Lcom/b/a/ac;->bMx:Lcom/b/a/s;

    iget-object v0, p1, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    invoke-virtual {v0}, Lcom/b/a/t$a;->Ac()Lcom/b/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    iget-object v0, p1, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    iput-object v0, p0, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    iget-object v0, p1, Lcom/b/a/ac$a;->bMA:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ac;->bMA:Lcom/b/a/ac;

    iget-object v0, p1, Lcom/b/a/ac$a;->bJh:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ac;->bJh:Lcom/b/a/ac;

    iget-object v0, p1, Lcom/b/a/ac$a;->bMB:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ac;->bMB:Lcom/b/a/ac;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ac$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/ac;-><init>(Lcom/b/a/ac$a;)V

    return-void
.end method


# virtual methods
.method public final Ao()Lcom/b/a/t;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    return-object v0
.end method

.method public final Ap()Lcom/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    return-object v0
.end method

.method public final Aq()Lcom/b/a/ac$a;
    .locals 2

    new-instance v0, Lcom/b/a/ac$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/ac$a;-><init>(Lcom/b/a/ac;B)V

    return-object v0
.end method

.method public final Ar()Lcom/b/a/g;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac;->bMC:Lcom/b/a/g;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-static {v0}, Lcom/b/a/g;->b(Lcom/b/a/t;)Lcom/b/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->bMC:Lcom/b/a/g;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-virtual {v0, p1}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/b/a/ac;->c:I

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/b/a/ac;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/b/a/ac;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/b/a/k;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/b/a/ac;->c:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const-string v0, "WWW-Authenticate"

    :goto_0
    iget-object v1, p0, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-static {v1, v0}, Lcom/b/a/a/a/j;->b(Lcom/b/a/t;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/b/a/ac;->c:I

    const/16 v1, 0x197

    if-ne v0, v1, :cond_1

    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/ac;->bMk:Lcom/b/a/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/b/a/ac;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/ac;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/ac;->bIK:Lcom/b/a/aa;

    iget-object v1, v1, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    invoke-virtual {v1}, Lcom/b/a/u;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
