.class public final Lio/intercom/a/b/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/b/a/s;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final cRD:Lio/intercom/a/b/a/b/d;


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
            "Lio/intercom/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public bho:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/b/a/b/d;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/d;-><init>()V

    sput-object v0, Lio/intercom/a/b/a/b/d;->cRD:Lio/intercom/a/b/a/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lio/intercom/a/b/a/b/d;->bhj:D

    const/16 v0, 0x88

    iput v0, p0, Lio/intercom/a/b/a/b/d;->bhk:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/b/a/b/d;->bhl:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/b/a/b/d;->bhn:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/b/a/b/d;->bho:Ljava/util/List;

    return-void
.end method

.method private Kd()Lio/intercom/a/b/a/b/d;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/b/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
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


# virtual methods
.method public final a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lio/intercom/a/b/a/c/a;->bkb:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/b/a/b/d;->b(Ljava/lang/Class;Z)Z

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/b/a/b/d;->b(Ljava/lang/Class;Z)Z

    move-result v2

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/intercom/a/b/a/b/d$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/intercom/a/b/a/b/d$1;-><init>(Lio/intercom/a/b/a/b/d;ZZLio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)V

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/b/a/a/d;Lio/intercom/a/b/a/a/e;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/intercom/a/b/a/a/d;->vn()D

    move-result-wide v2

    iget-wide v4, p0, Lio/intercom/a/b/a/b/d;->bhj:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lio/intercom/a/b/a/a/e;->vn()D

    move-result-wide v2

    iget-wide v4, p0, Lio/intercom/a/b/a/b/d;->bhj:D

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

.method public final b(Ljava/lang/Class;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v0, p0, Lio/intercom/a/b/a/b/d;->bhj:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    const-class v0, Lio/intercom/a/b/a/a/d;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/a/d;

    const-class v1, Lio/intercom/a/b/a/a/e;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/intercom/a/b/a/a/e;

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/b/a/b/d;->a(Lio/intercom/a/b/a/a/d;Lio/intercom/a/b/a/a/e;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/b/a/b/d;->bhl:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lio/intercom/a/b/a/b/d;->p(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lio/intercom/a/b/a/b/d;->o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lio/intercom/a/b/a/b/d;->bhn:Ljava/util/List;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/a;

    invoke-interface {v0}, Lio/intercom/a/b/a/a;->vb()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/intercom/a/b/a/b/d;->bho:Ljava/util/List;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/b/d;->Kd()Lio/intercom/a/b/a/b/d;

    move-result-object v0

    return-object v0
.end method
