.class final Landroid/support/transition/FragmentTransitionSupport$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/transition/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FragmentTransitionSupport;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tM:Landroid/support/transition/FragmentTransitionSupport;

.field final synthetic tO:Ljava/util/ArrayList;

.field final synthetic tP:Ljava/lang/Object;

.field final synthetic tQ:Ljava/util/ArrayList;

.field final synthetic tR:Ljava/lang/Object;

.field final synthetic tS:Ljava/lang/Object;

.field final synthetic tT:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/transition/FragmentTransitionSupport;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tM:Landroid/support/transition/FragmentTransitionSupport;

    iput-object p2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tP:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tQ:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tR:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tO:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tS:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tT:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/transition/u;)V
    .locals 0

    return-void
.end method

.method public final cl()V
    .locals 0

    return-void
.end method

.method public final cm()V
    .locals 0

    return-void
.end method

.method public final co()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tP:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tM:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tP:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/FragmentTransitionSupport;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tR:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tM:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tR:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/FragmentTransitionSupport;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tS:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tM:Landroid/support/transition/FragmentTransitionSupport;

    iget-object v1, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tS:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/transition/FragmentTransitionSupport$3;->tT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/transition/FragmentTransitionSupport;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
