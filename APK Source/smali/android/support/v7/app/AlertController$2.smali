.class final Landroid/support/v7/app/AlertController$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LP:Landroid/support/v7/app/AlertController;

.field final synthetic LQ:Landroid/view/View;

.field final synthetic LR:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/AlertController$2;->LP:Landroid/support/v7/app/AlertController;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$2;->LQ:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v7/app/AlertController$2;->LR:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/widget/NestedScrollView;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/AlertController$2;->LQ:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$2;->LR:Landroid/view/View;

    invoke-static {p1, v0, v1}, Landroid/support/v7/app/AlertController;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
