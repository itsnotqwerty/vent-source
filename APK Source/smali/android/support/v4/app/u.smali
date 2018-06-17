.class final Landroid/support/v4/app/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/u$a;
    }
.end annotation


# static fields
.field private static final yE:[I

.field private static final yF:Landroid/support/v4/app/w;

.field private static final yG:Landroid/support/v4/app/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/app/u;->yE:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/v;

    invoke-direct {v0}, Landroid/support/v4/app/v;-><init>()V

    :goto_0
    sput-object v0, Landroid/support/v4/app/u;->yF:Landroid/support/v4/app/w;

    invoke-static {}, Landroid/support/v4/app/u;->cV()Landroid/support/v4/app/w;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/u;->yG:Landroid/support/v4/app/w;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private static a(Landroid/support/v4/app/u$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/u$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/u$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/u$a;",
            ">;I)",
            "Landroid/support/v4/app/u$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Landroid/support/v4/app/u$a;

    invoke-direct {p0}, Landroid/support/v4/app/u$a;-><init>()V

    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;)Landroid/support/v4/app/w;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getExitTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getReturnTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/app/i;->getEnterTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/i;->getReenterTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/i;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    :goto_0
    return-object v0

    :cond_7
    sget-object v2, Landroid/support/v4/app/u;->yF:Landroid/support/v4/app/w;

    if-eqz v2, :cond_8

    sget-object v2, Landroid/support/v4/app/u;->yF:Landroid/support/v4/app/w;

    invoke-static {v2, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v0, Landroid/support/v4/app/u;->yF:Landroid/support/v4/app/w;

    goto :goto_0

    :cond_8
    sget-object v2, Landroid/support/v4/app/u;->yG:Landroid/support/v4/app/w;

    if-eqz v2, :cond_9

    sget-object v2, Landroid/support/v4/app/u;->yG:Landroid/support/v4/app/w;

    invoke-static {v2, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Landroid/support/v4/app/u;->yG:Landroid/support/v4/app/w;

    goto :goto_0

    :cond_9
    sget-object v1, Landroid/support/v4/app/u;->yF:Landroid/support/v4/app/w;

    if-nez v1, :cond_a

    sget-object v1, Landroid/support/v4/app/u;->yG:Landroid/support/v4/app/w;

    if-eqz v1, :cond_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Transition types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/g/a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Landroid/support/v4/g/a;

    invoke-direct {v7}, Landroid/support/v4/g/a;-><init>()V

    add-int/lit8 v0, p4, -0x1

    move v6, v0

    :goto_0
    if-lt v6, p3, :cond_3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/c;->W(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    move-object v3, v1

    move-object v4, v0

    :goto_1
    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v8, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v7, v0, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v0, v1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_3
    return-object v7
.end method

.method private static a(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Landroid/support/v4/g/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/w;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/u$a;",
            ")",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/g/a;->clear()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p3, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    new-instance v3, Landroid/support/v4/g/a;

    invoke-direct {v3}, Landroid/support/v4/g/a;-><init>()V

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/w;->a(Ljava/util/Map;Landroid/view/View;)V

    iget-object v2, p3, Landroid/support/v4/app/u$a;->yY:Landroid/support/v4/app/c;

    iget-boolean v1, p3, Landroid/support/v4/app/u$a;->yX:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    iget-object v0, v2, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    move-object v2, v0

    :goto_1
    invoke-static {v3, v2}, Landroid/support/v4/g/h;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/i;->getExitTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    iget-object v0, v2, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    move-object v2, v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/g/h;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_6
    move-object v0, v3

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/g/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/app/u$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/support/v4/app/u$a;->yV:Landroid/support/v4/app/c;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v0, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Landroid/support/v4/app/i;Z)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/app/i;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/w;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/w;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/i;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Z)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/i;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/w;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/i;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/w;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/i;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_1

    invoke-virtual {p4}, Landroid/support/v4/app/i;->getAllowReturnTransitionOverlap()Z

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p4}, Landroid/support/v4/app/i;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/w;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/g/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/g/a;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/w;Ljava/lang/Object;Landroid/support/v4/app/i;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/w;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/i;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/support/v4/app/i;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/w;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    :cond_2
    return-object v0
.end method

.method private static a(Landroid/support/v4/app/c;Landroid/support/v4/app/c$a;Landroid/util/SparseArray;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/c;",
            "Landroid/support/v4/app/c$a;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/u$a;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p1, Landroid/support/v4/app/c$a;->wD:Landroid/support/v4/app/i;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v9, v1, Landroid/support/v4/app/i;->mContainerId:I

    if-eqz v9, :cond_0

    if-eqz p3, :cond_5

    sget-object v0, Landroid/support/v4/app/u;->yE:[I

    iget v4, p1, Landroid/support/v4/app/c$a;->wC:I

    aget v0, v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v3

    move v6, v3

    move v7, v3

    move v5, v3

    :goto_2
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u$a;

    if-eqz v5, :cond_11

    invoke-static {v0, p2, v9}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/u$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/u$a;

    move-result-object v8

    iput-object v1, v8, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    iput-boolean p3, v8, Landroid/support/v4/app/u$a;->yU:Z

    iput-object p0, v8, Landroid/support/v4/app/u$a;->yV:Landroid/support/v4/app/c;

    :goto_3
    if-nez p4, :cond_3

    if-eqz v4, :cond_3

    if-eqz v8, :cond_2

    iget-object v0, v8, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    if-ne v0, v1, :cond_2

    iput-object v10, v8, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget v4, v1, Landroid/support/v4/app/i;->mState:I

    if-gtz v4, :cond_3

    iget v4, v0, Landroid/support/v4/app/o;->xF:I

    if-lez v4, :cond_3

    iget-boolean v4, p0, Landroid/support/v4/app/c;->wA:Z

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->g(Landroid/support/v4/app/i;)V

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/i;IIIZ)V

    :cond_3
    if-eqz v6, :cond_10

    if-eqz v8, :cond_4

    iget-object v0, v8, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    if-nez v0, :cond_10

    :cond_4
    invoke-static {v8, p2, v9}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/u$a;Landroid/util/SparseArray;I)Landroid/support/v4/app/u$a;

    move-result-object v0

    iput-object v1, v0, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    iput-boolean p3, v0, Landroid/support/v4/app/u$a;->yX:Z

    iput-object p0, v0, Landroid/support/v4/app/u$a;->yY:Landroid/support/v4/app/c;

    :goto_4
    if-nez p4, :cond_0

    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    if-ne v2, v1, :cond_0

    iput-object v10, v0, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/support/v4/app/c$a;->wC:I

    goto :goto_1

    :pswitch_1
    if-eqz p4, :cond_7

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHiddenChanged:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mAdded:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_5

    :cond_7
    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHidden:Z

    goto :goto_5

    :pswitch_2
    if-eqz p4, :cond_8

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mIsNewlyAdded:Z

    :goto_6
    move v4, v2

    move v6, v3

    move v7, v3

    move v5, v0

    goto :goto_2

    :cond_8
    iget-boolean v0, v1, Landroid/support/v4/app/i;->mAdded:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v3

    goto :goto_6

    :pswitch_3
    if-eqz p4, :cond_b

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHiddenChanged:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mAdded:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHidden:Z

    if-eqz v0, :cond_a

    move v0, v2

    :goto_7
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    goto/16 :goto_2

    :cond_a
    move v0, v3

    goto :goto_7

    :cond_b
    iget-boolean v0, v1, Landroid/support/v4/app/i;->mAdded:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v3

    goto :goto_7

    :pswitch_4
    if-eqz p4, :cond_e

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mAdded:Z

    if-nez v0, :cond_d

    iget-object v0, v1, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-object v0, v1, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    iget v0, v1, Landroid/support/v4/app/i;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_d

    move v0, v2

    :goto_8
    move v4, v3

    move v6, v0

    move v7, v2

    move v5, v3

    goto/16 :goto_2

    :cond_d
    move v0, v3

    goto :goto_8

    :cond_e
    iget-boolean v0, v1, Landroid/support/v4/app/i;->mAdded:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_8

    :cond_f
    move v0, v3

    goto :goto_8

    :cond_10
    move-object v0, v8

    goto/16 :goto_4

    :cond_11
    move-object v8, v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/c;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/u$a;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/c$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/i;",
            "Landroid/support/v4/app/i;",
            "Z",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/i;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_1

    move v0, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/support/v4/g/a;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static a(Landroid/support/v4/app/o;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/o;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/app/o;->xF:I

    if-gtz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v40, Landroid/util/SparseArray;

    invoke-direct/range {v40 .. v40}, Landroid/util/SparseArray;-><init>()V

    move/from16 v6, p3

    :goto_0
    move/from16 v0, p4

    if-ge v6, v0, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, v40

    move/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_2
    move-object/from16 v0, v40

    move/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v21, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/o;->mHost:Landroid/support/v4/app/m;

    iget-object v4, v4, Landroid/support/v4/app/m;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v40 .. v40}, Landroid/util/SparseArray;->size()I

    move-result v41

    const/4 v4, 0x0

    move/from16 v39, v4

    :goto_2
    move/from16 v0, v39

    move/from16 v1, v41

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v5, v0, v1, v2, v3}, Landroid/support/v4/app/u;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/g/a;

    move-result-object v17

    move-object/from16 v0, v40

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v4/app/u$a;

    if-eqz p5, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/app/o;->xG:Landroid/support/v4/app/k;

    invoke-virtual {v6}, Landroid/support/v4/app/k;->onHasView()Z

    move-result v6

    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/o;->xG:Landroid/support/v4/app/k;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/k;->onFindViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v18, v4

    :goto_3
    if-eqz v18, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;)Landroid/support/v4/app/w;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/app/u$a;->yU:Z

    move/from16 v22, v0

    move-object/from16 v0, v19

    iget-boolean v5, v0, Landroid/support/v4/app/u$a;->yX:Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v20

    invoke-static {v4, v0, v5}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v13, v0, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    move-object/from16 v25, v0

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/support/v4/app/i;->getView()Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v13, :cond_5

    if-nez v25, :cond_9

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-nez v24, :cond_6

    if-nez v7, :cond_6

    if-eqz v6, :cond_8

    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-static {v4, v6, v0, v1, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Landroid/support/v4/app/i;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v15, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Landroid/support/v4/app/i;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v5, 0x4

    invoke-static {v11, v5}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v5, v24

    move-object/from16 v8, v16

    move/from16 v9, v22

    invoke-static/range {v4 .. v9}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8

    if-eqz v20, :cond_7

    if-eqz v6, :cond_7

    move-object/from16 v0, v20

    iget-boolean v5, v0, Landroid/support/v4/app/i;->mAdded:Z

    if-eqz v5, :cond_7

    move-object/from16 v0, v20

    iget-boolean v5, v0, Landroid/support/v4/app/i;->mHidden:Z

    if-eqz v5, :cond_7

    move-object/from16 v0, v20

    iget-boolean v5, v0, Landroid/support/v4/app/i;->mHiddenChanged:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/support/v4/app/i;->setHideReplaced(Z)V

    invoke-virtual/range {v20 .. v20}, Landroid/support/v4/app/i;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v6, v5, v13}, Landroid/support/v4/app/w;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/support/v4/app/i;->mContainer:Landroid/view/ViewGroup;

    new-instance v8, Landroid/support/v4/app/u$1;

    invoke-direct {v8, v13}, Landroid/support/v4/app/u$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v5, v8}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    :cond_7
    invoke-static {v15}, Landroid/support/v4/app/w;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    move-object v8, v4

    move-object/from16 v10, v24

    move-object v12, v6

    move-object v14, v7

    invoke-virtual/range {v8 .. v15}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v9}, Landroid/support/v4/app/w;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object v12, v4

    move-object/from16 v13, v18

    move-object/from16 v14, v23

    invoke-virtual/range {v12 .. v17}, Landroid/support/v4/app/w;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v5, 0x0

    invoke-static {v11, v5}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v7, v0, v15}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_8
    :goto_5
    add-int/lit8 v4, v39, 0x1

    move/from16 v39, v4

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, v19

    iget-boolean v10, v0, Landroid/support/v4/app/u$a;->yU:Z

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v4, v0, v5, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Landroid/support/v4/g/a;

    move-result-object v7

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v4, v0, v5, v1}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Landroid/support/v4/g/a;

    move-result-object v11

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v5, 0x0

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/support/v4/g/a;->clear()V

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/support/v4/g/a;->clear()V

    :cond_b
    :goto_7
    if-nez v24, :cond_e

    if-nez v6, :cond_e

    if-nez v5, :cond_e

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, v25

    invoke-static {v4, v13, v0, v10}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v5

    goto :goto_6

    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->keySet()Ljava/util/Set;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-static {v0, v7, v8}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;Landroid/support/v4/g/a;Ljava/util/Collection;)V

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v15, v11, v8}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;Landroid/support/v4/g/a;Ljava/util/Collection;)V

    goto :goto_7

    :cond_e
    move-object/from16 v0, v25

    invoke-static {v13, v0, v10, v7}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;)V

    if-eqz v5, :cond_10

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, v19

    iget-boolean v8, v0, Landroid/support/v4/app/u$a;->yX:Z

    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/support/v4/app/u$a;->yY:Landroid/support/v4/app/c;

    invoke-static/range {v4 .. v9}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/g/a;ZLandroid/support/v4/app/c;)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v11, v0, v1, v10}, Landroid/support/v4/app/u;->a(Landroid/support/v4/g/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_f

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v14}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_f
    :goto_8
    new-instance v7, Landroid/support/v4/app/u$3;

    move-object v8, v13

    move-object/from16 v9, v25

    move-object v13, v4

    invoke-direct/range {v7 .. v14}, Landroid/support/v4/app/u$3;-><init>(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;Landroid/view/View;Landroid/support/v4/app/w;Landroid/graphics/Rect;)V

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    move-object v7, v5

    goto/16 :goto_4

    :cond_10
    const/4 v14, 0x0

    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/app/o;->xG:Landroid/support/v4/app/k;

    invoke-virtual {v6}, Landroid/support/v4/app/k;->onHasView()Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/app/o;->xG:Landroid/support/v4/app/k;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/k;->onFindViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object v12, v4

    :goto_9
    if-eqz v12, :cond_8

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    iget-object v10, v0, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    move-object/from16 v0, v29

    invoke-static {v10, v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;)Landroid/support/v4/app/w;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v19

    iget-boolean v5, v0, Landroid/support/v4/app/u$a;->yU:Z

    move-object/from16 v0, v19

    iget-boolean v6, v0, Landroid/support/v4/app/u$a;->yX:Z

    move-object/from16 v0, v29

    invoke-static {v4, v0, v5}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v26

    invoke-static {v4, v10, v6}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v6

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v4/app/u$a;->yW:Landroid/support/v4/app/i;

    move-object/from16 v23, v0

    if-eqz v22, :cond_12

    if-nez v23, :cond_15

    :cond_12
    const/16 v28, 0x0

    :goto_a
    if-nez v26, :cond_13

    if-nez v28, :cond_13

    if-eqz v6, :cond_8

    :cond_13
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-static {v4, v6, v10, v0, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Landroid/support/v4/app/i;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_14
    const/16 v27, 0x0

    :goto_b
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/support/v4/app/w;->b(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/app/u$a;->yU:Z

    move/from16 v30, v0

    move-object/from16 v25, v4

    invoke-static/range {v25 .. v30}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v26

    move-object/from16 v8, v27

    move-object/from16 v10, v28

    move-object/from16 v11, v20

    invoke-virtual/range {v4 .. v11}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    new-instance v30, Landroid/support/v4/app/u$2;

    move-object/from16 v31, v26

    move-object/from16 v32, v4

    move-object/from16 v33, v21

    move-object/from16 v34, v29

    move-object/from16 v35, v20

    move-object/from16 v36, v7

    move-object/from16 v37, v9

    move-object/from16 v38, v27

    invoke-direct/range {v30 .. v38}, Landroid/support/v4/app/u$2;-><init>(Ljava/lang/Object;Landroid/support/v4/app/w;Landroid/view/View;Landroid/support/v4/app/i;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    move-object/from16 v0, v30

    invoke-static {v12, v0}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    new-instance v6, Landroid/support/v4/app/w$2;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v6, v4, v0, v1}, Landroid/support/v4/app/w$2;-><init>(Landroid/support/v4/app/w;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v12, v6}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    invoke-virtual {v4, v12, v5}, Landroid/support/v4/app/w;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    new-instance v5, Landroid/support/v4/app/w$3;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v5, v4, v0, v1}, Landroid/support/v4/app/w$3;-><init>(Landroid/support/v4/app/w;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v12, v5}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/support/v4/app/u$a;->yU:Z

    move/from16 v24, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    :goto_c
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v4, v0, v5, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Landroid/support/v4/g/a;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v5, 0x0

    :goto_d
    if-nez v26, :cond_18

    if-nez v6, :cond_18

    if-nez v5, :cond_18

    const/16 v28, 0x0

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v4, v0, v1, v2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Landroid/support/v4/app/i;Z)Ljava/lang/Object;

    move-result-object v5

    goto :goto_c

    :cond_17
    invoke-virtual {v7}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_18
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v7}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;)V

    if-eqz v5, :cond_1a

    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v0, v19

    iget-boolean v8, v0, Landroid/support/v4/app/u$a;->yX:Z

    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/support/v4/app/u$a;->yY:Landroid/support/v4/app/c;

    invoke-static/range {v4 .. v9}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/g/a;ZLandroid/support/v4/app/c;)V

    if-eqz v26, :cond_19

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_19
    :goto_e
    new-instance v15, Landroid/support/v4/app/u$4;

    move-object/from16 v16, v4

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v27}, Landroid/support/v4/app/u$4;-><init>(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v12, v15}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/ad;

    move-object/from16 v28, v5

    goto/16 :goto_a

    :cond_1a
    const/16 v27, 0x0

    goto :goto_e

    :cond_1b
    move-object/from16 v27, v6

    goto/16 :goto_b

    :cond_1c
    move-object v12, v4

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v18, v4

    goto/16 :goto_3
.end method

.method private static a(Landroid/support/v4/app/w;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/g/a;ZLandroid/support/v4/app/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/w;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroid/support/v4/app/c;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p5, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p5, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    iget-object v0, p5, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p3, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, v0}, Landroid/support/v4/app/w;->a(Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p5, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/support/v4/app/u;->a(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Landroid/support/v4/g/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroid/support/v4/app/w;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/w;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/app/w;->l(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static b(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Landroid/support/v4/g/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/w;",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/support/v4/app/u$a;",
            ")",
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p3, Landroid/support/v4/app/u$a;->yT:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/g/a;->clear()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Landroid/support/v4/g/a;

    invoke-direct {v2}, Landroid/support/v4/g/a;-><init>()V

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/w;->a(Ljava/util/Map;Landroid/view/View;)V

    iget-object v3, p3, Landroid/support/v4/app/u$a;->yV:Landroid/support/v4/app/c;

    iget-boolean v1, p3, Landroid/support/v4/app/u$a;->yU:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getExitTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    iget-object v0, v3, Landroid/support/v4/app/c;->wy:Ljava/util/ArrayList;

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {v2, v4}, Landroid/support/v4/g/h;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    invoke-virtual {p1}, Landroid/support/v4/g/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v4/g/h;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_2
    if-eqz v1, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_8

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_5

    invoke-static {p1, v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/g/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/i;->getEnterTransitionCallback()Landroid/support/v4/app/ag;

    move-result-object v1

    iget-object v0, v3, Landroid/support/v4/app/c;->wz:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    :cond_5
    invoke-static {v1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1, v0}, Landroid/support/v4/app/u;->a(Landroid/support/v4/g/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_8

    invoke-virtual {p1, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/support/v4/g/a;->removeAt(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4

    :cond_8
    move-object v0, v2

    goto/16 :goto_0
.end method

.method static synthetic b(Landroid/support/v4/g/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/g/a;Landroid/support/v4/app/u$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/support/v4/app/w;Landroid/support/v4/app/i;Z)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/i;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/w;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/i;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v4/app/w;Ljava/lang/Object;Landroid/support/v4/app/i;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/w;Ljava/lang/Object;Landroid/support/v4/app/i;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/c;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/u$a;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->xG:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onHasView()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/c;->wk:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c$a;

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v2, p2}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/c$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/i;ZLandroid/support/v4/g/a;)V

    return-void
.end method

.method static synthetic c(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Landroid/support/v4/g/a;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/u;->b(Landroid/support/v4/app/w;Landroid/support/v4/g/a;Ljava/lang/Object;Landroid/support/v4/app/u$a;)Landroid/support/v4/g/a;

    move-result-object v0

    return-object v0
.end method

.method private static cV()Landroid/support/v4/app/w;
    .locals 2

    :try_start_0
    const-string v0, "android.support.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
