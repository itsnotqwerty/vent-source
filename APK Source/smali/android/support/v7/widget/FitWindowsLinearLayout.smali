.class public Landroid/support/v7/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/support/v7/widget/ap;


# instance fields
.field private Zj:Landroid/support/v7/widget/ap$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/FitWindowsLinearLayout;->Zj:Landroid/support/v7/widget/ap$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/FitWindowsLinearLayout;->Zj:Landroid/support/v7/widget/ap$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ap$a;->d(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Landroid/support/v7/widget/ap$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/FitWindowsLinearLayout;->Zj:Landroid/support/v7/widget/ap$a;

    return-void
.end method
