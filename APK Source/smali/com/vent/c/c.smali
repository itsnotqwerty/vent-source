.class abstract Lcom/vent/c/c;
.super Landroid/text/style/MetricAffectingSpan;

# interfaces
.implements Landroid/text/style/UpdateLayout;
.implements Lcom/vent/c/h$a;


# instance fields
.field private final cmw:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Lcom/vent/c/c;->cmw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/c/c;->cmw:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vent/c/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/c/c;->cmw:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vent/c/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)V

    return-void
.end method
