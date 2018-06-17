.class public final Lcom/google/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final bhi:Lcom/google/a/b/d;


# instance fields
.field public bhj:D

.field public bhk:I

.field public bhl:Z

.field public bhm:Z

.field public bhn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public bho:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/a/b/d;

    invoke-direct {v0}, Lcom/google/a/b/d;-><init>()V

    sput-object v0, Lcom/google/a/b/d;->bhi:Lcom/google/a/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/a/b/d;->bhj:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/google/a/b/d;->bhk:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/b/d;->bhl:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/d;->bhn:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/d;->bho:Ljava/util/List;

    return-void
.end method

.method public static o(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private vp()Lcom/google/a/b/d;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p2, Lcom/google/a/c/a;->bkb:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lcom/google/a/b/d;->n(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/a/b/d;->aF(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v3, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/a/b/d;->aF(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v0

    :cond_2
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/a/b/d$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/d$1;-><init>(Lcom/google/a/b/d;ZZLcom/google/a/f;Lcom/google/a/c/a;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/a/a/d;Lcom/google/a/a/e;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/a/a/d;->vn()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/a/b/d;->bhj:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/google/a/a/e;->vn()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/a/b/d;->bhj:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final aF(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/a/b/d;->bhn:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b;

    invoke-interface {v0}, Lcom/google/a/b;->vb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/a/b/d;->bho:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/d;->vp()Lcom/google/a/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/google/a/b/d;->bhj:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/a/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/d;

    const-class v1, Lcom/google/a/a/e;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/e;

    invoke-virtual {p0, v0, v1}, Lcom/google/a/b/d;->a(Lcom/google/a/a/d;Lcom/google/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/a/b/d;->bhl:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/a/b/d;->p(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/a/b/d;->o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
