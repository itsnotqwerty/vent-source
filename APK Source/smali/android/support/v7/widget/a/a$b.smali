.class final Landroid/support/v7/widget/a/a$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic aln:Landroid/support/v7/widget/a/a;

.field alw:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/a/a$b;->alw:Z

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/a/a$b;->alw:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a/a;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iget-object v2, v2, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->aB(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->ala:Landroid/support/v7/widget/a/a$a;

    iget-object v3, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iget-object v3, v3, Landroid/support/v7/widget/a/a;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$x;)I

    move-result v0

    const/high16 v3, 0xff0000

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iget v1, v1, Landroid/support/v7/widget/a/a;->jK:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iget v0, v0, Landroid/support/v7/widget/a/a;->jK:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iput v1, v3, Landroid/support/v7/widget/a/a;->akS:F

    iget-object v1, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iput v0, v1, Landroid/support/v7/widget/a/a;->akT:F

    iget-object v0, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    const/4 v3, 0x0

    iput v3, v1, Landroid/support/v7/widget/a/a;->akX:F

    iput v3, v0, Landroid/support/v7/widget/a/a;->akW:F

    invoke-static {}, Landroid/support/v7/widget/a/a$a;->ji()Z

    iget-object v0, p0, Landroid/support/v7/widget/a/a$b;->aln:Landroid/support/v7/widget/a/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/RecyclerView$x;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
