.class final Landroid/support/design/widget/BottomSheetBehavior$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic jO:Landroid/support/design/widget/BottomSheetBehavior;

.field private final jP:I

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->jO:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->mView:Landroid/view/View;

    iput p3, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->jP:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->jO:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->jC:Landroid/support/v4/widget/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->jO:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->jC:Landroid/support/v4/widget/r;

    invoke-virtual {v0}, Landroid/support/v4/widget/r;->en()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/r;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->jO:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior$b;->jP:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->x(I)V

    goto :goto_0
.end method
