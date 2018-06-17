.class public final Lcom/b/a/aa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field bMn:Lcom/b/a/u;

.field bMp:Lcom/b/a/ab;

.field public bMq:Ljava/lang/Object;

.field bMr:Lcom/b/a/z;

.field bMu:Lcom/b/a/t$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/aa$a;->bMr:Lcom/b/a/z;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/b/a/aa$a;->b:Ljava/lang/String;

    new-instance v0, Lcom/b/a/t$a;

    invoke-direct {v0}, Lcom/b/a/t$a;-><init>()V

    iput-object v0, p0, Lcom/b/a/aa$a;->bMu:Lcom/b/a/t$a;

    return-void
.end method

.method private constructor <init>(Lcom/b/a/aa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/aa$a;->bMr:Lcom/b/a/z;

    iget-object v0, p1, Lcom/b/a/aa;->bMn:Lcom/b/a/u;

    iput-object v0, p0, Lcom/b/a/aa$a;->bMn:Lcom/b/a/u;

    iget-object v0, p1, Lcom/b/a/aa;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/aa$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/aa;->bMp:Lcom/b/a/ab;

    iput-object v0, p0, Lcom/b/a/aa$a;->bMp:Lcom/b/a/ab;

    iget-object v0, p1, Lcom/b/a/aa;->bMq:Ljava/lang/Object;

    iput-object v0, p0, Lcom/b/a/aa$a;->bMq:Ljava/lang/Object;

    iget-object v0, p1, Lcom/b/a/aa;->bMo:Lcom/b/a/t;

    invoke-virtual {v0}, Lcom/b/a/t;->Ab()Lcom/b/a/t$a;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aa$a;->bMu:Lcom/b/a/t$a;

    iget-object v0, p1, Lcom/b/a/aa;->bMr:Lcom/b/a/z;

    iput-object v0, p0, Lcom/b/a/aa$a;->bMr:Lcom/b/a/z;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/aa;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/aa$a;-><init>(Lcom/b/a/aa;)V

    return-void
.end method

.method private a(Lcom/b/a/u;)Lcom/b/a/aa$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/b/a/aa$a;->bMn:Lcom/b/a/u;

    return-object p0
.end method


# virtual methods
.method public final Am()Lcom/b/a/aa$a;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public final An()Lcom/b/a/aa;
    .locals 2

    iget-object v0, p0, Lcom/b/a/aa$a;->bMn:Lcom/b/a/u;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/b/a/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/aa;-><init>(Lcom/b/a/aa$a;B)V

    return-object v0
.end method

.method public final P(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/aa$a;->bMu:Lcom/b/a/t$a;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/t$a;->O(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    return-object p0
.end method

.method public final Q(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/aa$a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/aa$a;->bMu:Lcom/b/a/t$a;

    invoke-virtual {v0, p1, p2}, Lcom/b/a/t$a;->M(Ljava/lang/String;Ljava/lang/String;)Lcom/b/a/t$a;

    return-object p0
.end method

.method public final a(Lcom/b/a/ab;)Lcom/b/a/aa$a;
    .locals 1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/b/a/aa$a;->a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/z;)Lcom/b/a/aa$a;
    .locals 0

    iput-object p1, p0, Lcom/b/a/aa$a;->bMr:Lcom/b/a/z;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/b/a/aa$a;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/b/a/u;->dJ(Ljava/lang/String;)Lcom/b/a/u;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/b/a/aa$a;->a(Lcom/b/a/u;)Lcom/b/a/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/b/a/ab;)Lcom/b/a/aa$a;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/b/a/a/a/h;->dF(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/b/a/aa$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/a/aa$a;->bMp:Lcom/b/a/ab;

    return-object p0
.end method

.method public final dM(Ljava/lang/String;)Lcom/b/a/aa$a;
    .locals 1

    iget-object v0, p0, Lcom/b/a/aa$a;->bMu:Lcom/b/a/t$a;

    invoke-virtual {v0, p1}, Lcom/b/a/t$a;->dI(Ljava/lang/String;)Lcom/b/a/t$a;

    return-object p0
.end method

.method public final g(Ljava/net/URL;)Lcom/b/a/aa$a;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/b/a/u;->f(Ljava/net/URL;)Lcom/b/a/u;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/b/a/aa$a;->a(Lcom/b/a/u;)Lcom/b/a/aa$a;

    move-result-object v0

    return-object v0
.end method
