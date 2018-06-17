.class public final Lio/intercom/a/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/d/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/j$a;,
        Lio/intercom/a/a/a/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/d/i;"
    }
.end annotation


# static fields
.field public static final cGg:Lio/intercom/a/a/a/g/g;

.field private static final cGw:Lio/intercom/a/a/a/g/g;

.field private static final cGx:Lio/intercom/a/a/a/g/g;


# instance fields
.field protected final cFo:Lio/intercom/a/a/a/c;

.field private final cGA:Lio/intercom/a/a/a/d/m;

.field final cGB:Lio/intercom/a/a/a/d/p;

.field private final cGC:Ljava/lang/Runnable;

.field private final cGD:Lio/intercom/a/a/a/d/c;

.field cGi:Lio/intercom/a/a/a/g/g;

.field final cGy:Lio/intercom/a/a/a/d/h;

.field final cGz:Lio/intercom/a/a/a/d/n;

.field protected final context:Landroid/content/Context;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lio/intercom/a/a/a/g/g;->K(Ljava/lang/Class;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cKV:Z

    sput-object v0, Lio/intercom/a/a/a/j;->cGw:Lio/intercom/a/a/a/g/g;

    const-class v0, Lio/intercom/a/a/a/c/d/e/c;

    invoke-static {v0}, Lio/intercom/a/a/a/g/g;->K(Ljava/lang/Class;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cKV:Z

    sput-object v0, Lio/intercom/a/a/a/j;->cGx:Lio/intercom/a/a/a/g/g;

    sget-object v0, Lio/intercom/a/a/a/c/b/i;->cKd:Lio/intercom/a/a/a/c/b/i;

    invoke-static {v0}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/g;->cFU:Lio/intercom/a/a/a/g;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/g;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jx()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/j;->cGg:Lio/intercom/a/a/a/g/g;

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/c;Lio/intercom/a/a/a/d/h;Lio/intercom/a/a/a/d/m;Landroid/content/Context;)V
    .locals 7

    new-instance v4, Lio/intercom/a/a/a/d/n;

    invoke-direct {v4}, Lio/intercom/a/a/a/d/n;-><init>()V

    iget-object v5, p1, Lio/intercom/a/a/a/c;->cFy:Lio/intercom/a/a/a/d/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/intercom/a/a/a/j;-><init>(Lio/intercom/a/a/a/c;Lio/intercom/a/a/a/d/h;Lio/intercom/a/a/a/d/m;Lio/intercom/a/a/a/d/n;Lio/intercom/a/a/a/d/d;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/c;Lio/intercom/a/a/a/d/h;Lio/intercom/a/a/a/d/m;Lio/intercom/a/a/a/d/n;Lio/intercom/a/a/a/d/d;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/d/p;

    invoke-direct {v0}, Lio/intercom/a/a/a/d/p;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    new-instance v0, Lio/intercom/a/a/a/j$1;

    invoke-direct {v0, p0}, Lio/intercom/a/a/a/j$1;-><init>(Lio/intercom/a/a/a/j;)V

    iput-object v0, p0, Lio/intercom/a/a/a/j;->cGC:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/intercom/a/a/a/j;->mainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lio/intercom/a/a/a/j;->cFo:Lio/intercom/a/a/a/c;

    iput-object p2, p0, Lio/intercom/a/a/a/j;->cGy:Lio/intercom/a/a/a/d/h;

    iput-object p3, p0, Lio/intercom/a/a/a/j;->cGA:Lio/intercom/a/a/a/d/m;

    iput-object p4, p0, Lio/intercom/a/a/a/j;->cGz:Lio/intercom/a/a/a/d/n;

    iput-object p6, p0, Lio/intercom/a/a/a/j;->context:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/intercom/a/a/a/j$b;

    invoke-direct {v1, p4}, Lio/intercom/a/a/a/j$b;-><init>(Lio/intercom/a/a/a/d/n;)V

    invoke-interface {p5, v0, v1}, Lio/intercom/a/a/a/d/d;->a(Landroid/content/Context;Lio/intercom/a/a/a/d/c$a;)Lio/intercom/a/a/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/j;->cGD:Lio/intercom/a/a/a/d/c;

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JV()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/j;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGC:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGD:Lio/intercom/a/a/a/d/c;

    invoke-interface {p2, v0}, Lio/intercom/a/a/a/d/h;->a(Lio/intercom/a/a/a/d/i;)V

    iget-object v0, p1, Lio/intercom/a/a/a/c;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->cFG:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/a/a/a/g/g;->JA()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/j;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v1, p1, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    invoke-interface {p2, p0}, Lio/intercom/a/a/a/d/h;->a(Lio/intercom/a/a/a/d/i;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p1, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final HC()Lio/intercom/a/a/a/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/a/a/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/j;->x(Ljava/lang/Class;)Lio/intercom/a/a/a/i;

    move-result-object v0

    sget-object v1, Lio/intercom/a/a/a/j;->cGw:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lio/intercom/a/a/a/g/a/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g/a/h",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lio/intercom/a/a/a/i/i;->JU()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lio/intercom/a/a/a/j;->c(Lio/intercom/a/a/a/g/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cFo:Lio/intercom/a/a/a/c;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c;->a(Lio/intercom/a/a/a/g/a/h;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/intercom/a/a/a/g/a/h;->getRequest()Lio/intercom/a/a/a/g/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/intercom/a/a/a/g/a/h;->getRequest()Lio/intercom/a/a/a/g/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lio/intercom/a/a/a/g/a/h;->setRequest(Lio/intercom/a/a/a/g/c;)V

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/intercom/a/a/a/j;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lio/intercom/a/a/a/j$2;

    invoke-direct {v1, p0, p1}, Lio/intercom/a/a/a/j$2;-><init>(Lio/intercom/a/a/a/j;Lio/intercom/a/a/a/g/a/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method final c(Lio/intercom/a/a/a/g/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g/a/h",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1}, Lio/intercom/a/a/a/g/a/h;->getRequest()Lio/intercom/a/a/a/g/c;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lio/intercom/a/a/a/j;->cGz:Lio/intercom/a/a/a/d/n;

    invoke-virtual {v2, v1, v0}, Lio/intercom/a/a/a/d/n;->a(Lio/intercom/a/a/a/g/c;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    iget-object v1, v1, Lio/intercom/a/a/a/d/p;->cPA:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lio/intercom/a/a/a/g/a/h;->setRequest(Lio/intercom/a/a/a/g/c;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final eT(Ljava/lang/String;)Lio/intercom/a/a/a/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/intercom/a/a/a/i",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/j;->x(Ljava/lang/Class;)Lio/intercom/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/i;->aq(Ljava/lang/Object;)Lio/intercom/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    invoke-virtual {v0}, Lio/intercom/a/a/a/d/p;->onDestroy()V

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    iget-object v0, v0, Lio/intercom/a/a/a/d/p;->cPA:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/a/h;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/j;->b(Lio/intercom/a/a/a/g/a/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    iget-object v0, v0, Lio/intercom/a/a/a/d/p;->cPA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGz:Lio/intercom/a/a/a/d/n;

    iget-object v0, v1, Lio/intercom/a/a/a/d/n;->cPu:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/c;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lio/intercom/a/a/a/d/n;->a(Lio/intercom/a/a/a/g/c;Z)Z

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lio/intercom/a/a/a/d/n;->cPv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGy:Lio/intercom/a/a/a/d/h;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/d/h;->b(Lio/intercom/a/a/a/d/i;)V

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGy:Lio/intercom/a/a/a/d/h;

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGD:Lio/intercom/a/a/a/d/c;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/d/h;->b(Lio/intercom/a/a/a/d/i;)V

    iget-object v0, p0, Lio/intercom/a/a/a/j;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGC:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cFo:Lio/intercom/a/a/a/c;

    iget-object v1, v0, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, v0, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGz:Lio/intercom/a/a/a/d/n;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lio/intercom/a/a/a/d/n;->cPw:Z

    iget-object v0, v1, Lio/intercom/a/a/a/d/n;->cPu:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->begin()V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lio/intercom/a/a/a/d/n;->cPv:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    invoke-virtual {v0}, Lio/intercom/a/a/a/d/p;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGz:Lio/intercom/a/a/a/d/n;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lio/intercom/a/a/a/d/n;->cPw:Z

    iget-object v0, v1, Lio/intercom/a/a/a/d/n;->cPu:Ljava/util/Set;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/c;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lio/intercom/a/a/a/g/c;->pause()V

    iget-object v3, v1, Lio/intercom/a/a/a/d/n;->cPv:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/j;->cGB:Lio/intercom/a/a/a/d/p;

    invoke-virtual {v0}, Lio/intercom/a/a/a/d/p;->onStop()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGz:Lio/intercom/a/a/a/d/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cGA:Lio/intercom/a/a/a/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x(Ljava/lang/Class;)Lio/intercom/a/a/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TResourceType;>;)",
            "Lio/intercom/a/a/a/i",
            "<TResourceType;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/i;

    iget-object v1, p0, Lio/intercom/a/a/a/j;->cFo:Lio/intercom/a/a/a/c;

    iget-object v2, p0, Lio/intercom/a/a/a/j;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lio/intercom/a/a/a/i;-><init>(Lio/intercom/a/a/a/c;Lio/intercom/a/a/a/j;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method final y(Ljava/lang/Class;)Lio/intercom/a/a/a/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lio/intercom/a/a/a/k",
            "<*TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/j;->cFo:Lio/intercom/a/a/a/c;

    iget-object v1, v0, Lio/intercom/a/a/a/c;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v1, Lio/intercom/a/a/a/e;->cFB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/k;

    if-nez v0, :cond_1

    iget-object v1, v1, Lio/intercom/a/a/a/e;->cFB:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/k;

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lio/intercom/a/a/a/e;->cFK:Lio/intercom/a/a/a/k;

    :cond_2
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method
