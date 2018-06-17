.class public final Landroid/support/design/widget/Snackbar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nA:Landroid/view/View$OnClickListener;

.field final synthetic nB:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/Snackbar$1;->nB:Landroid/support/design/widget/Snackbar;

    iput-object p2, p0, Landroid/support/design/widget/Snackbar$1;->nA:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/Snackbar$1;->nA:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/design/widget/Snackbar$1;->nB:Landroid/support/design/widget/Snackbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar;->s(I)V

    return-void
.end method
