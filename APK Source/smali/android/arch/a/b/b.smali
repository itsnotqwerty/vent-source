.class public Landroid/arch/a/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/a/b/b$c;,
        Landroid/arch/a/b/b$f;,
        Landroid/arch/a/b/b$d;,
        Landroid/arch/a/b/b$b;,
        Landroid/arch/a/b/b$a;,
        Landroid/arch/a/b/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public af:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public ag:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public ah:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/arch/a/b/b$f",
            "<TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public ai:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/a/b/b;->ah:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/a/b/b;->ai:I

    return-void
.end method

.method static synthetic a(Landroid/arch/a/b/b;)Landroid/arch/a/b/b$c;
    .locals 1

    iget-object v0, p0, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    return-object v0
.end method


# virtual methods
.method public final W()Landroid/arch/a/b/b$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/a/b/b",
            "<TK;TV;>.d;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/arch/a/b/b$d;

    invoke-direct {v0, p0, v2}, Landroid/arch/a/b/b$d;-><init>(Landroid/arch/a/b/b;B)V

    iget-object v1, p0, Landroid/arch/a/b/b;->ah:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/a/b/b$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroid/arch/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Landroid/arch/a/b/b$c;

    invoke-direct {v0, p1, p2}, Landroid/arch/a/b/b$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroid/arch/a/b/b;->ai:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/arch/a/b/b;->ai:I

    iget-object v1, p0, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    if-nez v1, :cond_0

    iput-object v0, p0, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    iget-object v1, p0, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    iput-object v1, p0, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    iput-object v0, v1, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    iget-object v1, p0, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    iput-object v1, v0, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    iput-object v0, p0, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    goto :goto_0
.end method

.method protected e(Ljava/lang/Object;)Landroid/arch/a/b/b$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/arch/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/arch/a/b/b$c;->aj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Landroid/arch/a/b/b;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/arch/a/b/b;

    iget v0, p0, Landroid/arch/a/b/b;->ai:I

    iget v3, p1, Landroid/arch/a/b/b;->ai:I

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {p1}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_4

    if-nez v5, :cond_5

    :cond_4
    if-eqz v0, :cond_3

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Landroid/arch/a/b/b$a;

    iget-object v1, p0, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    iget-object v2, p0, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    invoke-direct {v0, v1, v2}, Landroid/arch/a/b/b$a;-><init>(Landroid/arch/a/b/b$c;Landroid/arch/a/b/b$c;)V

    iget-object v1, p0, Landroid/arch/a/b/b;->ah:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/arch/a/b/b;->e(Ljava/lang/Object;)Landroid/arch/a/b/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/arch/a/b/b$c;->mValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/arch/a/b/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/a/b/b$c;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/arch/a/b/b;->e(Ljava/lang/Object;)Landroid/arch/a/b/b$c;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/arch/a/b/b;->ai:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/a/b/b;->ai:I

    iget-object v0, p0, Landroid/arch/a/b/b;->ah:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/arch/a/b/b;->ah:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/a/b/b$f;

    invoke-interface {v0, v2}, Landroid/arch/a/b/b$f;->c(Landroid/arch/a/b/b$c;)V

    goto :goto_1

    :cond_1
    iget-object v0, v2, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    if-eqz v0, :cond_2

    iget-object v0, v2, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    iget-object v3, v2, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    iput-object v3, v0, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    :goto_2
    iget-object v0, v2, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    if-eqz v0, :cond_3

    iget-object v0, v2, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    iget-object v3, v2, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    iput-object v3, v0, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    :goto_3
    iput-object v1, v2, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    iput-object v1, v2, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    iget-object v0, v2, Landroid/arch/a/b/b$c;->mValue:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, v2, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    iput-object v0, p0, Landroid/arch/a/b/b;->af:Landroid/arch/a/b/b$c;

    goto :goto_2

    :cond_3
    iget-object v0, v2, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    iput-object v0, p0, Landroid/arch/a/b/b;->ag:Landroid/arch/a/b/b$c;

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/arch/a/b/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
