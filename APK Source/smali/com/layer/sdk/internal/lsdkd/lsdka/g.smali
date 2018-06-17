.class public Lcom/layer/sdk/internal/lsdkd/lsdka/g;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;,
        Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/layer/sdk/internal/lsdkd/d;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private b:Lcom/layer/sdk/internal/lsdkd/h;

.field private c:[Landroid/net/Uri;

.field private d:[Lcom/layer/sdk/internal/lsdkd/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "No IDs set"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    array-length v0, v0

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/d;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    :cond_1
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b:Lcom/layer/sdk/internal/lsdkd/h;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b:Lcom/layer/sdk/internal/lsdkd/h;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/h;->m()Lcom/layer/sdk/internal/lsdkd/f;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/layer/sdk/internal/lsdkd/f;->a(Landroid/net/Uri;Z)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    aput-object v0, v1, p1

    goto :goto_0
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILcom/layer/sdk/internal/lsdkd/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/layer/sdk/internal/lsdkd/h;)V
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b:Lcom/layer/sdk/internal/lsdkd/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b:Lcom/layer/sdk/internal/lsdkd/h;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b:Lcom/layer/sdk/internal/lsdkd/h;

    return-void
.end method

.method protected a(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    iput-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/d;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v4, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_1
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/d;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/layer/sdk/internal/lsdkd/d;

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(ILcom/layer/sdk/internal/lsdkd/d;)V

    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/layer/sdk/internal/lsdkd/d;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(Lcom/layer/sdk/internal/lsdkd/d;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(ILcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/layer/sdk/internal/lsdkd/d;

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/d;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdkd/d;->getId()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->d:[Lcom/layer/sdk/internal/lsdkd/d;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(I)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g$a;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/g;B)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/g;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;

    invoke-direct {v0, p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;-><init>(Lcom/layer/sdk/internal/lsdkd/lsdka/g;I)V

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b(I)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/layer/sdk/internal/lsdkd/d;

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->b(ILcom/layer/sdk/internal/lsdkd/d;)Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->c:[Landroid/net/Uri;

    array-length v0, v0

    goto :goto_0
.end method
