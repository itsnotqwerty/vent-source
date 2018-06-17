.class final Lcom/vent/d/a$a;
.super Landroid/graphics/drawable/GradientDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IFI)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/vent/d/a$a;->key:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vent/d/a$a;->setShape(I)V

    invoke-virtual {p0, p2}, Lcom/vent/d/a$a;->setColor(I)V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/vent/d/a$a;->setCornerRadius(F)V

    :cond_0
    if-eqz p4, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p4}, Lcom/vent/d/a$a;->setStroke(II)V

    :cond_1
    return-void
.end method
