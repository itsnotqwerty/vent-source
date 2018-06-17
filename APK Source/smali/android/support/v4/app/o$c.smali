.class final Landroid/support/v4/app/o$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final yj:Landroid/view/animation/Animation;

.field public final yk:Landroid/animation/Animator;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/o$c;->yj:Landroid/view/animation/Animation;

    iput-object p1, p0, Landroid/support/v4/app/o$c;->yk:Landroid/animation/Animator;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/app/o$c;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/o$c;->yj:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/o$c;->yk:Landroid/animation/Animator;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animation cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/app/o$c;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
