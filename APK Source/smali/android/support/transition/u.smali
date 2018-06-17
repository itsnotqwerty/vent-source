.class public abstract Landroid/support/transition/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/u$b;,
        Landroid/support/transition/u$a;,
        Landroid/support/transition/u$c;
    }
.end annotation


# static fields
.field private static uA:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ud:[I

.field private static final ue:Landroid/support/transition/l;


# instance fields
.field private mName:Ljava/lang/String;

.field private qG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field uB:Z

.field private uC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private uD:I

.field private uE:Z

.field private uF:Z

.field private uG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/u$c;",
            ">;"
        }
    .end annotation
.end field

.field uH:Landroid/support/transition/x;

.field private uI:Landroid/support/transition/u$b;

.field private uJ:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field uK:Landroid/support/transition/l;

.field private ub:Landroid/view/ViewGroup;

.field uf:J

.field ug:J

.field private uh:Landroid/animation/TimeInterpolator;

.field ui:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field uj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field uk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ul:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private um:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private un:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private uo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private uq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ur:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private us:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ut:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private uu:Landroid/support/transition/aa;

.field private uv:Landroid/support/transition/aa;

.field uw:Landroid/support/transition/y;

.field private ux:[I

.field private uy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/z;",
            ">;"
        }
    .end annotation
.end field

.field private uz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/u;->ud:[I

    new-instance v0, Landroid/support/transition/u$1;

    invoke-direct {v0}, Landroid/support/transition/u$1;-><init>()V

    sput-object v0, Landroid/support/transition/u;->ue:Landroid/support/transition/l;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/u;->uA:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/u;->mName:Ljava/lang/String;

    iput-wide v4, p0, Landroid/support/transition/u;->uf:J

    iput-wide v4, p0, Landroid/support/transition/u;->ug:J

    iput-object v1, p0, Landroid/support/transition/u;->uh:Landroid/animation/TimeInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->uk:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->um:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->un:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->uo:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->uq:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->ur:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->us:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->ut:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/transition/aa;

    invoke-direct {v0}, Landroid/support/transition/aa;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    new-instance v0, Landroid/support/transition/aa;

    invoke-direct {v0}, Landroid/support/transition/aa;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    iput-object v1, p0, Landroid/support/transition/u;->uw:Landroid/support/transition/y;

    sget-object v0, Landroid/support/transition/u;->ud:[I

    iput-object v0, p0, Landroid/support/transition/u;->ux:[I

    iput-object v1, p0, Landroid/support/transition/u;->ub:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroid/support/transition/u;->uB:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->uC:Ljava/util/ArrayList;

    iput v2, p0, Landroid/support/transition/u;->uD:I

    iput-boolean v2, p0, Landroid/support/transition/u;->uE:Z

    iput-boolean v2, p0, Landroid/support/transition/u;->uF:Z

    iput-object v1, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->qG:Ljava/util/ArrayList;

    sget-object v0, Landroid/support/transition/u;->ue:Landroid/support/transition/l;

    iput-object v0, p0, Landroid/support/transition/u;->uK:Landroid/support/transition/l;

    return-void
.end method

.method private a(Landroid/support/transition/aa;Landroid/support/transition/aa;)V
    .locals 12

    new-instance v6, Landroid/support/v4/g/a;

    iget-object v0, p1, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    invoke-direct {v6, v0}, Landroid/support/v4/g/a;-><init>(Landroid/support/v4/g/m;)V

    new-instance v7, Landroid/support/v4/g/a;

    iget-object v0, p2, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    invoke-direct {v7, v0}, Landroid/support/v4/g/a;-><init>(Landroid/support/v4/g/m;)V

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Landroid/support/transition/u;->ux:[I

    array-length v0, v0

    if-ge v4, v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/u;->ux:[I

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v6}, Landroid/support/v4/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_0

    invoke-virtual {v6, v2}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/z;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/transition/z;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/transition/z;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6, v2}, Landroid/support/v4/g/a;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/z;

    iget-object v3, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :pswitch_1
    iget-object v8, p1, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    iget-object v9, p2, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    invoke-virtual {v8}, Landroid/support/v4/g/a;->size()I

    move-result v10

    const/4 v0, 0x0

    move v5, v0

    :goto_2
    if-ge v5, v10, :cond_0

    invoke-virtual {v8, v5}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v8, v5}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/z;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/z;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object v11, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    :pswitch_2
    iget-object v8, p1, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    iget-object v9, p2, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v0, 0x0

    move v5, v0

    :goto_3
    if-ge v5, v10, :cond_0

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/z;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/z;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    iget-object v11, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :pswitch_3
    iget-object v8, p1, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    iget-object v9, p2, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v8}, Landroid/support/v4/g/f;->size()I

    move-result v10

    const/4 v0, 0x0

    move v5, v0

    :goto_4
    if-ge v5, v10, :cond_0

    invoke-virtual {v8, v5}, Landroid/support/v4/g/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v8, v5}, Landroid/support/v4/g/f;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Landroid/support/v4/g/f;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/z;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/z;

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    iget-object v11, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {v6}, Landroid/support/v4/g/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {v6, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/z;

    iget-object v2, v0, Landroid/support/transition/z;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-virtual {v7}, Landroid/support/v4/g/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v7, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/z;

    iget-object v2, v0, Landroid/support/transition/z;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/transition/u;->u(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/support/transition/aa;Landroid/view/View;Landroid/support/transition/z;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iget-object v0, p0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    iget-boolean v1, v0, Landroid/support/v4/g/f;->EA:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/g/f;->gc()V

    :cond_2
    iget-object v1, v0, Landroid/support/v4/g/f;->EB:[J

    iget v0, v0, Landroid/support/v4/g/f;->ai:I

    invoke-static {v1, v0, v2, v3}, Landroid/support/v4/g/c;->a([JIJ)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/g/f;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->d(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/g/f;->put(JLjava/lang/Object;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->d(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v4/g/f;->put(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private a(Landroid/view/View;Z)V
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v0, p0, Landroid/support/transition/u;->um:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->um:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->un:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/u;->un:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Landroid/support/transition/u;->uo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->uo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->uo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/support/transition/z;

    invoke-direct {v0}, Landroid/support/transition/z;-><init>()V

    iput-object p1, v0, Landroid/support/transition/z;->view:Landroid/view/View;

    if-eqz p2, :cond_8

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->b(Landroid/support/transition/z;)V

    :goto_1
    iget-object v2, v0, Landroid/support/transition/z;->vc:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->d(Landroid/support/transition/z;)V

    if-eqz p2, :cond_9

    iget-object v2, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    invoke-static {v2, p1, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/view/View;Landroid/support/transition/z;)V

    :cond_5
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->ur:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->ur:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v0, p0, Landroid/support/transition/u;->us:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->us:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    iget-object v0, p0, Landroid/support/transition/u;->ut:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->ut:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/transition/u;->c(Landroid/support/transition/z;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    invoke-static {v2, p1, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/view/View;Landroid/support/transition/z;)V

    goto :goto_2

    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/transition/u;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static a(Landroid/support/transition/z;Landroid/support/transition/z;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/transition/z;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/transition/u;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->uC:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static cp()Landroid/support/v4/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/support/transition/u;->uA:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    sget-object v1, Landroid/support/transition/u;->uA:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/transition/u$c;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroid/support/transition/u$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/u;->uI:Landroid/support/transition/u$b;

    return-void
.end method

.method final a(Landroid/view/ViewGroup;)V
    .locals 9

    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v1, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;)V

    invoke-static {}, Landroid/support/transition/u;->cp()Landroid/support/v4/g/a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/g/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/al;->B(Landroid/view/View;)Landroid/support/transition/av;

    move-result-object v5

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_5

    invoke-virtual {v4, v3}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$a;

    if-eqz v1, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->mView:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->uO:Landroid/support/transition/av;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->uN:Landroid/support/transition/z;

    iget-object v7, v1, Landroid/support/transition/u$a;->mView:Landroid/view/View;

    invoke-virtual {p0, v7, v2}, Landroid/support/transition/u;->b(Landroid/view/View;Z)Landroid/support/transition/z;

    move-result-object v8

    invoke-virtual {p0, v7, v2}, Landroid/support/transition/u;->c(Landroid/view/View;Z)Landroid/support/transition/z;

    move-result-object v7

    if-nez v8, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    iget-object v1, v1, Landroid/support/transition/u$a;->uP:Landroid/support/transition/u;

    invoke-virtual {v1, v6, v7}, Landroid/support/transition/u;->a(Landroid/support/transition/z;Landroid/support/transition/z;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v3, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    iget-object v4, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/support/transition/u;->cq()V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/aa;",
            "Landroid/support/transition/aa;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/z;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/z;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/support/transition/u;->cp()Landroid/support/v4/g/a;

    move-result-object v12

    const-wide v8, 0x7fffffffffffffffL

    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v14, :cond_b

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/z;

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/z;

    if-eqz v2, :cond_d

    iget-object v4, v2, Landroid/support/transition/z;->vc:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v2, 0x0

    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_0

    iget-object v2, v3, Landroid/support/transition/z;->vc:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-nez v4, :cond_1

    if-eqz v3, :cond_6

    :cond_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/z;Landroid/support/transition/z;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v3}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;Landroid/support/transition/z;Landroid/support/transition/z;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v2, 0x0

    if-eqz v3, :cond_a

    iget-object v6, v3, Landroid/support/transition/z;->view:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/u;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    array-length v3, v7

    if-lez v3, :cond_9

    new-instance v4, Landroid/support/transition/z;

    invoke-direct {v4}, Landroid/support/transition/z;-><init>()V

    iput-object v6, v4, Landroid/support/transition/z;->view:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    invoke-virtual {v2, v6}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/z;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_3
    array-length v10, v7

    if-ge v3, v10, :cond_4

    iget-object v10, v4, Landroid/support/transition/z;->values:Ljava/util/Map;

    aget-object v15, v7, v3

    iget-object v0, v2, Landroid/support/transition/z;->values:Ljava/util/Map;

    move-object/from16 v16, v0

    aget-object v17, v7, v3

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Landroid/support/v4/g/a;->size()I

    move-result v7

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, v7, :cond_8

    invoke-virtual {v12, v3}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v12, v2}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/u$a;

    iget-object v10, v2, Landroid/support/transition/u$a;->uN:Landroid/support/transition/z;

    if-eqz v10, :cond_7

    iget-object v10, v2, Landroid/support/transition/u$a;->mView:Landroid/view/View;

    if-ne v10, v6, :cond_7

    iget-object v10, v2, Landroid/support/transition/u$a;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/transition/u;->mName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v2, v2, Landroid/support/transition/u$a;->uN:Landroid/support/transition/z;

    invoke-virtual {v2, v4}, Landroid/support/transition/z;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object v10, v2

    move-object v7, v4

    move-object v3, v6

    :goto_5
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->uH:Landroid/support/transition/x;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->uH:Landroid/support/transition/x;

    invoke-virtual {v2}, Landroid/support/transition/x;->cv()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->qG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    long-to-int v6, v4

    invoke-virtual {v13, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v8, v4

    :cond_5
    new-instance v2, Landroid/support/transition/u$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/u;->mName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/support/transition/al;->B(Landroid/view/View;)Landroid/support/transition/av;

    move-result-object v6

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/transition/u$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/u;Landroid/support/transition/av;Landroid/support/transition/z;)V

    invoke-virtual {v12, v10, v2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->qG:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_8
    move-object v2, v4

    :cond_9
    move-object v10, v5

    move-object v7, v2

    move-object v3, v6

    goto :goto_5

    :cond_a
    iget-object v3, v4, Landroid/support/transition/z;->view:Landroid/view/View;

    move-object v10, v5

    move-object v7, v2

    goto :goto_5

    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    invoke-virtual {v13, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/u;->qG:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v13, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_c
    return-void

    :cond_d
    move-object v4, v2

    goto/16 :goto_1
.end method

.method public a(Landroid/support/transition/z;Landroid/support/transition/z;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/support/transition/u;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    invoke-static {p1, p2, v5}, Landroid/support/transition/u;->a(Landroid/support/transition/z;Landroid/support/transition/z;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/z;Landroid/support/transition/z;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public b(Landroid/support/transition/u$c;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public final b(Landroid/view/View;Z)Landroid/support/transition/z;
    .locals 1

    :goto_0
    iget-object v0, p0, Landroid/support/transition/u;->uw:Landroid/support/transition/y;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/transition/u;->uw:Landroid/support/transition/y;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    :goto_1
    iget-object v0, v0, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/z;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    goto :goto_1
.end method

.method public abstract b(Landroid/support/transition/z;)V
.end method

.method final b(Landroid/view/ViewGroup;Z)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/transition/u;->k(Z)V

    iget-object v0, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->uk:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->uk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Landroid/support/transition/z;

    invoke-direct {v3}, Landroid/support/transition/z;-><init>()V

    iput-object v0, v3, Landroid/support/transition/z;->view:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->b(Landroid/support/transition/z;)V

    :goto_1
    iget-object v4, v3, Landroid/support/transition/z;->vc:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->d(Landroid/support/transition/z;)V

    if-eqz p2, :cond_5

    iget-object v4, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/view/View;Landroid/support/transition/z;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->c(Landroid/support/transition/z;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/view/View;Landroid/support/transition/z;)V

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/support/transition/z;

    invoke-direct {v3}, Landroid/support/transition/z;-><init>()V

    iput-object v0, v3, Landroid/support/transition/z;->view:Landroid/view/View;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->b(Landroid/support/transition/z;)V

    :goto_4
    iget-object v4, v3, Landroid/support/transition/z;->vc:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->d(Landroid/support/transition/z;)V

    if-eqz p2, :cond_8

    iget-object v4, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/view/View;Landroid/support/transition/z;)V

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->c(Landroid/support/transition/z;)V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/view/View;Landroid/support/transition/z;)V

    goto :goto_5

    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/transition/u;->a(Landroid/view/View;Z)V

    :cond_a
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/support/transition/u;->uJ:Landroid/support/v4/g/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/transition/u;->uJ:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_b

    iget-object v0, p0, Landroid/support/transition/u;->uJ:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v5, v5, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    invoke-virtual {v5, v0}, Landroid/support/v4/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_b
    :goto_7
    if-ge v2, v3, :cond_d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroid/support/transition/u;->uJ:Landroid/support/v4/g/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v5, v5, Landroid/support/transition/aa;->vg:Landroid/support/v4/g/a;

    invoke-virtual {v5, v1, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method public c(J)Landroid/support/transition/u;
    .locals 1

    iput-wide p1, p0, Landroid/support/transition/u;->ug:J

    return-object p0
.end method

.method final c(Landroid/view/View;Z)Landroid/support/transition/z;
    .locals 6

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/transition/u;->uw:Landroid/support/transition/y;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/support/transition/u;->uw:Landroid/support/transition/y;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_3

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/z;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/transition/z;->view:Landroid/view/View;

    if-ne v0, p1, :cond_4

    :goto_4
    if-ltz v2, :cond_6

    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;

    :goto_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/z;

    :goto_6
    move-object v1, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    goto :goto_5

    :cond_6
    move-object v0, v1

    goto :goto_6

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method public abstract c(Landroid/support/transition/z;)V
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/transition/u;->cr()Landroid/support/transition/u;

    move-result-object v0

    return-object v0
.end method

.method protected cq()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Landroid/support/transition/u;->start()V

    invoke-static {}, Landroid/support/transition/u;->cp()Landroid/support/v4/g/a;

    move-result-object v1

    iget-object v0, p0, Landroid/support/transition/u;->qG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/u;->start()V

    if-eqz v0, :cond_0

    new-instance v3, Landroid/support/transition/u$2;

    invoke-direct {v3, p0, v1}, Landroid/support/transition/u$2;-><init>(Landroid/support/transition/u;Landroid/support/v4/g/a;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/transition/u;->end()V

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Landroid/support/transition/u;->ug:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    iget-wide v4, p0, Landroid/support/transition/u;->ug:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_2
    iget-wide v4, p0, Landroid/support/transition/u;->uf:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    iget-wide v4, p0, Landroid/support/transition/u;->uf:J

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_3
    iget-object v3, p0, Landroid/support/transition/u;->uh:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/transition/u;->uh:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_4
    new-instance v3, Landroid/support/transition/u$3;

    invoke-direct {v3, p0}, Landroid/support/transition/u$3;-><init>(Landroid/support/transition/u;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/transition/u;->qG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/transition/u;->end()V

    return-void
.end method

.method public cr()Landroid/support/transition/u;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->qG:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/transition/aa;

    invoke-direct {v2}, Landroid/support/transition/aa;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    new-instance v2, Landroid/support/transition/aa;

    invoke-direct {v2}, Landroid/support/transition/aa;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/u;->uy:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/u;->uz:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public d(J)Landroid/support/transition/u;
    .locals 1

    iput-wide p1, p0, Landroid/support/transition/u;->uf:J

    return-object p0
.end method

.method d(Landroid/support/transition/z;)V
    .locals 4

    iget-object v0, p0, Landroid/support/transition/u;->uH:Landroid/support/transition/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->uH:Landroid/support/transition/x;

    invoke-virtual {v0}, Landroid/support/transition/x;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Landroid/support/transition/z;->values:Ljava/util/Map;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final end()V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/transition/u;->uD:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/u;->uD:I

    iget v0, p0, Landroid/support/transition/u;->uD:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->a(Landroid/support/transition/u;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->d(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->d(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/u;->uF:Z

    :cond_5
    return-void
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final k(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->uu:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->clear()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vd:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->ve:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->uv:Landroid/support/transition/aa;

    iget-object v0, v0, Landroid/support/transition/aa;->vf:Landroid/support/v4/g/f;

    invoke-virtual {v0}, Landroid/support/v4/g/f;->clear()V

    goto :goto_0
.end method

.method protected final start()V
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/transition/u;->uD:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1}, Landroid/support/transition/u$c;->co()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Landroid/support/transition/u;->uF:Z

    :cond_1
    iget v0, p0, Landroid/support/transition/u;->uD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/u;->uD:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->ug:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->ug:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-wide v2, p0, Landroid/support/transition/u;->uf:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->uf:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/transition/u;->uh:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/u;->uh:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :goto_1
    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    if-lez v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method final u(Landroid/view/View;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v0, p0, Landroid/support/transition/u;->um:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->um:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->un:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->un:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->uo:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/u;->uo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_3

    iget-object v0, p0, Landroid/support/transition/u;->uo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/transition/u;->uq:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->uq:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Landroid/support/transition/u;->uk:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->uk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroid/support/transition/u;->ui:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Landroid/support/transition/u;->uk:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->uk:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/r;->U(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->ul:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v3

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public v(Landroid/view/View;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public w(Landroid/view/View;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->uj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public x(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/transition/u;->uF:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/support/transition/u;->cp()Landroid/support/v4/g/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/g/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/al;->B(Landroid/view/View;)Landroid/support/transition/av;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u$a;

    iget-object v4, v0, Landroid/support/transition/u$a;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/transition/u$a;->uO:Landroid/support/transition/av;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/transition/a;->b(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1}, Landroid/support/transition/u$c;->cl()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/u;->uE:Z

    :cond_3
    return-void
.end method

.method public y(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/transition/u;->uE:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/transition/u;->uF:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/support/transition/u;->cp()Landroid/support/v4/g/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/g/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/al;->B(Landroid/view/View;)Landroid/support/transition/av;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u$a;

    iget-object v5, v0, Landroid/support/transition/u$a;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/transition/u$a;->uO:Landroid/support/transition/av;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/transition/a;->c(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->uG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1}, Landroid/support/transition/u$c;->cm()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Landroid/support/transition/u;->uE:Z

    :cond_3
    return-void
.end method
