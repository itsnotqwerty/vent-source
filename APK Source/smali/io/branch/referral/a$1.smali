.class final Lio/branch/referral/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/referral/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cvv:Lio/branch/referral/a;


# direct methods
.method constructor <init>(Lio/branch/referral/a;)V
    .locals 0

    iput-object p1, p0, Lio/branch/referral/a$1;->cvv:Lio/branch/referral/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lio/branch/referral/a$1;->cvv:Lio/branch/referral/a;

    invoke-virtual {v0}, Lio/branch/referral/a;->dismiss()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
