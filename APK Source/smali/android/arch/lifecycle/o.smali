.class public final Landroid/arch/lifecycle/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/o$a;
    }
.end annotation


# instance fields
.field public final bh:Landroid/arch/lifecycle/o$a;

.field public final mViewModelStore:Landroid/arch/lifecycle/p;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/p;Landroid/arch/lifecycle/o$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/arch/lifecycle/o;->bh:Landroid/arch/lifecycle/o$a;

    iput-object p1, p0, Landroid/arch/lifecycle/o;->mViewModelStore:Landroid/arch/lifecycle/p;

    return-void
.end method
