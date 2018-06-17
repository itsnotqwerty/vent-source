.class final Landroid/support/v7/app/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic NC:Landroid/support/v7/app/k;


# direct methods
.method constructor <init>(Landroid/support/v7/app/k;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/k$2;->NC:Landroid/support/v7/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;
    .locals 4

    invoke-virtual {p2}, Landroid/support/v4/view/z;->getSystemWindowInsetTop()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/k$2;->NC:Landroid/support/v7/app/k;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/k;->aU(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/view/z;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/view/z;->getSystemWindowInsetRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/z;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/z;->e(IIII)Landroid/support/v4/view/z;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/r;->a(Landroid/view/View;Landroid/support/v4/view/z;)Landroid/support/v4/view/z;

    move-result-object v0

    return-object v0
.end method
