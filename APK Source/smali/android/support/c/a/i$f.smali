.class final Landroid/support/c/a/i$f;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/c/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field qD:I

.field rM:Landroid/support/c/a/i$e;

.field rN:Landroid/content/res/ColorStateList;

.field rO:Landroid/graphics/PorterDuff$Mode;

.field rP:Z

.field rQ:Landroid/graphics/Bitmap;

.field rR:Landroid/content/res/ColorStateList;

.field rS:Landroid/graphics/PorterDuff$Mode;

.field rT:I

.field rU:Z

.field rV:Z

.field rW:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$f;->rN:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/support/c/a/i;->qO:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/c/a/i$f;->rO:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/support/c/a/i$e;

    invoke-direct {v0}, Landroid/support/c/a/i$e;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    return-void
.end method

.method public constructor <init>(Landroid/support/c/a/i$f;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/c/a/i$f;->rN:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/support/c/a/i;->qO:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/c/a/i$f;->rO:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget v0, p1, Landroid/support/c/a/i$f;->qD:I

    iput v0, p0, Landroid/support/c/a/i$f;->qD:I

    new-instance v0, Landroid/support/c/a/i$e;

    iget-object v1, p1, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    invoke-direct {v0, v1}, Landroid/support/c/a/i$e;-><init>(Landroid/support/c/a/i$e;)V

    iput-object v0, p0, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    iget-object v0, p1, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    invoke-static {v0}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    invoke-static {v2}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/c/a/i$e;->a(Landroid/support/c/a/i$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    invoke-static {v0}, Landroid/support/c/a/i$e;->b(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    invoke-static {v2}, Landroid/support/c/a/i$e;->b(Landroid/support/c/a/i$e;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Landroid/support/c/a/i$e;->b(Landroid/support/c/a/i$e;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, Landroid/support/c/a/i$f;->rN:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/c/a/i$f;->rN:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/support/c/a/i$f;->rO:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/c/a/i$f;->rO:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v0, p1, Landroid/support/c/a/i$f;->rP:Z

    iput-boolean v0, p0, Landroid/support/c/a/i$f;->rP:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroid/support/c/a/i$f;->qD:I

    return v0
.end method

.method public final j(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/i$f;->rQ:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/c/a/i$f;->rQ:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroid/support/c/a/i$f;->rM:Landroid/support/c/a/i$e;

    invoke-virtual {v1, v0, p1, p2}, Landroid/support/c/a/i$e;->a(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0, p0}, Landroid/support/c/a/i;-><init>(Landroid/support/c/a/i$f;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0, p0}, Landroid/support/c/a/i;-><init>(Landroid/support/c/a/i$f;)V

    return-object v0
.end method
