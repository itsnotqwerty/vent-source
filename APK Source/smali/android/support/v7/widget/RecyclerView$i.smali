.class public abstract Landroid/support/v7/widget/RecyclerView$i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$i$b;,
        Landroid/support/v7/widget/RecyclerView$i$a;
    }
.end annotation


# instance fields
.field YZ:Landroid/support/v7/widget/RecyclerView;

.field adK:Landroid/support/v7/widget/ai;

.field private final afb:Landroid/support/v7/widget/bu$b;

.field private final afc:Landroid/support/v7/widget/bu$b;

.field afd:Landroid/support/v7/widget/bu;

.field afe:Landroid/support/v7/widget/bu;

.field aff:Landroid/support/v7/widget/RecyclerView$t;

.field public afg:Z

.field afh:Z

.field afi:Z

.field afj:Z

.field afk:I

.field afl:Z

.field afm:I

.field afn:I

.field db:I

.field dc:I

.field lH:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/widget/RecyclerView$i$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$i$1;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afb:Landroid/support/v7/widget/bu$b;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$i$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$i$2;-><init>(Landroid/support/v7/widget/RecyclerView$i;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afc:Landroid/support/v7/widget/bu$b;

    new-instance v0, Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->afb:Landroid/support/v7/widget/bu$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/bu;-><init>(Landroid/support/v7/widget/bu$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afd:Landroid/support/v7/widget/bu;

    new-instance v0, Landroid/support/v7/widget/bu;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->afc:Landroid/support/v7/widget/bu$b;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/bu;-><init>(Landroid/support/v7/widget/bu$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afe:Landroid/support/v7/widget/bu;

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$i;->afg:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$i;->lH:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$i;->afh:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$i;->afi:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$i;->afj:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$i$b;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v7/widget/RecyclerView$i$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$i$b;-><init>()V

    sget-object v1, Landroid/support/v7/f/a$c;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/f/a$c;->RecyclerView_android_orientation:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->orientation:I

    sget v2, Landroid/support/v7/f/a$c;->RecyclerView_spanCount:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->spanCount:I

    sget v2, Landroid/support/v7/f/a$c;->RecyclerView_reverseLayout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->afp:Z

    sget v2, Landroid/support/v7/f/a$c;->RecyclerView_stackFromEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$i$b;->afq:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$i;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    :cond_0
    return-void
.end method

.method public static aT(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->afr:Landroid/support/v7/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public static aU(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static aV(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static aW(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    return v0
.end method

.method public static aX(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method

.method public static aY(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static aZ(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IIIIZ)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    sub-int v0, p0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p4, :cond_4

    if-ltz p3, :cond_1

    move p1, v2

    move v0, p3

    :cond_0
    :goto_0
    :sswitch_0
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    if-ne p3, v5, :cond_2

    sparse-switch p1, :sswitch_data_0

    :sswitch_1
    move p1, v1

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p3, v4, :cond_7

    move v0, v1

    :cond_3
    move p1, v1

    goto :goto_0

    :cond_4
    if-ltz p3, :cond_5

    move p1, v2

    move v0, p3

    goto :goto_0

    :cond_5
    if-eq p3, v5, :cond_0

    if-ne p3, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_3

    :cond_6
    move p1, v3

    goto :goto_0

    :cond_7
    move p1, v1

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private bG(I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->detachViewFromParent(I)V

    return-void
.end method

.method public static g(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static h(Landroid/view/View;IIII)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$j;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$j;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$j;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$j;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method static h(III)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-lt v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    if-ne v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private removeViewAt(I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->bk(I)I

    move-result v1

    iget-object v2, v0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/ai$b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ai$a;->bm(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ai;->az(Landroid/view/View;)Z

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ai$b;->removeViewAt(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public I(II)V
    .locals 0

    return-void
.end method

.method public J(II)V
    .locals 0

    return-void
.end method

.method public K(II)V
    .locals 0

    return-void
.end method

.method public L(II)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IILandroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/support/v7/widget/RecyclerView$i$a;)V
    .locals 0

    return-void
.end method

.method public final a(ILandroid/support/v7/widget/RecyclerView$p;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->removeViewAt(I)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$p;->bd(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->Q(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v0, v2}, Landroid/support/v7/widget/RecyclerView$i;->g(III)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/r;->R(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v1, v2}, Landroid/support/v7/widget/RecyclerView$i;->g(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->setMeasuredDimension(II)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$i;->aT(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Landroid/support/v7/widget/RecyclerView$i;->aT(Landroid/view/View;)I

    move-result v2

    :goto_1
    invoke-static {v0, v3, v2, v3, v1}, Landroid/support/v4/view/a/a$b;->a(IIIIZ)Landroid/support/v4/view/a/a$b;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->G(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->stop()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    iput-object p0, v0, Landroid/support/v7/widget/RecyclerView$t;->adr:Landroid/support/v7/widget/RecyclerView$i;

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$u;->afJ:I

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$t;->afK:Z

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$i;->by(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$t;->afM:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$t;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->aeB:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->is()V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    iget-object v1, v0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/ai$b;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/ai;->XA:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai$a;->bm(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->az(Landroid/view/View;)Z

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/ai;->Xz:Landroid/support/v7/widget/ai$b;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ai$b;->removeViewAt(I)V

    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$p;->bd(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$j;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 14

    const/4 v1, 0x2

    new-array v4, v1, [I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingTop()I

    move-result v6

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v2

    sub-int v7, v1, v2

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v9, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v10, v1, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v11, v9, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v12, v10, v1

    const/4 v1, 0x0

    sub-int v2, v9, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    sub-int v3, v10, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v1, 0x0

    sub-int v13, v11, v7

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v13, 0x0

    sub-int v8, v12, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v12, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    if-eqz v1, :cond_3

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v3, :cond_6

    move v1, v3

    :goto_2
    const/4 v3, 0x0

    aput v2, v4, v3

    const/4 v2, 0x1

    aput v1, v4, v2

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_f

    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_f

    :cond_1
    if-eqz p4, :cond_a

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_2
    :goto_4
    const/4 v1, 0x1

    :goto_5
    return v1

    :cond_3
    sub-int v1, v11, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    move v1, v2

    :goto_6
    move v2, v1

    goto :goto_1

    :cond_5
    sub-int v2, v9, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_6
    sub-int v1, v10, v6

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingTop()I

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->Gl:Landroid/graphics/Rect;

    invoke-static {v3, v8}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v3, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    if-ge v3, v6, :cond_8

    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v3, v4, :cond_8

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    if-ge v3, v7, :cond_8

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    if-gt v3, v5, :cond_9

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    if-nez v3, :cond_b

    const-string v1, "RecyclerView"

    const-string v2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    iget-boolean v3, p1, Landroid/support/v7/widget/RecyclerView;->aeb:Z

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v1, 0x0

    :cond_c
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$i;->hh()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v2, 0x0

    :cond_d
    if-nez v1, :cond_e

    if-eqz v2, :cond_2

    :cond_e
    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView;->aeB:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/RecyclerView$w;->ah(II)I

    move-result v4

    sget-object v5, Landroid/support/v7/widget/RecyclerView;->aeS:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/support/v7/widget/RecyclerView$w;->b(IIILandroid/view/animation/Interpolator;)V

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_5
.end method

.method final a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$j;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afi:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$j;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/RecyclerView$i;->h(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$j;->height:I

    invoke-static {v0, p3, v1}, Landroid/support/v7/widget/RecyclerView$i;->h(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aM(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->aM(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai;->aA(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method final ae(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->adA:Z

    if-nez v0, :cond_0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->adA:Z

    if-nez v0, :cond_1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    :cond_1
    return-void
.end method

.method final af(II)V
    .locals 8

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->Y(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    move v3, v5

    move v1, v5

    move v2, v6

    move v0, v6

    :goto_1
    if-ge v4, v7, :cond_5

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->Gl:Landroid/graphics/Rect;

    invoke-static {v5, v6}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v5, v6, Landroid/graphics/Rect;->left:I

    if-ge v5, v0, :cond_1

    iget v0, v6, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v5, v6, Landroid/graphics/Rect;->right:I

    if-le v5, v1, :cond_2

    iget v1, v6, Landroid/graphics/Rect;->right:I

    :cond_2
    iget v5, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v2, :cond_3

    iget v2, v6, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_4

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->Gl:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->Gl:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public final ag(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->Y(II)V

    return-void
.end method

.method public b(ILandroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->hg()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$i;->removeViewAt(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$p;->o(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$i;->bG(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$p;->bf(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adL:Landroid/support/v7/widget/bv;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bv;->s(Landroid/support/v7/widget/RecyclerView$x;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->lH:Z

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$p;)V

    return-void
.end method

.method final b(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ai;->aA(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    :cond_0
    return-void
.end method

.method public bA(I)V
    .locals 0

    return-void
.end method

.method public bH(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bI(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ai;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bJ(I)V
    .locals 0

    return-void
.end method

.method public by(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$u;->afZ:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final c(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$x;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$x;->isTmpDetached()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->aep:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/RecyclerView$f;->c(Landroid/support/v7/widget/RecyclerView$x;)V

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$x;->setIsRecyclable(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$p;->be(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$p;->afA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$p;->afB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$p;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method final c(Landroid/view/View;IZ)V
    .locals 8

    const/4 v4, -0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v2

    if-nez p3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adL:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bv;->r(Landroid/support/v7/widget/RecyclerView$x;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->wasReturnedFromScrap()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->unScrap()V

    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v7}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_2
    :goto_2
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$j;->aft:Z

    if-eqz v1, :cond_3

    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$x;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iput-boolean v7, v0, Landroid/support/v7/widget/RecyclerView$j;->aft:Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adL:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bv;->s(Landroid/support/v7/widget/RecyclerView$x;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$x;->clearReturnedFromScrapFlag()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ai;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne p2, v4, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v3}, Landroid/support/v7/widget/ai;->getChildCount()I

    move-result p2

    :cond_7
    if-ne v1, v4, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->hC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eq v1, p2, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->adQ:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot move a child from non-existing index:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct {v3, v1}, Landroid/support/v7/widget/RecyclerView$i;->bG(I)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$j;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v3, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->adL:Landroid/support/v7/widget/bv;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/bv;->r(Landroid/support/v7/widget/RecyclerView$x;)V

    :goto_3
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$x;->isRemoved()Z

    move-result v5

    invoke-virtual {v3, v4, p2, v1, v5}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_2

    :cond_a
    iget-object v6, v3, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->adL:Landroid/support/v7/widget/bv;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/bv;->s(Landroid/support/v7/widget/RecyclerView$x;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, p1, p2, v7}, Landroid/support/v7/widget/ai;->a(Landroid/view/View;IZ)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$j;->afs:Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->aP(Landroid/view/View;)I

    move-result v3

    iget v4, v1, Landroid/support/v7/widget/RecyclerView$t;->afJ:I

    if-ne v3, v4, :cond_2

    iput-object p1, v1, Landroid/support/v7/widget/RecyclerView$t;->afM:Landroid/view/View;

    goto/16 :goto_2
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$j;
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/support/v7/widget/RecyclerView$j;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$i;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->aN(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$x;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$x;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(ILandroid/support/v7/widget/RecyclerView$p;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final d(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    :goto_0
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->afm:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$i;->afn:I

    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->adK:Landroid/support/v7/widget/ai;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->db:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$i;->dc:I

    goto :goto_0
.end method

.method public e(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->ae(II)V

    return-void
.end method

.method public final e(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$j;->abA:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adO:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->aQ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ai;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v0}, Landroid/support/v7/widget/ai;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFocusedChild()Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->adK:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai;->aA(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ha()V
    .locals 0

    return-void
.end method

.method public abstract hb()Landroid/support/v7/widget/RecyclerView$j;
.end method

.method public he()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hf()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->afh:Z

    return v0
.end method

.method public hg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method hl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ii()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$t;->afL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final ij()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->aff:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->stop()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->adH:Landroid/support/v7/widget/RecyclerView$p;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->aeE:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->adP:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final requestLayout()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->YZ:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method
