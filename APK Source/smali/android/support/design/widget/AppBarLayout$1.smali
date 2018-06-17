.class final Landroid/support/design/widget/AppBarLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iO:Landroid/support/design/widget/AppBarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$1;->iO:Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;
    .locals 3

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$1;->iO:Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/support/v4/view/r;->X(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    :cond_0
    iget-object v2, v1, Landroid/support/design/widget/AppBarLayout;->iK:Landroid/support/v4/view/z;

    invoke-static {v2, v0}, Landroid/support/v4/g/i;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, v1, Landroid/support/design/widget/AppBarLayout;->iK:Landroid/support/v4/view/z;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout;->bb()V

    :cond_1
    return-object p2
.end method
