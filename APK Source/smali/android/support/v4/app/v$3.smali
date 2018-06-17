.class final Landroid/support/v4/app/v$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tO:Ljava/util/ArrayList;

.field final synthetic tP:Ljava/lang/Object;

.field final synthetic tQ:Ljava/util/ArrayList;

.field final synthetic tR:Ljava/lang/Object;

.field final synthetic tS:Ljava/lang/Object;

.field final synthetic tT:Ljava/util/ArrayList;

.field final synthetic yZ:Landroid/support/v4/app/v;


# direct methods
.method constructor <init>(Landroid/support/v4/app/v;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/v$3;->yZ:Landroid/support/v4/app/v;

    iput-object p2, p0, Landroid/support/v4/app/v$3;->tP:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/v$3;->tQ:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/v$3;->tR:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/v4/app/v$3;->tO:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/v$3;->tS:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/v4/app/v$3;->tT:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionStart(Landroid/transition/Transition;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/v$3;->tP:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/v$3;->yZ:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/v$3;->tP:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/v$3;->tQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/v;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v$3;->tR:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/v$3;->yZ:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/v$3;->tR:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/v$3;->tO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/v;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v$3;->tS:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/v$3;->yZ:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/v$3;->tS:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/v$3;->tT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/v;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
