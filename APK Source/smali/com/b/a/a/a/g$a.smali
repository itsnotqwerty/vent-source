.class public final Lcom/b/a/a/a/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final b:I

.field private final bGh:Lcom/b/a/aa;

.field final synthetic bJv:Lcom/b/a/a/a/g;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/b/a/a/a/g;ILcom/b/a/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/b/a/a/a/g$a;->b:I

    iput-object p3, p0, Lcom/b/a/a/a/g$a;->bGh:Lcom/b/a/aa;

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/aa;)Lcom/b/a/ac;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    iget v0, p0, Lcom/b/a/a/a/g$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/a/a/g$a;->d:I

    iget v0, p0, Lcom/b/a/a/a/g$a;->b:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    iget-object v0, v0, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->j:Ljava/util/List;

    iget v1, p0, Lcom/b/a/a/a/g$a;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/v;

    iget-object v1, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    invoke-static {v1}, Lcom/b/a/a/a/g;->a(Lcom/b/a/a/a/g;)Lcom/b/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/b/a/m;->bIg:Lcom/b/a/c;

    iget-object v1, v1, Lcom/b/a/c;->bFS:Lcom/b/a/a;

    invoke-virtual {p1}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/b/a/aa;->wC()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/a/i;->c(Ljava/net/URL;)I

    move-result v2

    iget v1, v1, Lcom/b/a/a;->c:I

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must retain the same host and port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Lcom/b/a/a/a/g$a;->d:I

    if-le v1, v4, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v0, p0, Lcom/b/a/a/a/g$a;->b:I

    iget-object v1, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    iget-object v1, v1, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v1, v1, Lcom/b/a/x;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    new-instance v2, Lcom/b/a/a/a/g$a;

    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    iget v1, p0, Lcom/b/a/a/a/g$a;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v2, v0, v1, p1}, Lcom/b/a/a/a/g$a;-><init>(Lcom/b/a/a/a/g;ILcom/b/a/aa;)V

    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    iget-object v0, v0, Lcom/b/a/a/a/g;->bJc:Lcom/b/a/x;

    iget-object v0, v0, Lcom/b/a/x;->j:Ljava/util/List;

    iget v1, p0, Lcom/b/a/a/a/g$a;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/v;

    invoke-interface {v0}, Lcom/b/a/v;->Ae()Lcom/b/a/ac;

    move-result-object v1

    iget v2, v2, Lcom/b/a/a/a/g$a;->d:I

    if-eq v2, v4, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "network interceptor "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must call proceed() exactly once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    :cond_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    invoke-static {v0}, Lcom/b/a/a/a/g;->b(Lcom/b/a/a/a/g;)Lcom/b/a/a/a/t;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/b/a/a/a/t;->c(Lcom/b/a/aa;)V

    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    invoke-static {v0, p1}, Lcom/b/a/a/a/g;->a(Lcom/b/a/a/a/g;Lcom/b/a/aa;)Lcom/b/a/aa;

    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    invoke-virtual {v0}, Lcom/b/a/a/a/g;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/b/a/aa;->bMp:Lcom/b/a/ab;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    invoke-static {v0}, Lcom/b/a/a/a/g;->b(Lcom/b/a/a/a/g;)Lcom/b/a/a/a/t;

    move-result-object v0

    iget-object v1, p1, Lcom/b/a/aa;->bMp:Lcom/b/a/ab;

    invoke-virtual {v1}, Lcom/b/a/ab;->a()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/b/a/a/a/t;->a(Lcom/b/a/aa;J)Lb/r;

    move-result-object v0

    invoke-static {v0}, Lb/m;->b(Lb/r;)Lb/d;

    move-result-object v0

    iget-object v1, p1, Lcom/b/a/aa;->bMp:Lcom/b/a/ab;

    invoke-virtual {v1, v0}, Lcom/b/a/ab;->a(Lb/d;)V

    invoke-interface {v0}, Lb/d;->close()V

    :cond_6
    iget-object v0, p0, Lcom/b/a/a/a/g$a;->bJv:Lcom/b/a/a/a/g;

    invoke-static {v0}, Lcom/b/a/a/a/g;->c(Lcom/b/a/a/a/g;)Lcom/b/a/ac;

    move-result-object v0

    iget v1, v0, Lcom/b/a/ac;->c:I

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_7

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_4

    :cond_7
    iget-object v2, v0, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v2}, Lcom/b/a/b;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/b/a/ac;->bMz:Lcom/b/a/b;

    invoke-virtual {v0}, Lcom/b/a/b;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
