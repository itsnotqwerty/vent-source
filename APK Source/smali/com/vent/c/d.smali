.class public final Lcom/vent/c/d;
.super Lcom/vent/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "noto"

    invoke-direct {p0, v0}, Lcom/vent/c/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Fx()Landroid/text/style/CharacterStyle;
    .locals 1

    new-instance v0, Lcom/vent/c/d;

    invoke-direct {v0}, Lcom/vent/c/d;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vent/c/c;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method

.method public final bridge synthetic updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vent/c/c;->updateMeasureState(Landroid/text/TextPaint;)V

    return-void
.end method
