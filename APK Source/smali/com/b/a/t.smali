.class public final Lcom/b/a/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/t$a;
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/b/a/t$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/t$a;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/b/a/t$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/t$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/b/a/t;-><init>(Lcom/b/a/t$a;)V

    return-void
.end method


# virtual methods
.method public final Ab()Lcom/b/a/t$a;
    .locals 3

    new-instance v0, Lcom/b/a/t$a;

    invoke-direct {v0}, Lcom/b/a/t$a;-><init>()V

    iget-object v1, v0, Lcom/b/a/t$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final dH(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/b/a/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/b/a/a/a/f;->dE(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dV(I)Ljava/lang/String;
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final dW(I)Ljava/lang/String;
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/b/a/t;->a:[Ljava/lang/String;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/b/a/t;->dV(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/b/a/t;->dW(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
