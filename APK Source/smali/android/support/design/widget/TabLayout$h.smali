.class public final Landroid/support/design/widget/TabLayout$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/TabLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private final oB:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$h;->oB:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public final b(Landroid/support/design/widget/TabLayout$e;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$h;->oB:Landroid/support/v4/view/ViewPager;

    iget v1, p1, Landroid/support/design/widget/TabLayout$e;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final bT()V
    .locals 0

    return-void
.end method
