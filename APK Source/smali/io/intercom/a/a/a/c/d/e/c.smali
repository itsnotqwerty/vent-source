.class public Lio/intercom/a/a/a/c/d/e/c;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lio/intercom/a/a/a/c/d/e/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/e/c$a;
    }
.end annotation


# instance fields
.field private cHi:I

.field cKL:Z

.field private cOA:Z

.field private cOB:Z

.field private cOC:I

.field private cOD:Z

.field private cOE:Landroid/graphics/Rect;

.field final cOy:Lio/intercom/a/a/a/c/d/e/c$a;

.field private cOz:Z

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/intercom/a/a/a/b/a;Lio/intercom/a/a/a/c/m;IILandroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/a/a/a/b/a;",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    new-instance v7, Lio/intercom/a/a/a/c/d/e/c$a;

    new-instance v0, Lio/intercom/a/a/a/c/d/e/g;

    invoke-static {p1}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/intercom/a/a/a/c/d/e/g;-><init>(Lio/intercom/a/a/a/c;Lio/intercom/a/a/a/b/a;IILio/intercom/a/a/a/c/m;Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v0}, Lio/intercom/a/a/a/c/d/e/c$a;-><init>(Lio/intercom/a/a/a/c/d/e/g;)V

    invoke-direct {p0, v7}, Lio/intercom/a/a/a/c/d/e/c;-><init>(Lio/intercom/a/a/a/c/d/e/c$a;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/a/a/a/c/d/e/c$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOB:Z

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOC:I

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/d/e/c$a;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    return-void
.end method

.method private Jk()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cKL:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v3}, Lio/intercom/a/a/a/i/h;->b(ZLjava/lang/String;)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->getFrameCount()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOz:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lio/intercom/a/a/a/c/d/e/c;->cOz:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    iget-boolean v3, v0, Lio/intercom/a/a/a/c/d/e/g;->cOM:Z

    if-eqz v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    iget-object v4, v0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe twice in a row"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v4, v0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lio/intercom/a/a/a/c/d/e/g;->cOz:Z

    if-nez v3, :cond_3

    iput-boolean v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOz:Z

    iput-boolean v2, v0, Lio/intercom/a/a/a/c/d/e/g;->cOM:Z

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jp()V

    :cond_3
    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method private Jl()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/intercom/a/a/a/c/d/e/c;->cOz:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lio/intercom/a/a/a/c/d/e/g;->cOz:Z

    :cond_0
    return-void
.end method

.method private Jm()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOE:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOE:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOE:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->paint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->paint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public final Jj()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/g;->cOO:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final Jn()V
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->stop()V

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->invalidateSelf()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->invalidateSelf()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    iget-object v2, v0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    iget v0, v0, Lio/intercom/a/a/a/c/d/e/g$a;->index:I

    :goto_2
    iget-object v2, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v2, v2, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    invoke-virtual {v2}, Lio/intercom/a/a/a/c/d/e/g;->getFrameCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cHi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cHi:I

    :cond_3
    iget v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOC:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cHi:I

    iget v1, p0, Lio/intercom/a/a/a/c/d/e/c;->cOC:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->stop()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cKL:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOD:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->Jm()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOD:Z

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jo()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->Jm()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v0}, Lio/intercom/a/a/a/b/a;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jo()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOy:Lio/intercom/a/a/a/c/d/e/c$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/c$a;->cOF:Lio/intercom/a/a/a/c/d/e/g;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/d/e/g;->Jo()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOz:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOD:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cKL:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->b(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lio/intercom/a/a/a/c/d/e/c;->cOB:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->Jl()V

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOA:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->Jk()V

    goto :goto_1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOA:Z

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cHi:I

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOB:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->Jk()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/c;->cOA:Z

    invoke-direct {p0}, Lio/intercom/a/a/a/c/d/e/c;->Jl()V

    return-void
.end method
