.class public final Lokhttp3/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field cVX:Lokhttp3/q;

.field cZp:Lokhttp3/x;

.field public cZr:Lokhttp3/p$a;

.field method:Ljava/lang/String;

.field tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lokhttp3/w$a;->method:Ljava/lang/String;

    new-instance v0, Lokhttp3/p$a;

    invoke-direct {v0}, Lokhttp3/p$a;-><init>()V

    iput-object v0, p0, Lokhttp3/w$a;->cZr:Lokhttp3/p$a;

    return-void
.end method

.method constructor <init>(Lokhttp3/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    iput-object v0, p0, Lokhttp3/w$a;->cVX:Lokhttp3/q;

    iget-object v0, p1, Lokhttp3/w;->method:Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/w$a;->method:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/w;->cZp:Lokhttp3/x;

    iput-object v0, p0, Lokhttp3/w$a;->cZp:Lokhttp3/x;

    iget-object v0, p1, Lokhttp3/w;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lokhttp3/w$a;->tag:Ljava/lang/Object;

    iget-object v0, p1, Lokhttp3/w;->cZo:Lokhttp3/p;

    invoke-virtual {v0}, Lokhttp3/p;->MA()Lokhttp3/p$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/w$a;->cZr:Lokhttp3/p$a;

    return-void
.end method


# virtual methods
.method public final MH()Lokhttp3/w;
    .locals 2

    iget-object v0, p0, Lokhttp3/w$a;->cVX:Lokhttp3/q;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lokhttp3/w;

    invoke-direct {v0, p0}, Lokhttp3/w;-><init>(Lokhttp3/w$a;)V

    return-object v0
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/w$a;
    .locals 1

    iget-object v0, p0, Lokhttp3/w$a;->cZr:Lokhttp3/p$a;

    invoke-static {p1, p2}, Lokhttp3/p$a;->checkNameAndValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lokhttp3/p$a;->fs(Ljava/lang/String;)Lokhttp3/p$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/p$a;->Y(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/p$a;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Lokhttp3/x;)Lokhttp3/w$a;
    .locals 3
    .param p2    # Lokhttp3/x;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lokhttp3/internal/c/f;->permitsRequestBody(Ljava/lang/String;)Z

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
    if-nez p2, :cond_5

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PROPPATCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "REPORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lokhttp3/w$a;->method:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/w$a;->cZp:Lokhttp3/x;

    return-object p0
.end method

.method public final b(Lokhttp3/p;)Lokhttp3/w$a;
    .locals 1

    invoke-virtual {p1}, Lokhttp3/p;->MA()Lokhttp3/p$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/w$a;->cZr:Lokhttp3/p$a;

    return-object p0
.end method

.method public final b(Lokhttp3/q;)Lokhttp3/w$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lokhttp3/w$a;->cVX:Lokhttp3/q;

    return-object p0
.end method

.method public final fy(Ljava/lang/String;)Lokhttp3/w$a;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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
    invoke-static {p1}, Lokhttp3/q;->fu(Ljava/lang/String;)Lokhttp3/q;

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
    invoke-virtual {p0, v0}, Lokhttp3/w$a;->b(Lokhttp3/q;)Lokhttp3/w$a;

    move-result-object v0

    return-object v0
.end method

.method public final fz(Ljava/lang/String;)Lokhttp3/w$a;
    .locals 1

    iget-object v0, p0, Lokhttp3/w$a;->cZr:Lokhttp3/p$a;

    invoke-virtual {v0, p1}, Lokhttp3/p$a;->fs(Ljava/lang/String;)Lokhttp3/p$a;

    return-object p0
.end method
