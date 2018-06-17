.class final Landroid/support/v7/widget/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ar$a;,
        Landroid/support/v7/widget/ar$b;
    }
.end annotation


# static fields
.field static final Zt:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v7/widget/ar;",
            ">;"
        }
    .end annotation
.end field

.field static Zy:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v7/widget/ar$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Zu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field Zv:J

.field Zw:J

.field private Zx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ar$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ar;->Zt:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/support/v7/widget/ar$1;

    invoke-direct {v0}, Landroid/support/v7/widget/ar$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ar;->Zy:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->Zu:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$x;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->gw()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai;->bl(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v3

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$x;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hP()V

    invoke-virtual {v2, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$p;->c(IJ)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isBound()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$p;->bd(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->ab(Z)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView$x;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->ab(Z)V

    throw v0
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/support/v7/widget/ar;->Zv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v7/widget/ar;->Zv:J

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    iput p2, v0, Landroid/support/v7/widget/ar$a;->Zz:I

    iput p3, v0, Landroid/support/v7/widget/ar$a;->ZA:I

    return-void
.end method

.method public final run()V
    .locals 14

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroid/support/v4/d/d;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/v7/widget/ar;->Zv:J

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v7, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zu:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/v7/widget/ar;->Zv:J

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroid/support/v7/widget/ar;->Zw:J

    add-long v6, v2, v4

    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v10, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zu:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/support/v7/widget/ar$a;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    iget v2, v2, Landroid/support/v7/widget/ar$a;->bn:I

    add-int/2addr v2, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v9, v2

    :goto_5
    if-ge v9, v10, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zu:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v4

    if-nez v4, :cond_d

    iget-object v11, v2, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    iget v4, v11, Landroid/support/v7/widget/ar$a;->Zz:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v11, Landroid/support/v7/widget/ar$a;->ZA:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v12, v4, v5

    const/4 v5, 0x0

    move v8, v5

    move v4, v3

    :goto_6
    iget v3, v11, Landroid/support/v7/widget/ar$a;->bn:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v8, v3, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v4, v3, :cond_4

    new-instance v3, Landroid/support/v7/widget/ar$b;

    invoke-direct {v3}, Landroid/support/v7/widget/ar$b;-><init>()V

    iget-object v5, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    :goto_7
    iget-object v3, v11, Landroid/support/v7/widget/ar$a;->ZB:[I

    add-int/lit8 v13, v8, 0x1

    aget v13, v3, v13

    if-gt v13, v12, :cond_5

    const/4 v3, 0x1

    :goto_8
    iput-boolean v3, v5, Landroid/support/v7/widget/ar$b;->ZC:Z

    iput v12, v5, Landroid/support/v7/widget/ar$b;->ZD:I

    iput v13, v5, Landroid/support/v7/widget/ar$b;->ZE:I

    iput-object v2, v5, Landroid/support/v7/widget/ar$b;->ZF:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v11, Landroid/support/v7/widget/ar$a;->ZB:[I

    aget v3, v3, v8

    iput v3, v5, Landroid/support/v7/widget/ar$b;->position:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v8, 0x2

    move v8, v3

    goto :goto_6

    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/ar$b;

    move-object v5, v3

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    goto :goto_8

    :cond_6
    move v2, v4

    :goto_9
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v3, v2

    goto :goto_5

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    sget-object v3, Landroid/support/v7/widget/ar;->Zy:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v8, v2

    :goto_a
    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_c

    iget-object v2, p0, Landroid/support/v7/widget/ar;->Zx:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v7/widget/ar$b;

    move-object v3, v0

    iget-object v2, v3, Landroid/support/v7/widget/ar$b;->ZF:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_c

    iget-boolean v2, v3, Landroid/support/v7/widget/ar$b;->ZC:Z

    if-eqz v2, :cond_9

    const-wide v4, 0x7fffffffffffffffL

    :goto_b
    iget-object v2, v3, Landroid/support/v7/widget/ar$b;->ZF:Landroid/support/v7/widget/RecyclerView;

    iget v9, v3, Landroid/support/v7/widget/ar$b;->position:I

    invoke-static {v2, v9, v4, v5}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$x;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isBound()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$x;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_b

    iget-boolean v4, v2, Landroid/support/v7/widget/RecyclerView;->aeg:Z

    if-eqz v4, :cond_8

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v4}, Landroid/support/v7/widget/ai;->gw()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hD()V

    :cond_8
    iget-object v5, v2, Landroid/support/v7/widget/RecyclerView;->aeD:Landroid/support/v7/widget/ar$a;

    const/4 v4, 0x1

    invoke-virtual {v5, v2, v4}, Landroid/support/v7/widget/ar$a;->a(Landroid/support/v7/widget/RecyclerView;Z)V

    iget v4, v5, Landroid/support/v7/widget/ar$a;->bn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_b

    :try_start_3
    const-string v4, "RV Nested Prefetch"

    invoke-static {v4}, Landroid/support/v4/d/d;->beginSection(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v9, v2, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    const/4 v10, 0x1

    iput v10, v4, Landroid/support/v7/widget/RecyclerView$u;->afW:I

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v9

    iput v9, v4, Landroid/support/v7/widget/RecyclerView$u;->afX:I

    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/support/v7/widget/RecyclerView$u;->aga:Z

    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/support/v7/widget/RecyclerView$u;->agb:Z

    const/4 v4, 0x0

    :goto_c
    iget v9, v5, Landroid/support/v7/widget/ar$a;->bn:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v4, v9, :cond_a

    iget-object v9, v5, Landroid/support/v7/widget/ar$a;->ZB:[I

    aget v9, v9, v4

    invoke-static {v2, v9, v6, v7}, Landroid/support/v7/widget/ar;->a(Landroid/support/v7/widget/RecyclerView;IJ)Landroid/support/v7/widget/RecyclerView$x;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x2

    goto :goto_c

    :cond_9
    move-wide v4, v6

    goto :goto_b

    :cond_a
    :try_start_4
    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, v3, Landroid/support/v7/widget/ar$b;->ZC:Z

    const/4 v2, 0x0

    iput v2, v3, Landroid/support/v7/widget/ar$b;->ZD:I

    const/4 v2, 0x0

    iput v2, v3, Landroid/support/v7/widget/ar$b;->ZE:I

    const/4 v2, 0x0

    iput-object v2, v3, Landroid/support/v7/widget/ar$b;->ZF:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    iput v2, v3, Landroid/support/v7/widget/ar$b;->position:I

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_a

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/support/v7/widget/ar;->Zv:J

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    throw v2

    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/support/v7/widget/ar;->Zv:J

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto/16 :goto_9

    :cond_e
    move v2, v3

    goto/16 :goto_4

    :cond_f
    move-wide v2, v4

    goto/16 :goto_2
.end method
