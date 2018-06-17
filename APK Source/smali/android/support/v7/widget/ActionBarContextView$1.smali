.class final Landroid/support/v7/widget/ActionBarContextView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ActionBarContextView;->c(Landroid/support/v7/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TA:Landroid/support/v7/widget/ActionBarContextView;

.field final synthetic Tz:Landroid/support/v7/view/b;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActionBarContextView$1;->TA:Landroid/support/v7/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarContextView$1;->Tz:Landroid/support/v7/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContextView$1;->Tz:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->finish()V

    return-void
.end method
