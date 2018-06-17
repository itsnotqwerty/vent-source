.class public final Lcom/vent/c/g;
.super Landroid/text/style/ClickableSpan;

# interfaces
.implements Lcom/vent/c/h$a;


# instance fields
.field private final cmy:Lcom/vent/a/r;

.field private final cmz:Z

.field private final color:I


# direct methods
.method public constructor <init>(Lcom/vent/a/r;IZ)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/vent/c/g;->cmy:Lcom/vent/a/r;

    iput p2, p0, Lcom/vent/c/g;->color:I

    iput-boolean p3, p0, Lcom/vent/c/g;->cmz:Z

    return-void
.end method


# virtual methods
.method public final synthetic Fx()Landroid/text/style/CharacterStyle;
    .locals 4

    new-instance v0, Lcom/vent/c/g;

    iget-object v1, p0, Lcom/vent/c/g;->cmy:Lcom/vent/a/r;

    iget v2, p0, Lcom/vent/c/g;->color:I

    iget-boolean v3, p0, Lcom/vent/c/g;->cmz:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/vent/c/g;-><init>(Lcom/vent/a/r;IZ)V

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/vent/c/g;->cmz:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vent/c/g;->cmy:Lcom/vent/a/r;

    iget-object v0, v0, Lcom/vent/a/r;->ckA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vent/c/g;->cmy:Lcom/vent/a/r;

    iget-object v1, v1, Lcom/vent/a/r;->ckA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    iget v0, p0, Lcom/vent/c/g;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
