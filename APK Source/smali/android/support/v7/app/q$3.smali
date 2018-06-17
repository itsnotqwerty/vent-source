.class final Landroid/support/v7/app/q$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ph:Landroid/support/v7/app/q;


# direct methods
.method constructor <init>(Landroid/support/v7/app/q;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/q$3;->Ph:Landroid/support/v7/app/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dX()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/q$3;->Ph:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->OK:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
