.class final Landroid/support/v7/widget/y;
.super Landroid/support/v7/widget/u;


# instance fields
.field final Wt:Landroid/widget/SeekBar;

.field Wu:Landroid/graphics/drawable/Drawable;

.field private Wv:Landroid/content/res/ColorStateList;

.field private Ww:Landroid/graphics/PorterDuff$Mode;

.field private Wx:Z

.field private Wy:Z


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/u;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v1, p0, Landroid/support/v7/widget/y;->Wv:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/v7/widget/y;->Ww:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Wx:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/y;->Wy:Z

    iput-object p1, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    return-void
.end method

.method private gj()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Wx:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Wy:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Wx:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/y;->Wv:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/y;->Wy:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/y;->Ww:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method


# virtual methods
.method final a(Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/u;->a(Landroid/util/AttributeSet;I)V

    iget-object v0, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->AppCompatSeekBar:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/bo;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$j;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->ch(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v1, Landroid/support/v7/a/a$j;->AppCompatSeekBar_tickMark:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v1, p0, Landroid/support/v7/widget/y;->Wu:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    invoke-static {v2}, Landroid/support/v4/view/r;->K(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/a/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/y;->gj()V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/y;->Wt:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->invalidate()V

    sget v1, Landroid/support/v7/a/a$j;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Landroid/support/v7/a/a$j;->AppCompatSeekBar_tickMarkTintMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/bo;->getInt(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/y;->Ww:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v7/widget/am;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/y;->Ww:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, p0, Landroid/support/v7/widget/y;->Wy:Z

    :cond_4
    sget v1, Landroid/support/v7/a/a$j;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Landroid/support/v7/a/a$j;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/y;->Wv:Landroid/content/res/ColorStateList;

    iput-boolean v4, p0, Landroid/support/v7/widget/y;->Wx:Z

    :cond_5
    iget-object v0, v0, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/support/v7/widget/y;->gj()V

    return-void
.end method
