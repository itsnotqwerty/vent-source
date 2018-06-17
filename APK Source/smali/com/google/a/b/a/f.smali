.class public final Lcom/google/a/b/a/f;
.super Lcom/google/a/d/c;


# static fields
.field private static final bid:Ljava/io/Writer;

.field private static final bie:Lcom/google/a/p;


# instance fields
.field private final bif:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private big:Ljava/lang/String;

.field private bih:Lcom/google/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/a/b/a/f$1;

    invoke-direct {v0}, Lcom/google/a/b/a/f$1;-><init>()V

    sput-object v0, Lcom/google/a/b/a/f;->bid:Ljava/io/Writer;

    new-instance v0, Lcom/google/a/p;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/google/a/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/a/f;->bie:Lcom/google/a/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/a/b/a/f;->bid:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/google/a/d/c;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    sget-object v0, Lcom/google/a/m;->bgT:Lcom/google/a/m;

    iput-object v0, p0, Lcom/google/a/b/a/f;->bih:Lcom/google/a/k;

    return-void
.end method

.method private b(Lcom/google/a/k;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/f;->big:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/a/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/a/d/c;->bgz:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/a/f;->vA()Lcom/google/a/k;

    move-result-object v0

    check-cast v0, Lcom/google/a/n;

    iget-object v1, p0, Lcom/google/a/b/a/f;->big:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/a/n;->a(Ljava/lang/String;Lcom/google/a/k;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/b/a/f;->big:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/a/b/a/f;->bih:Lcom/google/a/k;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/google/a/b/a/f;->vA()Lcom/google/a/k;

    move-result-object v0

    instance-of v1, v0, Lcom/google/a/i;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/a/i;

    invoke-virtual {v0, p1}, Lcom/google/a/i;->a(Lcom/google/a/k;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private vA()Lcom/google/a/k;
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/k;

    return-object v0
.end method


# virtual methods
.method public final I(J)Lcom/google/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/a/p;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    return-object p0
.end method

.method public final a(Ljava/lang/Number;)Lcom/google/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/a/f;->vF()Lcom/google/a/d/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/a/d/c;->bgE:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0, p1}, Lcom/google/a/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    goto :goto_0
.end method

.method public final aG(Z)Lcom/google/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/a/p;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Boolean;)Lcom/google/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/a/f;->vF()Lcom/google/a/d/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0, p1}, Lcom/google/a/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    goto :goto_0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    sget-object v1, Lcom/google/a/b/a/f;->bie:Lcom/google/a/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final do(Ljava/lang/String;)Lcom/google/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/f;->big:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/a/f;->vA()Lcom/google/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/google/a/n;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/a/b/a/f;->big:Ljava/lang/String;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final dp(Ljava/lang/String;)Lcom/google/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/a/f;->vF()Lcom/google/a/d/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0, p1}, Lcom/google/a/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final vB()Lcom/google/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/a/i;

    invoke-direct {v0}, Lcom/google/a/i;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    iget-object v1, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final vC()Lcom/google/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/f;->big:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/a/f;->vA()Lcom/google/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/google/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final vD()Lcom/google/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/a/n;

    invoke-direct {v0}, Lcom/google/a/n;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    iget-object v1, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final vE()Lcom/google/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/a/f;->big:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/a/f;->vA()Lcom/google/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/google/a/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    iget-object v1, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final vF()Lcom/google/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/m;->bgT:Lcom/google/a/m;

    invoke-direct {p0, v0}, Lcom/google/a/b/a/f;->b(Lcom/google/a/k;)V

    return-object p0
.end method

.method public final vz()Lcom/google/a/k;
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected one JSON element but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/b/a/f;->bif:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/f;->bih:Lcom/google/a/k;

    return-object v0
.end method
