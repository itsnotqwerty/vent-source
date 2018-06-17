.class public final Lcom/vent/c/i;
.super Lcom/vent/c/b;


# instance fields
.field private final bUM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;"
        }
    .end annotation
.end field

.field private final bXE:Lcom/vent/a/x;

.field private final caZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<*>;"
        }
    .end annotation
.end field

.field private final cmA:Z

.field private final color:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lcom/vent/a/x;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<*>;",
            "Lcom/vent/a/x;",
            "IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_0

    const-string v0, "roboto-medium"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vent/c/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vent/c/i;->bUM:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vent/c/i;->caZ:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/vent/c/i;->bXE:Lcom/vent/a/x;

    iput p4, p0, Lcom/vent/c/i;->color:I

    iput-boolean p5, p0, Lcom/vent/c/i;->cmA:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic Fx()Landroid/text/style/CharacterStyle;
    .locals 6

    new-instance v0, Lcom/vent/c/i;

    iget-object v1, p0, Lcom/vent/c/i;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/vent/c/i;->caZ:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/vent/c/i;->bXE:Lcom/vent/a/x;

    iget v4, p0, Lcom/vent/c/i;->color:I

    iget-boolean v5, p0, Lcom/vent/c/i;->cmA:Z

    invoke-direct/range {v0 .. v5}, Lcom/vent/c/i;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Lcom/vent/a/x;IZ)V

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vent/c/i;->bUM:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/c/i;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/c/i;->caZ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vent/c/i;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/i;

    :goto_1
    iget-object v3, p0, Lcom/vent/c/i;->bXE:Lcom/vent/a/x;

    invoke-static {v0, v1, v3, v2}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/c/b;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget v0, p0, Lcom/vent/c/i;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
