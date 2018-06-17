.class public abstract Landroid/support/v7/widget/RecyclerView$t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$t$b;,
        Landroid/support/v7/widget/RecyclerView$t$a;
    }
.end annotation


# instance fields
.field YZ:Landroid/support/v7/widget/RecyclerView;

.field adr:Landroid/support/v7/widget/RecyclerView$i;

.field afJ:I

.field afK:Z

.field afL:Z

.field afM:Landroid/view/View;

.field private final afN:Landroid/support/v7/widget/RecyclerView$t$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    new-instance v0, Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$t$a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->afN:Landroid/support/v7/widget/RecyclerView$t$a;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$t;II)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->stop()V

    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->afK:Z

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afM:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afM:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->aP(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afM:Landroid/view/View;

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$t;->afN:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/RecyclerView$t;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t$a;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afN:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$t$a;->f(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->stop()V

    :cond_2
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afN:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {p0, p1, p2, v3}, Landroid/support/v7/widget/RecyclerView$t;->a(IILandroid/support/v7/widget/RecyclerView$t$a;)V

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afN:Landroid/support/v7/widget/RecyclerView$t$a;

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$t$a;->afQ:I

    if-ltz v3, :cond_3

    move v0, v1

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afN:Landroid/support/v7/widget/RecyclerView$t$a;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView$t$a;->f(Landroid/support/v7/widget/RecyclerView;)V

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$t;->afK:Z

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->aeB:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->is()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string v3, "RecyclerView"

    const-string v4, "Passed over target position while smooth scrolling."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afM:Landroid/view/View;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->stop()V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(IILandroid/support/v7/widget/RecyclerView$t$a;)V
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$t$a;)V
.end method

.method protected abstract onStop()V
.end method

.method protected final stop()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$t;->onStop()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$u;->afJ:I

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->afM:Landroid/view/View;

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$t;->afK:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->adr:Landroid/support/v7/widget/RecyclerView$i;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$i;Landroid/support/v7/widget/RecyclerView$t;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method
