.class public abstract Lcom/vent/c/b;
.super Landroid/text/style/ClickableSpan;

# interfaces
.implements Landroid/text/style/UpdateLayout;
.implements Lcom/vent/c/h$a;


# instance fields
.field private final cmw:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/vent/c/b;->cmw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/c/b;->cmw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vent/c/b;->cmw:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vent/c/h;->a(Landroid/graphics/Paint;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
