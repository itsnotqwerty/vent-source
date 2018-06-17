.class public final Lokhttp3/internal/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/r$a;


# instance fields
.field final cZl:Lokhttp3/n;

.field public final cZt:Lokhttp3/w;

.field private calls:I

.field private final connectTimeout:I

.field final daf:Lokhttp3/e;

.field final dai:Lokhttp3/internal/b/c;

.field public final dak:Lokhttp3/internal/b/g;

.field final dal:Lokhttp3/internal/c/c;

.field private final index:I

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/r;",
            ">;"
        }
    .end annotation
.end field

.field private final readTimeout:I

.field private final writeTimeout:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;ILokhttp3/w;Lokhttp3/e;Lokhttp3/n;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/r;",
            ">;",
            "Lokhttp3/internal/b/g;",
            "Lokhttp3/internal/c/c;",
            "Lokhttp3/internal/b/c;",
            "I",
            "Lokhttp3/w;",
            "Lokhttp3/e;",
            "Lokhttp3/n;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/c/g;->interceptors:Ljava/util/List;

    iput-object p4, p0, Lokhttp3/internal/c/g;->dai:Lokhttp3/internal/b/c;

    iput-object p2, p0, Lokhttp3/internal/c/g;->dak:Lokhttp3/internal/b/g;

    iput-object p3, p0, Lokhttp3/internal/c/g;->dal:Lokhttp3/internal/c/c;

    iput p5, p0, Lokhttp3/internal/c/g;->index:I

    iput-object p6, p0, Lokhttp3/internal/c/g;->cZt:Lokhttp3/w;

    iput-object p7, p0, Lokhttp3/internal/c/g;->daf:Lokhttp3/e;

    iput-object p8, p0, Lokhttp3/internal/c/g;->cZl:Lokhttp3/n;

    iput p9, p0, Lokhttp3/internal/c/g;->connectTimeout:I

    iput p10, p0, Lokhttp3/internal/c/g;->readTimeout:I

    iput p11, p0, Lokhttp3/internal/c/g;->writeTimeout:I

    return-void
.end method


# virtual methods
.method public final MD()Lokhttp3/w;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/c/g;->cZt:Lokhttp3/w;

    return-object v0
.end method

.method public final a(Lokhttp3/w;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;)Lokhttp3/y;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/c/g;->index:I

    iget-object v1, p0, Lokhttp3/internal/c/g;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lokhttp3/internal/c/g;->calls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/c/g;->calls:I

    iget-object v0, p0, Lokhttp3/internal/c/g;->dal:Lokhttp3/internal/c/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/c/g;->dai:Lokhttp3/internal/b/c;

    iget-object v1, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-virtual {v0, v1}, Lokhttp3/internal/b/c;->c(Lokhttp3/q;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network interceptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/c/g;->interceptors:Ljava/util/List;

    iget v3, p0, Lokhttp3/internal/c/g;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must retain the same host and port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/c/g;->dal:Lokhttp3/internal/c/c;

    if-eqz v0, :cond_2

    iget v0, p0, Lokhttp3/internal/c/g;->calls:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network interceptor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/internal/c/g;->interceptors:Ljava/util/List;

    iget v3, p0, Lokhttp3/internal/c/g;->index:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lokhttp3/internal/c/g;

    iget-object v1, p0, Lokhttp3/internal/c/g;->interceptors:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/c/g;->index:I

    add-int/lit8 v5, v2, 0x1

    iget-object v7, p0, Lokhttp3/internal/c/g;->daf:Lokhttp3/e;

    iget-object v8, p0, Lokhttp3/internal/c/g;->cZl:Lokhttp3/n;

    iget v9, p0, Lokhttp3/internal/c/g;->connectTimeout:I

    iget v10, p0, Lokhttp3/internal/c/g;->readTimeout:I

    iget v11, p0, Lokhttp3/internal/c/g;->writeTimeout:I

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v11}, Lokhttp3/internal/c/g;-><init>(Ljava/util/List;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;ILokhttp3/w;Lokhttp3/e;Lokhttp3/n;III)V

    iget-object v1, p0, Lokhttp3/internal/c/g;->interceptors:Ljava/util/List;

    iget v2, p0, Lokhttp3/internal/c/g;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/r;

    invoke-interface {v1, v0}, Lokhttp3/r;->a(Lokhttp3/r$a;)Lokhttp3/y;

    move-result-object v2

    if-eqz p3, :cond_3

    iget v3, p0, Lokhttp3/internal/c/g;->index:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lokhttp3/internal/c/g;->interceptors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v0, v0, Lokhttp3/internal/c/g;->calls:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, v2, Lokhttp3/y;->cZu:Lokhttp3/z;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned a response with no body"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-object v2
.end method

.method public final c(Lokhttp3/w;)Lokhttp3/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/c/g;->dak:Lokhttp3/internal/b/g;

    iget-object v1, p0, Lokhttp3/internal/c/g;->dal:Lokhttp3/internal/c/c;

    iget-object v2, p0, Lokhttp3/internal/c/g;->dai:Lokhttp3/internal/b/c;

    invoke-virtual {p0, p1, v0, v1, v2}, Lokhttp3/internal/c/g;->a(Lokhttp3/w;Lokhttp3/internal/b/g;Lokhttp3/internal/c/c;Lokhttp3/internal/b/c;)Lokhttp3/y;

    move-result-object v0

    return-object v0
.end method

.method public final connectTimeoutMillis()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/c/g;->connectTimeout:I

    return v0
.end method

.method public final readTimeoutMillis()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/c/g;->readTimeout:I

    return v0
.end method

.method public final writeTimeoutMillis()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/c/g;->writeTimeout:I

    return v0
.end method
