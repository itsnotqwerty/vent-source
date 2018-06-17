.class public final Lio/intercom/a/b/a/b/g;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/b/a/b/g$b;,
        Lio/intercom/a/b/a/b/g$a;,
        Lio/intercom/a/b/a/b/g$c;,
        Lio/intercom/a/b/a/b/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bhw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field cRI:Lio/intercom/a/b/a/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final cRJ:Lio/intercom/a/b/a/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private cRK:Lio/intercom/a/b/a/b/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/g",
            "<TK;TV;>.a;"
        }
    .end annotation
.end field

.field private cRL:Lio/intercom/a/b/a/b/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/g",
            "<TK;TV;>.b;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/intercom/a/b/a/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/intercom/a/b/a/b/g;->$assertionsDisabled:Z

    new-instance v0, Lio/intercom/a/b/a/b/g$1;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/g$1;-><init>()V

    sput-object v0, Lio/intercom/a/b/a/b/g;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/intercom/a/b/a/b/g;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/b/g;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Lio/intercom/a/b/a/b/g;->size:I

    iput v0, p0, Lio/intercom/a/b/a/b/g;->modCount:I

    new-instance v0, Lio/intercom/a/b/a/b/g$d;

    invoke-direct {v0}, Lio/intercom/a/b/a/b/g$d;-><init>()V

    iput-object v0, p0, Lio/intercom/a/b/a/b/g;->cRJ:Lio/intercom/a/b/a/b/g$d;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lio/intercom/a/b/a/b/g;->bhw:Ljava/util/Comparator;

    return-void

    :cond_0
    sget-object p1, Lio/intercom/a/b/a/b/g;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private a(Lio/intercom/a/b/a/b/g$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    iget-object v4, v3, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v5, v3, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    iput-object v4, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    if-eqz v4, :cond_0

    iput-object p1, v4, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    :cond_0
    invoke-direct {p0, p1, v3}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    iput-object p1, v3, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iput-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    if-eqz v0, :cond_2

    iget v0, v0, Lio/intercom/a/b/a/b/g$d;->height:I

    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    iget v0, v4, Lio/intercom/a/b/a/b/g$d;->height:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lio/intercom/a/b/a/b/g$d;->height:I

    iget v0, p1, Lio/intercom/a/b/a/b/g$d;->height:I

    if-eqz v5, :cond_1

    iget v1, v5, Lio/intercom/a/b/a/b/g$d;->height:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lio/intercom/a/b/a/b/g$d;->height:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    const/4 v1, 0x0

    iput-object v1, p1, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, v0, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lio/intercom/a/b/a/b/g;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    if-eq v1, p1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iput-object p2, v0, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lio/intercom/a/b/a/b/g;->cRI:Lio/intercom/a/b/a/b/g$d;

    goto :goto_0
.end method

.method private aD(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lio/intercom/a/b/a/b/g;->d(Ljava/lang/Object;Z)Lio/intercom/a/b/a/b/g$d;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lio/intercom/a/b/a/b/g$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    iget-object v4, v3, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v5, v3, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    iput-object v5, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    if-eqz v5, :cond_0

    iput-object p1, v5, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    :cond_0
    invoke-direct {p0, p1, v3}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    iput-object p1, v3, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    iput-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    if-eqz v0, :cond_2

    iget v0, v0, Lio/intercom/a/b/a/b/g$d;->height:I

    move v2, v0

    :goto_0
    if-eqz v5, :cond_3

    iget v0, v5, Lio/intercom/a/b/a/b/g$d;->height:I

    :goto_1
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lio/intercom/a/b/a/b/g$d;->height:I

    iget v0, p1, Lio/intercom/a/b/a/b/g$d;->height:I

    if-eqz v4, :cond_1

    iget v1, v4, Lio/intercom/a/b/a/b/g$d;->height:I

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lio/intercom/a/b/a/b/g$d;->height:I

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Lio/intercom/a/b/a/b/g$d;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_a

    iget-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v4, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    if-eqz v3, :cond_2

    iget v0, v3, Lio/intercom/a/b/a/b/g$d;->height:I

    move v2, v0

    :goto_1
    if-eqz v4, :cond_3

    iget v0, v4, Lio/intercom/a/b/a/b/g$d;->height:I

    :goto_2
    sub-int v5, v2, v0

    const/4 v6, -0x2

    if-ne v5, v6, :cond_8

    iget-object v3, v4, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v0, v4, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    if-eqz v0, :cond_4

    iget v0, v0, Lio/intercom/a/b/a/b/g$d;->height:I

    move v2, v0

    :goto_3
    if-eqz v3, :cond_5

    iget v0, v3, Lio/intercom/a/b/a/b/g$d;->height:I

    :goto_4
    sub-int/2addr v0, v2

    if-eq v0, v7, :cond_0

    if-nez v0, :cond_6

    if-nez p2, :cond_6

    :cond_0
    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;)V

    :goto_5
    if-nez p2, :cond_a

    :cond_1
    :goto_6
    iget-object p1, p1, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    sget-boolean v2, Lio/intercom/a/b/a/b/g;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    if-eq v0, v8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    invoke-direct {p0, v4}, Lio/intercom/a/b/a/b/g;->b(Lio/intercom/a/b/a/b/g$d;)V

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;)V

    goto :goto_5

    :cond_8
    const/4 v4, 0x2

    if-ne v5, v4, :cond_f

    iget-object v4, v3, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v0, v3, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    if-eqz v0, :cond_b

    iget v0, v0, Lio/intercom/a/b/a/b/g$d;->height:I

    move v2, v0

    :goto_7
    if-eqz v4, :cond_c

    iget v0, v4, Lio/intercom/a/b/a/b/g$d;->height:I

    :goto_8
    sub-int/2addr v0, v2

    if-eq v0, v8, :cond_9

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    :cond_9
    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/g;->b(Lio/intercom/a/b/a/b/g$d;)V

    :goto_9
    if-eqz p2, :cond_1

    :cond_a
    :goto_a
    return-void

    :cond_b
    move v2, v1

    goto :goto_7

    :cond_c
    move v0, v1

    goto :goto_8

    :cond_d
    sget-boolean v2, Lio/intercom/a/b/a/b/g;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    if-eq v0, v7, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-direct {p0, v3}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;)V

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/g;->b(Lio/intercom/a/b/a/b/g$d;)V

    goto :goto_9

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lio/intercom/a/b/a/b/g$d;->height:I

    if-eqz p2, :cond_1

    goto :goto_a

    :cond_10
    sget-boolean v3, Lio/intercom/a/b/a/b/g;->$assertionsDisabled:Z

    if-nez v3, :cond_11

    if-eq v5, v7, :cond_11

    if-eq v5, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lio/intercom/a/b/a/b/g$d;->height:I

    if-eqz p2, :cond_a

    goto :goto_6
.end method

.method private d(Ljava/lang/Object;Z)Lio/intercom/a/b/a/b/g$d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v5, p0, Lio/intercom/a/b/a/b/g;->bhw:Ljava/util/Comparator;

    iget-object v2, p0, Lio/intercom/a/b/a/b/g;->cRI:Lio/intercom/a/b/a/b/g$d;

    const/4 v0, 0x0

    if-eqz v2, :cond_5

    sget-object v0, Lio/intercom/a/b/a/b/g;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, v2, Lio/intercom/a/b/a/b/g$d;->bhL:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    :goto_1
    if-nez v3, :cond_3

    move-object v1, v2

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lio/intercom/a/b/a/b/g$d;->bhL:Ljava/lang/Object;

    invoke-interface {v5, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    :cond_3
    if-gez v3, :cond_4

    iget-object v4, v2, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    :goto_3
    if-eqz v4, :cond_6

    move-object v2, v4

    goto :goto_0

    :cond_4
    iget-object v4, v2, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    goto :goto_3

    :cond_5
    move v3, v0

    :cond_6
    if-eqz p2, :cond_0

    iget-object v1, p0, Lio/intercom/a/b/a/b/g;->cRJ:Lio/intercom/a/b/a/b/g$d;

    if-nez v2, :cond_8

    sget-object v0, Lio/intercom/a/b/a/b/g;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v5, v0, :cond_7

    instance-of v0, p1, Ljava/lang/Comparable;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lio/intercom/a/b/a/b/g$d;

    iget-object v3, v1, Lio/intercom/a/b/a/b/g$d;->cRU:Lio/intercom/a/b/a/b/g$d;

    invoke-direct {v0, v2, p1, v1, v3}, Lio/intercom/a/b/a/b/g$d;-><init>(Lio/intercom/a/b/a/b/g$d;Ljava/lang/Object;Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/g;->cRI:Lio/intercom/a/b/a/b/g$d;

    :goto_4
    iget v1, p0, Lio/intercom/a/b/a/b/g;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/b/a/b/g;->size:I

    iget v1, p0, Lio/intercom/a/b/a/b/g;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/intercom/a/b/a/b/g;->modCount:I

    move-object v1, v0

    goto :goto_2

    :cond_8
    new-instance v0, Lio/intercom/a/b/a/b/g$d;

    iget-object v4, v1, Lio/intercom/a/b/a/b/g$d;->cRU:Lio/intercom/a/b/a/b/g$d;

    invoke-direct {v0, v2, p1, v1, v4}, Lio/intercom/a/b/a/b/g$d;-><init>(Lio/intercom/a/b/a/b/g$d;Ljava/lang/Object;Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    if-gez v3, :cond_9

    iput-object v0, v2, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    :goto_5
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1}, Lio/intercom/a/b/a/b/g;->b(Lio/intercom/a/b/a/b/g$d;Z)V

    goto :goto_4

    :cond_9
    iput-object v0, v2, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    goto :goto_5
.end method


# virtual methods
.method final a(Lio/intercom/a/b/a/b/g$d;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$d;->cRU:Lio/intercom/a/b/a/b/g$d;

    iget-object v1, p1, Lio/intercom/a/b/a/b/g$d;->cRP:Lio/intercom/a/b/a/b/g$d;

    iput-object v1, v0, Lio/intercom/a/b/a/b/g$d;->cRP:Lio/intercom/a/b/a/b/g$d;

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$d;->cRP:Lio/intercom/a/b/a/b/g$d;

    iget-object v1, p1, Lio/intercom/a/b/a/b/g$d;->cRU:Lio/intercom/a/b/a/b/g$d;

    iput-object v1, v0, Lio/intercom/a/b/a/b/g$d;->cRU:Lio/intercom/a/b/a/b/g$d;

    :cond_0
    iget-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iget-object v0, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    iget-object v1, p1, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    iget v1, v3, Lio/intercom/a/b/a/b/g$d;->height:I

    iget v4, v0, Lio/intercom/a/b/a/b/g$d;->height:I

    if-le v1, v4, :cond_2

    iget-object v1, v3, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, v1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    move-object v0, v1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, v0, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    if-nez v1, :cond_1

    :cond_3
    invoke-virtual {p0, v0, v2}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Z)V

    iget-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    if-eqz v3, :cond_8

    iget v1, v3, Lio/intercom/a/b/a/b/g$d;->height:I

    iput-object v3, v0, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    iput-object v0, v3, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    iput-object v5, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    :goto_1
    iget-object v3, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    if-eqz v3, :cond_4

    iget v2, v3, Lio/intercom/a/b/a/b/g$d;->height:I

    iput-object v3, v0, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    iput-object v0, v3, Lio/intercom/a/b/a/b/g$d;->cRR:Lio/intercom/a/b/a/b/g$d;

    iput-object v5, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/intercom/a/b/a/b/g$d;->height:I

    invoke-direct {p0, p1, v0}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    :goto_2
    return-void

    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, p1, v3}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    iput-object v5, p1, Lio/intercom/a/b/a/b/g$d;->cRS:Lio/intercom/a/b/a/b/g$d;

    :goto_3
    invoke-direct {p0, v1, v2}, Lio/intercom/a/b/a/b/g;->b(Lio/intercom/a/b/a/b/g$d;Z)V

    iget v0, p0, Lio/intercom/a/b/a/b/g;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/intercom/a/b/a/b/g;->size:I

    iget v0, p0, Lio/intercom/a/b/a/b/g;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/b/a/b/g;->modCount:I

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0, p1, v0}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    iput-object v5, p1, Lio/intercom/a/b/a/b/g$d;->cRT:Lio/intercom/a/b/a/b/g$d;

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1, v5}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Lio/intercom/a/b/a/b/g$d;)V

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_1
.end method

.method final aE(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/g;->aD(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/b/a/b/g;->a(Lio/intercom/a/b/a/b/g$d;Z)V

    :cond_0
    return-object v0
.end method

.method final c(Ljava/util/Map$Entry;)Lio/intercom/a/b/a/b/g$d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lio/intercom/a/b/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/b/g;->aD(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lio/intercom/a/b/a/b/g$d;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    if-eqz v1, :cond_3

    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/b/a/b/g;->cRI:Lio/intercom/a/b/a/b/g$d;

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/b/a/b/g;->size:I

    iget v0, p0, Lio/intercom/a/b/a/b/g;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/b/a/b/g;->modCount:I

    iget-object v0, p0, Lio/intercom/a/b/a/b/g;->cRJ:Lio/intercom/a/b/a/b/g$d;

    iput-object v0, v0, Lio/intercom/a/b/a/b/g$d;->cRU:Lio/intercom/a/b/a/b/g$d;

    iput-object v0, v0, Lio/intercom/a/b/a/b/g$d;->cRP:Lio/intercom/a/b/a/b/g$d;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/g;->aD(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/g;->cRK:Lio/intercom/a/b/a/b/g$a;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/intercom/a/b/a/b/g$a;

    invoke-direct {v0, p0}, Lio/intercom/a/b/a/b/g$a;-><init>(Lio/intercom/a/b/a/b/g;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/g;->cRK:Lio/intercom/a/b/a/b/g$a;

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/b/g;->aD(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/intercom/a/b/a/b/g$d;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/g;->cRL:Lio/intercom/a/b/a/b/g$b;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/intercom/a/b/a/b/g$b;

    invoke-direct {v0, p0}, Lio/intercom/a/b/a/b/g$b;-><init>(Lio/intercom/a/b/a/b/g;)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/g;->cRL:Lio/intercom/a/b/a/b/g$b;

    goto :goto_0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/intercom/a/b/a/b/g;->d(Ljava/lang/Object;Z)Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    iget-object v1, v0, Lio/intercom/a/b/a/b/g$d;->value:Ljava/lang/Object;

    iput-object p2, v0, Lio/intercom/a/b/a/b/g$d;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/intercom/a/b/a/b/g;->aE(Ljava/lang/Object;)Lio/intercom/a/b/a/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/intercom/a/b/a/b/g$d;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lio/intercom/a/b/a/b/g;->size:I

    return v0
.end method
