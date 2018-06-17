.class final Landroid/support/v7/widget/l;
.super Ljava/lang/Object;


# instance fields
.field private final VO:Landroid/widget/CompoundButton;

.field VP:Landroid/content/res/ColorStateList;

.field VQ:Landroid/graphics/PorterDuff$Mode;

.field private VR:Z

.field private VS:Z

.field private VT:Z


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/l;->VP:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/v7/widget/l;->VQ:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->VR:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->VS:Z

    iput-object p1, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    return-void
.end method

.method private gg()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroid/support/v4/widget/e;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v7/widget/l;->VR:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/l;->VS:Z

    if-eqz v1, :cond_4

    :cond_0
    invoke-static {v0}, Landroid/support/v4/a/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/l;->VR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/l;->VP:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/l;->VS:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/l;->VQ:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/a/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method final a(Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/a/a$j;->CompoundButton:[I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    sget v0, Landroid/support/v7/a/a$j;->CompoundButton_android_button:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/support/v7/a/a$j;->CompoundButton_android_button:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    iget-object v3, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget v0, Landroid/support/v7/a/a$j;->CompoundButton_buttonTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    sget v2, Landroid/support/v7/a/a$j;->CompoundButton_buttonTint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/widget/e;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v0, Landroid/support/v7/a/a$j;->CompoundButton_buttonTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    sget v2, Landroid/support/v7/a/a$j;->CompoundButton_buttonTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/am;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/widget/e;->a(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method final bi(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/l;->VO:Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroid/support/v4/widget/e;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method final gf()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/l;->VT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->VT:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->VT:Z

    invoke-direct {p0}, Landroid/support/v7/widget/l;->gg()V

    goto :goto_0
.end method

.method final setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/l;->VP:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->VR:Z

    invoke-direct {p0}, Landroid/support/v7/widget/l;->gg()V

    return-void
.end method

.method final setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/l;->VQ:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->VS:Z

    invoke-direct {p0}, Landroid/support/v7/widget/l;->gg()V

    return-void
.end method
