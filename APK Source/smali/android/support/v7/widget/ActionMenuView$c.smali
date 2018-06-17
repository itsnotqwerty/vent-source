.class public final Landroid/support/v7/widget/ActionMenuView$c;
.super Landroid/support/v7/widget/at$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public UI:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public UJ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public UK:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public UL:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public UM:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/at$a;-><init>(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/at$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView$c;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/at$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p1, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$c;->UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/at$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
