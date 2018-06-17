.class public final Lcom/vent/c/e;
.super Landroid/text/style/ClickableSpan;

# interfaces
.implements Lcom/vent/c/h$a;


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

.field private final caZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<*>;"
        }
    .end annotation
.end field

.field private final cmx:Ljava/lang/String;

.field private final color:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vent/a;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/vent/c/e;->bUM:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/vent/c/e;->caZ:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/vent/c/e;->color:I

    iput-object p4, p0, Lcom/vent/c/e;->cmx:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Fx()Landroid/text/style/CharacterStyle;
    .locals 5

    new-instance v0, Lcom/vent/c/e;

    iget-object v1, p0, Lcom/vent/c/e;->bUM:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/vent/c/e;->caZ:Ljava/lang/ref/WeakReference;

    iget v3, p0, Lcom/vent/c/e;->color:I

    iget-object v4, p0, Lcom/vent/c/e;->cmx:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vent/c/e;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/vent/c/e;->bUM:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/c/e;->bUM:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/c/e;->cmx:Ljava/lang/String;

    invoke-static {v1}, Lcom/vent/bb;->eb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/vent/bb;->EB()V

    :cond_2
    iget-object v1, p0, Lcom/vent/c/e;->caZ:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vent/c/e;->caZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/i;

    :goto_1
    iget-object v2, p0, Lcom/vent/c/e;->cmx:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "api/v2/vents/search.json?q="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vent/c/e;->cmx:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "SearchHashtags"

    invoke-static/range {v0 .. v5}, Lcom/vent/ActVentList;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget v0, p0, Lcom/vent/c/e;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
