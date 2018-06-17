.class final Landroid/support/v4/app/o$i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field final yp:Z

.field final yq:Landroid/support/v4/app/c;

.field yr:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/support/v4/app/o$i;->yp:Z

    iput-object p1, p0, Landroid/support/v4/app/o$i;->yq:Landroid/support/v4/app/c;

    return-void
.end method


# virtual methods
.method public final cD()V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o$i;->yr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/o$i;->yr:I

    iget v0, p0, Landroid/support/v4/app/o$i;->yr:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/o$i;->yq:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    invoke-static {v0}, Landroid/support/v4/app/o;->b(Landroid/support/v4/app/o;)V

    goto :goto_0
.end method

.method public final cS()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v4/app/o$i;->yr:I

    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/o$i;->yq:Landroid/support/v4/app/c;

    iget-object v5, v0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v0, v5, Landroid/support/v4/app/o;->xx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_2

    iget-object v0, v5, Landroid/support/v4/app/o;->xx:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/i;->setOnStartEnterTransitionListener(Landroid/support/v4/app/i$c;)V

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->startPostponedEnterTransition()V

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/o$i;->yq:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v4, p0, Landroid/support/v4/app/o$i;->yq:Landroid/support/v4/app/c;

    iget-boolean v5, p0, Landroid/support/v4/app/o$i;->yp:Z

    if-nez v1, :cond_3

    move v3, v2

    :cond_3
    invoke-static {v0, v4, v5, v3, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/o;Landroid/support/v4/app/c;ZZZ)V

    return-void
.end method

.method public final cT()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/o$i;->yq:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->wj:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/o$i;->yq:Landroid/support/v4/app/c;

    iget-boolean v2, p0, Landroid/support/v4/app/o$i;->yp:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/o;Landroid/support/v4/app/c;ZZZ)V

    return-void
.end method

.method public final startListening()V
    .locals 1

    iget v0, p0, Landroid/support/v4/app/o$i;->yr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/o$i;->yr:I

    return-void
.end method
