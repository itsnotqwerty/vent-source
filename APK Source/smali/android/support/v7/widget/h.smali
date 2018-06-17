.class final Landroid/support/v7/widget/h;
.super Ljava/lang/Object;


# instance fields
.field private final VI:Landroid/support/v7/widget/m;

.field private VJ:I

.field private VK:Landroid/support/v7/widget/bm;

.field private VL:Landroid/support/v7/widget/bm;

.field private VM:Landroid/support/v7/widget/bm;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/h;->VJ:I

    iput-object p1, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-static {}, Landroid/support/v7/widget/m;->gh()Landroid/support/v7/widget/m;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/h;->VI:Landroid/support/v7/widget/m;

    return-void
.end method

.method private d(Landroid/content/res/ColorStateList;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bm;

    invoke-direct {v0}, Landroid/support/v7/widget/bm;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    iput-object p1, v0, Landroid/support/v7/widget/bm;->ajP:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bm;->ajR:Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/h;->ge()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/util/AttributeSet;I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_android_background:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/bo;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/h;->VJ:I

    iget-object v0, p0, Landroid/support/v7/widget/h;->VI:Landroid/support/v7/widget/m;

    iget-object v2, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/h;->VJ:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/m;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/h;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    sget v2, Landroid/support/v7/a/a$j;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/am;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, v1, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method final bh(I)V
    .locals 2

    iput p1, p0, Landroid/support/v7/widget/h;->VJ:I

    iget-object v0, p0, Landroid/support/v7/widget/h;->VI:Landroid/support/v7/widget/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->VI:Landroid/support/v7/widget/m;

    iget-object v1, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/m;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/h;->d(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/h;->ge()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final gd()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/h;->VJ:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/h;->d(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/h;->ge()V

    return-void
.end method

.method final ge()V
    .locals 5

    const/16 v4, 0x15

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    if-eqz v2, :cond_6

    move v2, v1

    :goto_0
    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/h;->VM:Landroid/support/v7/widget/bm;

    if-nez v2, :cond_0

    new-instance v2, Landroid/support/v7/widget/bm;

    invoke-direct {v2}, Landroid/support/v7/widget/bm;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/h;->VM:Landroid/support/v7/widget/bm;

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/h;->VM:Landroid/support/v7/widget/bm;

    invoke-virtual {v2}, Landroid/support/v7/widget/bm;->clear()V

    iget-object v4, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/r;->aa(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_1

    iput-boolean v1, v2, Landroid/support/v7/widget/bm;->ajR:Z

    iput-object v4, v2, Landroid/support/v7/widget/bm;->ajP:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/r;->ab(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    if-eqz v4, :cond_2

    iput-boolean v1, v2, Landroid/support/v7/widget/bm;->ajQ:Z

    iput-object v4, v2, Landroid/support/v7/widget/bm;->rO:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v4, v2, Landroid/support/v7/widget/bm;->ajR:Z

    if-nez v4, :cond_3

    iget-boolean v4, v2, Landroid/support/v7/widget/bm;->ajQ:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {v3, v2, v0}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;[I)V

    move v0, v1

    :cond_4
    if-eqz v0, :cond_9

    :cond_5
    :goto_1
    return-void

    :cond_6
    move v2, v0

    goto :goto_0

    :cond_7
    if-ne v2, v4, :cond_8

    move v2, v1

    goto :goto_0

    :cond_8
    move v2, v0

    goto :goto_0

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    iget-object v1, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;[I)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/h;->VK:Landroid/support/v7/widget/bm;

    iget-object v1, p0, Landroid/support/v7/widget/h;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/support/v7/widget/m;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bm;[I)V

    goto :goto_1
.end method

.method final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    iget-object v0, v0, Landroid/support/v7/widget/bm;->ajP:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    iget-object v0, v0, Landroid/support/v7/widget/bm;->rO:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bm;

    invoke-direct {v0}, Landroid/support/v7/widget/bm;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    iput-object p1, v0, Landroid/support/v7/widget/bm;->ajP:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bm;->ajR:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/h;->ge()V

    return-void
.end method

.method final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bm;

    invoke-direct {v0}, Landroid/support/v7/widget/bm;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    iput-object p1, v0, Landroid/support/v7/widget/bm;->rO:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/h;->VL:Landroid/support/v7/widget/bm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/bm;->ajQ:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/h;->ge()V

    return-void
.end method
