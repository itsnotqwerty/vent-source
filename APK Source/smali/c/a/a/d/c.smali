.class public abstract Lc/a/a/d/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LT()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public final b([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/d/d;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc/a/a/d/c;->h([BII)V

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract d([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/d/d;
        }
    .end annotation
.end method

.method public final h([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/d/d;
        }
    .end annotation

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    add-int/lit8 v2, v0, 0x0

    sub-int v3, p2, v0

    invoke-virtual {p0, p1, v2, v3}, Lc/a/a/d/c;->d([BII)I

    move-result v2

    if-gtz v2, :cond_0

    new-instance v2, Lc/a/a/d/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot read. Remote side has closed. Tried to read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes, but only got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lc/a/a/d/d;-><init>(Ljava/lang/String;B)V

    throw v2

    :cond_0
    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public abstract h([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/d/d;
        }
    .end annotation
.end method
