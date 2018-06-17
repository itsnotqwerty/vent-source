.class public final Landroid/support/v7/widget/v;
.super Landroid/widget/RadioButton;

# interfaces
.implements Landroid/support/v4/widget/p;


# instance fields
.field private final VN:Landroid/support/v7/widget/l;

.field private final mTextHelper:Landroid/support/v7/widget/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/a/a$a;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/bl;->n(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/support/v7/widget/l;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/l;-><init>(Landroid/widget/CompoundButton;)V

    iput-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/l;->a(Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/support/v7/widget/aa;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aa;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/v;->mTextHelper:Landroid/support/v7/widget/aa;

    iget-object v0, p0, Landroid/support/v7/widget/v;->mTextHelper:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/aa;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/l;->bi(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    iget-object v0, v0, Landroid/support/v7/widget/l;->VP:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    iget-object v0, v0, Landroid/support/v7/widget/l;->VQ:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/c/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/v;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->gf()V

    :cond_0
    return-void
.end method

.method public final setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/v;->VN:Landroid/support/v7/widget/l;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
