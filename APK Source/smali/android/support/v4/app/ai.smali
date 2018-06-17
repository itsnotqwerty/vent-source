.class public Landroid/support/v4/app/ai;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/arch/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ai$a;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/ai$a;",
            ">;",
            "Landroid/support/v4/app/ai$a;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Landroid/arch/lifecycle/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ai;->mExtraDataMap:Landroid/support/v4/g/m;

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/ai;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    return-void
.end method


# virtual methods
.method public getExtraData(Ljava/lang/Class;)Landroid/support/v4/app/ai$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/ai$a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ai;->mExtraDataMap:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ai$a;

    return-object v0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ai;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/arch/lifecycle/m;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ai;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$b;->aC:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/c$b;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Landroid/support/v4/app/ai$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ai;->mExtraDataMap:Landroid/support/v4/g/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
