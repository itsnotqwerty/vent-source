.class public final Lcom/b/a/ac$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/ac$a$a;
    }
.end annotation


# instance fields
.field public bIK:Lcom/b/a/aa;

.field bJh:Lcom/b/a/ac;

.field bMA:Lcom/b/a/ac;

.field bMB:Lcom/b/a/ac;

.field bMD:Lcom/b/a/t$a;

.field public bMk:Lcom/b/a/y;

.field public bMx:Lcom/b/a/s;

.field public bMz:Lcom/b/a/b;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/ac$a;->c:I

    new-instance v0, Lcom/b/a/t$a;

    invoke-direct {v0}, Lcom/b/a/t$a;-><init>()V

    iput-object v0, p0, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/ac$a;->c:I

    iget-object v0, p1, Lcom/b/a/ac;->bIK:Lcom/b/a/aa;

    iput-object v0, p0, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    iget-object v0, p1, Lcom/b/a/ac;->bMk:Lcom/b/a/y;

    iput-object v0, p0, Lcom/b/a/ac$a;->bMk:Lcom/b/a/y;

    iget v0, p1, Lcom/b/a/ac;->c:I

    iput v0, p0, Lcom/b/a/ac$a;->c:I

    iget-object v0, p1, Lcom/b/a/ac;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ac$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/ac;->bMx:Lcom/b/a/s;

    iput-object v0, p0, Lcom/b/a/ac$a;->bMx:Lcom/b/a/s;

    iget-object v0, p1, Lcom/b/a/ac;->bMy:Lcom/b/a/t;

    invoke-virtual {v0}, Lcom/b/a/t;->Ab()Lcom/b/a/t$a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    iget-object v0, p1, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    iput-object v0, p0, Lcom/b/a/ac$a;->bMz:Lcom/b/a/b;

    iget-object v0, p1, Lcom/b/a/ac;->bMA:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ac$a;->bMA:Lcom/b/a/ac;

    iget-object v0, p1, Lcom/b/a/ac;->bJh:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ac$a;->bJh:Lcom/b/a/ac;

    iget-object v0, p1, Lcom/b/a/ac;->bMB:Lcom/b/a/ac;

    iput-object v0, p0, Lcom/b/a/ac$a;->bMB:Lcom/b/a/ac;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ac;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/ac$a;-><init>(Lcom/b/a/ac;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/b/a/ac;)V
    .locals 3

    iget-object v0, p1, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/b/a/ac;->bMA:Lcom/b/a/ac;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p1, Lcom/b/a/ac;->bJh:Lcom/b/a/ac;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Lcom/b/a/ac;->bMB:Lcom/b/a/ac;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public final R(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ac$a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/t$a;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    return-object p0
.end method

.method public final S(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/ac$a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/t$a;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    return-object p0
.end method

.method public final e(Lcom/b/a/t;)Lcom/b/a/ac$a;
    .locals 1

    invoke-virtual {p1}, Lcom/b/a/t;->Ab()Lcom/b/a/t$a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac$a;->bMD:Lcom/b/a/t$a;

    return-object p0
.end method

.method public final j(Lcom/b/a/ac;)Lcom/b/a/ac$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, Lcom/b/a/ac$a;->a(Ljava/lang/String;Lcom/b/a/ac;)V

    :cond_0
    iput-object p1, p0, Lcom/b/a/ac$a;->bMA:Lcom/b/a/ac;

    return-object p0
.end method

.method public final k(Lcom/b/a/ac;)Lcom/b/a/ac$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, Lcom/b/a/ac$a;->a(Ljava/lang/String;Lcom/b/a/ac;)V

    :cond_0
    iput-object p1, p0, Lcom/b/a/ac$a;->bJh:Lcom/b/a/ac;

    return-object p0
.end method

.method public final l(Lcom/b/a/ac;)Lcom/b/a/ac$a;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/b/a/ac$a;->bMB:Lcom/b/a/ac;

    return-object p0
.end method

.method public final xb()Lcom/b/a/ac;
    .locals 3

    iget-object v0, p0, Lcom/b/a/ac$a;->bIK:Lcom/b/a/aa;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/ac$a;->bMk:Lcom/b/a/y;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/b/a/ac$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/b/a/ac$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/b/a/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/ac;-><init>(Lcom/b/a/ac$a;B)V

    return-object v0
.end method
