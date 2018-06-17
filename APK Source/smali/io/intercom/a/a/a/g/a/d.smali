.class public abstract Lio/intercom/a/a/a/g/a/d;
.super Lio/intercom/a/a/a/g/a/i;

# interfaces
.implements Lio/intercom/a/a/a/g/b/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/a/a/g/a/i",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lio/intercom/a/a/a/g/b/d$a;"
    }
.end annotation


# instance fields
.field private cQx:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/g/a/i;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private aA(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/intercom/a/a/a/g/a/d;->az(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/g/a/d;->aB(Ljava/lang/Object;)V

    return-void
.end method

.method private aB(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    goto :goto_0
.end method


# virtual methods
.method public final JH()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract az(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/a/a/a/g/a/i;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/a/d;->aA(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/intercom/a/a/a/g/a/d;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/a/a/a/g/a/i;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/a/d;->aA(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/intercom/a/a/a/g/a/d;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Lio/intercom/a/a/a/g/a/i;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/a/d;->aA(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/intercom/a/a/a/g/a/d;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lio/intercom/a/a/a/g/b/d",
            "<-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lio/intercom/a/a/a/g/b/d;->a(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d$a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lio/intercom/a/a/a/g/a/d;->aA(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lio/intercom/a/a/a/g/a/d;->aB(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->cQx:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public final setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/d;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
