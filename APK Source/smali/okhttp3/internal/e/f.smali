.class public final Lokhttp3/internal/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/e/f$a;
    }
.end annotation


# static fields
.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ld/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final daM:Ld/f;

.field private static final daN:Ld/f;

.field private static final daO:Ld/f;

.field private static final daP:Ld/f;

.field private static final daQ:Ld/f;

.field private static final daR:Ld/f;

.field private static final daS:Ld/f;

.field private static final daT:Ld/f;


# instance fields
.field private final cgQ:Lokhttp3/t;

.field private final daU:Lokhttp3/r$a;

.field private final daV:Lokhttp3/internal/e/g;

.field private daW:Lokhttp3/internal/e/i;

.field final dak:Lokhttp3/internal/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "connection"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daM:Ld/f;

    const-string v0, "host"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daN:Ld/f;

    const-string v0, "keep-alive"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daO:Ld/f;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daP:Ld/f;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daQ:Ld/f;

    const-string v0, "te"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daR:Ld/f;

    const-string v0, "encoding"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daS:Ld/f;

    const-string v0, "upgrade"

    invoke-static {v0}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->daT:Ld/f;

    const/16 v0, 0xc

    new-array v0, v0, [Ld/f;

    sget-object v1, Lokhttp3/internal/e/f;->daM:Ld/f;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/e/f;->daN:Ld/f;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/e/f;->daO:Ld/f;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/e/f;->daP:Ld/f;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/e/f;->daR:Ld/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/e/f;->daQ:Ld/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/e/f;->daS:Ld/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/e/f;->daT:Ld/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/e/c;->daC:Ld/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/e/c;->daD:Ld/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/e/c;->daE:Ld/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/e/c;->daF:Ld/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Ld/f;

    sget-object v1, Lokhttp3/internal/e/f;->daM:Ld/f;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/e/f;->daN:Ld/f;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/e/f;->daO:Ld/f;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/e/f;->daP:Ld/f;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/e/f;->daR:Ld/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/e/f;->daQ:Ld/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/e/f;->daS:Ld/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/e/f;->daT:Ld/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/e/f;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/t;Lokhttp3/r$a;Lokhttp3/internal/b/g;Lokhttp3/internal/e/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/e/f;->cgQ:Lokhttp3/t;

    iput-object p2, p0, Lokhttp3/internal/e/f;->daU:Lokhttp3/r$a;

    iput-object p3, p0, Lokhttp3/internal/e/f;->dak:Lokhttp3/internal/b/g;

    iput-object p4, p0, Lokhttp3/internal/e/f;->daV:Lokhttp3/internal/e/g;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/w;J)Ld/r;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->MX()Ld/r;

    move-result-object v0

    return-object v0
.end method

.method public final bz(Z)Lokhttp3/y$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x64

    const/4 v3, 0x0

    iget-object v0, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->takeResponseHeaders()Ljava/util/List;

    move-result-object v5

    new-instance v1, Lokhttp3/p$a;

    invoke-direct {v1}, Lokhttp3/p$a;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v4, v0

    move-object v2, v3

    :goto_0
    if-ge v4, v6, :cond_3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/e/c;

    if-nez v0, :cond_0

    if-eqz v2, :cond_2

    iget v0, v2, Lokhttp3/internal/c/k;->code:I

    if-ne v0, v9, :cond_2

    new-instance v0, Lokhttp3/p$a;

    invoke-direct {v0}, Lokhttp3/p$a;-><init>()V

    move-object v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v7, v0, Lokhttp3/internal/e/c;->daG:Ld/f;

    iget-object v0, v0, Lokhttp3/internal/e/c;->daH:Ld/f;

    invoke-virtual {v0}, Ld/f;->KE()Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lokhttp3/internal/e/c;->daB:Ld/f;

    invoke-virtual {v7, v8}, Ld/f;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "HTTP/1.1 "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/c/k;->fD(Ljava/lang/String;)Lokhttp3/internal/c/k;

    move-result-object v2

    move-object v0, v1

    goto :goto_1

    :cond_1
    sget-object v8, Lokhttp3/internal/e/f;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    invoke-virtual {v7}, Ld/f;->KE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v1, v7, v0}, Lokhttp3/internal/a;->a(Lokhttp3/p$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lokhttp3/y$a;

    invoke-direct {v0}, Lokhttp3/y$a;-><init>()V

    sget-object v4, Lokhttp3/u;->cZh:Lokhttp3/u;

    iput-object v4, v0, Lokhttp3/y$a;->cWq:Lokhttp3/u;

    iget v4, v2, Lokhttp3/internal/c/k;->code:I

    iput v4, v0, Lokhttp3/y$a;->code:I

    iget-object v2, v2, Lokhttp3/internal/c/k;->message:Ljava/lang/String;

    iput-object v2, v0, Lokhttp3/y$a;->message:Ljava/lang/String;

    invoke-virtual {v1}, Lokhttp3/p$a;->MB()Lokhttp3/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/y$a;->c(Lokhttp3/p;)Lokhttp3/y$a;

    move-result-object v0

    if-eqz p1, :cond_5

    sget-object v1, Lokhttp3/internal/a;->cZG:Lokhttp3/internal/a;

    invoke-virtual {v1, v0}, Lokhttp3/internal/a;->a(Lokhttp3/y$a;)I

    move-result v1

    if-ne v1, v9, :cond_5

    :goto_2
    return-object v3

    :cond_5
    move-object v3, v0

    goto :goto_2
.end method

.method public final d(Lokhttp3/w;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lokhttp3/w;->cZp:Lokhttp3/x;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p1, Lokhttp3/w;->cZo:Lokhttp3/p;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lokhttp3/internal/e/c;

    sget-object v5, Lokhttp3/internal/e/c;->daC:Ld/f;

    iget-object v6, p1, Lokhttp3/w;->method:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lokhttp3/internal/e/c;

    sget-object v5, Lokhttp3/internal/e/c;->daD:Ld/f;

    iget-object v6, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    invoke-static {v6}, Lokhttp3/internal/c/i;->d(Lokhttp3/q;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lokhttp3/w;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lokhttp3/internal/e/c;

    sget-object v6, Lokhttp3/internal/e/c;->daF:Ld/f;

    invoke-direct {v5, v6, v4}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v4, Lokhttp3/internal/e/c;

    sget-object v5, Lokhttp3/internal/e/c;->daE:Ld/f;

    iget-object v6, p1, Lokhttp3/w;->cVX:Lokhttp3/q;

    iget-object v6, v6, Lokhttp3/q;->scheme:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lokhttp3/p;->namesAndValues:[Ljava/lang/String;

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    :goto_2
    if-ge v1, v4, :cond_4

    invoke-virtual {v2, v1}, Lokhttp3/p;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ld/f;->fG(Ljava/lang/String;)Ld/f;

    move-result-object v5

    sget-object v6, Lokhttp3/internal/e/f;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lokhttp3/internal/e/c;

    invoke-virtual {v2, v1}, Lokhttp3/p;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lokhttp3/internal/e/c;-><init>(Ld/f;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lokhttp3/internal/e/f;->daV:Lokhttp3/internal/e/g;

    invoke-virtual {v1, v3, v0}, Lokhttp3/internal/e/g;->c(Ljava/util/List;Z)Lokhttp3/internal/e/i;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    iget-object v0, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dbx:Lokhttp3/internal/e/i$c;

    iget-object v1, p0, Lokhttp3/internal/e/f;->daU:Lokhttp3/r$a;

    invoke-interface {v1}, Lokhttp3/r$a;->readTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ld/t;->d(JLjava/util/concurrent/TimeUnit;)Ld/t;

    iget-object v0, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    iget-object v0, v0, Lokhttp3/internal/e/i;->dby:Lokhttp3/internal/e/i$c;

    iget-object v1, p0, Lokhttp3/internal/e/f;->daU:Lokhttp3/r$a;

    invoke-interface {v1}, Lokhttp3/r$a;->writeTimeoutMillis()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ld/t;->d(JLjava/util/concurrent/TimeUnit;)Ld/t;

    goto/16 :goto_0
.end method

.method public final e(Lokhttp3/y;)Lokhttp3/z;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/f;->dak:Lokhttp3/internal/b/g;

    iget-object v0, v0, Lokhttp3/internal/b/g;->cZl:Lokhttp3/n;

    iget-object v0, p0, Lokhttp3/internal/e/f;->dak:Lokhttp3/internal/b/g;

    iget-object v0, v0, Lokhttp3/internal/b/g;->daf:Lokhttp3/e;

    invoke-static {}, Lokhttp3/n;->Mv()V

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/y;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lokhttp3/internal/c/e;->f(Lokhttp3/y;)J

    move-result-wide v2

    new-instance v1, Lokhttp3/internal/e/f$a;

    iget-object v4, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    iget-object v4, v4, Lokhttp3/internal/e/i;->dbv:Lokhttp3/internal/e/i$b;

    invoke-direct {v1, p0, v4}, Lokhttp3/internal/e/f$a;-><init>(Lokhttp3/internal/e/f;Ld/s;)V

    new-instance v4, Lokhttp3/internal/c/h;

    invoke-static {v1}, Ld/l;->b(Ld/s;)Ld/e;

    move-result-object v1

    invoke-direct {v4, v0, v2, v3, v1}, Lokhttp3/internal/c/h;-><init>(Ljava/lang/String;JLd/e;)V

    return-object v4
.end method

.method public final finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/f;->daW:Lokhttp3/internal/e/i;

    invoke-virtual {v0}, Lokhttp3/internal/e/i;->MX()Ld/r;

    move-result-object v0

    invoke-interface {v0}, Ld/r;->close()V

    return-void
.end method

.method public final flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/e/f;->daV:Lokhttp3/internal/e/g;

    iget-object v0, v0, Lokhttp3/internal/e/g;->dbf:Lokhttp3/internal/e/j;

    invoke-virtual {v0}, Lokhttp3/internal/e/j;->flush()V

    return-void
.end method
