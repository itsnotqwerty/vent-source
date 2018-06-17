.class final Landroid/support/design/widget/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lt:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$1;->lt:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$1;->lt:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    :goto_0
    iget-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    invoke-static {v3, v0}, Landroid/support/v4/g/i;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v0, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    new-instance v1, Landroid/support/v4/view/z;

    iget-object v0, p2, Landroid/support/v4/view/z;->HA:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/view/z;-><init>(Ljava/lang/Object;)V

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
