.class public final Landroid/support/transition/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/w$a;
    }
.end annotation


# static fields
.field private static uQ:Landroid/support/transition/u;

.field private static uR:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/u;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private static uS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/transition/e;

    invoke-direct {v0}, Landroid/support/transition/e;-><init>()V

    sput-object v0, Landroid/support/transition/w;->uQ:Landroid/support/transition/u;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/w;->uR:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/support/transition/w;->uS:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/support/transition/u;)V
    .locals 3

    sget-object v0, Landroid/support/transition/w;->uS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/r;->ae(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/support/transition/w;->uS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    sget-object p1, Landroid/support/transition/w;->uQ:Landroid/support/transition/u;

    :cond_0
    invoke-virtual {p1}, Landroid/support/transition/u;->cr()Landroid/support/transition/u;

    move-result-object v1

    invoke-static {}, Landroid/support/transition/w;->cs()Landroid/support/v4/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u;

    invoke-virtual {v0, p0}, Landroid/support/transition/u;->x(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, p0, v0}, Landroid/support/transition/u;->b(Landroid/view/ViewGroup;Z)V

    :cond_2
    invoke-static {p0}, Landroid/support/transition/t;->t(Landroid/view/View;)Landroid/support/transition/t;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/transition/t;->ub:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/support/transition/t;->t(Landroid/view/View;)Landroid/support/transition/t;

    move-result-object v2

    if-ne v2, v0, :cond_3

    iget-object v2, v0, Landroid/support/transition/t;->uc:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroid/support/transition/t;->uc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    sget v0, Landroid/support/transition/r$a;->transition_current_scene:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    new-instance v0, Landroid/support/transition/w$a;

    invoke-direct {v0, v1, p0}, Landroid/support/transition/w$a;-><init>(Landroid/support/transition/u;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4
    return-void
.end method

.method static cs()Landroid/support/v4/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/g/a",
            "<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/u;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Landroid/support/transition/w;->uR:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v1, Landroid/support/transition/w;->uR:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/a;

    return-object v0
.end method

.method static synthetic ct()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Landroid/support/transition/w;->uS:Ljava/util/ArrayList;

    return-object v0
.end method
