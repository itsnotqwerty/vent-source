.class public abstract Lio/intercom/a/a/a/g/a/i;
.super Lio/intercom/a/a/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/g/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/a/a/g/a/a",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static cQy:Z

.field private static cQz:Ljava/lang/Integer;


# instance fields
.field private final cQA:Lio/intercom/a/a/a/g/a/i$a;

.field private cQB:Landroid/view/View$OnAttachStateChangeListener;

.field private cQC:Z

.field private cQD:Z

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lio/intercom/a/a/a/g/a/i;->cQy:Z

    const/4 v0, 0x0

    sput-object v0, Lio/intercom/a/a/a/g/a/i;->cQz:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/a/a/g/a/a;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    new-instance v0, Lio/intercom/a/a/a/g/a/i$a;

    invoke-direct {v0, p1}, Lio/intercom/a/a/a/g/a/i$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lio/intercom/a/a/a/g/a/i;->cQA:Lio/intercom/a/a/a/g/a/i$a;

    return-void
.end method


# virtual methods
.method public getRequest()Lio/intercom/a/a/a/g/c;
    .locals 2

    sget-object v0, Lio/intercom/a/a/a/g/a/i;->cQz:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lio/intercom/a/a/a/g/c;

    if-eqz v1, :cond_1

    check-cast v0, Lio/intercom/a/a/a/g/c;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    sget-object v1, Lio/intercom/a/a/a/g/a/i;->cQz:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getSize(Lio/intercom/a/a/a/g/a/g;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->cQA:Lio/intercom/a/a/a/g/a/i$a;

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/a/i$a;->JL()I

    move-result v1

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/a/i$a;->JK()I

    move-result v2

    invoke-static {v1, v2}, Lio/intercom/a/a/a/g/a/i$a;->aQ(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1, v2}, Lio/intercom/a/a/a/g/a/g;->aP(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lio/intercom/a/a/a/g/a/i$a;->cKz:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lio/intercom/a/a/a/g/a/i$a;->cKz:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, v0, Lio/intercom/a/a/a/g/a/i$a;->cQG:Lio/intercom/a/a/a/g/a/i$a$a;

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/intercom/a/a/a/g/a/i$a;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lio/intercom/a/a/a/g/a/i$a$a;

    invoke-direct {v2, v0}, Lio/intercom/a/a/a/g/a/i$a$a;-><init>(Lio/intercom/a/a/a/g/a/i$a;)V

    iput-object v2, v0, Lio/intercom/a/a/a/g/a/i$a;->cQG:Lio/intercom/a/a/a/g/a/i$a$a;

    iget-object v0, v0, Lio/intercom/a/a/a/g/a/i$a;->cQG:Lio/intercom/a/a/a/g/a/i$a$a;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Lio/intercom/a/a/a/g/a/a;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->cQA:Lio/intercom/a/a/a/g/a/i$a;

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/a/i$a;->JJ()V

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/a/i;->cQC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->cQB:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/a/i;->cQD:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    iget-object v1, p0, Lio/intercom/a/a/a/g/a/i;->cQB:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/a/i;->cQD:Z

    goto :goto_0
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Lio/intercom/a/a/a/g/a/a;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->cQB:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/a/i;->cQD:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    iget-object v1, p0, Lio/intercom/a/a/a/g/a/i;->cQB:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/a/i;->cQD:Z

    goto :goto_0
.end method

.method public removeCallback(Lio/intercom/a/a/a/g/a/g;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->cQA:Lio/intercom/a/a/a/g/a/i$a;

    iget-object v0, v0, Lio/intercom/a/a/a/g/a/i$a;->cKz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRequest(Lio/intercom/a/a/a/g/c;)V
    .locals 2

    sget-object v0, Lio/intercom/a/a/a/g/a/i;->cQz:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lio/intercom/a/a/a/g/a/i;->cQy:Z

    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    sget-object v1, Lio/intercom/a/a/a/g/a/i;->cQz:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/g/a/i;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
