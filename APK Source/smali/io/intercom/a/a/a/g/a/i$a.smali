.class final Lio/intercom/a/a/a/g/a/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/g/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/g/a/i$a$a;
    }
.end annotation


# static fields
.field static cQE:Ljava/lang/Integer;


# instance fields
.field final cKz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/g/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private cQF:Z

.field cQG:Lio/intercom/a/a/a/g/a/i$a$a;

.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->cKz:Ljava/util/List;

    iput-object p1, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    return-void
.end method

.method static aQ(II)Z
    .locals 1

    invoke-static {p0}, Lio/intercom/a/a/a/g/a/i$a;->fq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/intercom/a/a/a/g/a/i$a;->fq(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fq(I)Z
    .locals 1

    if-gtz p0, :cond_0

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o(III)I
    .locals 2

    const/4 v1, 0x0

    sub-int v0, p2, p3

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/a/i$a;->cQF:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sub-int v0, p1, p3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x2

    if-ne p2, v0, :cond_5

    const-string v0, "ViewTarget"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ViewTarget"

    const-string v1, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/g/a/i$a;->cQE:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/g/a/i$a;->cQE:Ljava/lang/Integer;

    :cond_4
    sget-object v0, Lio/intercom/a/a/a/g/a/i$a;->cQE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final JI()V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lio/intercom/a/a/a/g/a/i$a;->JL()I

    move-result v1

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/a/i$a;->JK()I

    move-result v2

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/a/i$a;->aQ(II)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/intercom/a/a/a/g/a/i$a;->cKz:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/a/g;

    invoke-interface {v0, v1, v2}, Lio/intercom/a/a/a/g/a/g;->aP(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/intercom/a/a/a/g/a/i$a;->JJ()V

    goto :goto_0
.end method

.method final JJ()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/a/i$a;->cQG:Lio/intercom/a/a/a/g/a/i$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->cQG:Lio/intercom/a/a/a/g/a/i$a$a;

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method final JK()I
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v2, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lio/intercom/a/a/a/g/a/i$a;->o(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final JL()I
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v2, p0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lio/intercom/a/a/a/g/a/i$a;->o(III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
