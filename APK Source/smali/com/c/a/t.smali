.class public final Lcom/c/a/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/t$d;,
        Lcom/c/a/t$a;,
        Lcom/c/a/t$b;,
        Lcom/c/a/t$e;,
        Lcom/c/a/t$f;,
        Lcom/c/a/t$c;
    }
.end annotation


# static fields
.field public static final bNY:Landroid/os/Handler;

.field static volatile bNZ:Lcom/c/a/t;


# instance fields
.field final bMX:Lcom/c/a/i;

.field final bMY:Lcom/c/a/d;

.field final bMZ:Lcom/c/a/aa;

.field private final bOa:Lcom/c/a/t$c;

.field final bOb:Lcom/c/a/t$f;

.field private final bOc:Lcom/c/a/t$b;

.field final bOd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/y;",
            ">;"
        }
    .end annotation
.end field

.field final bOe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field final bOf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/c/a/h;",
            ">;"
        }
    .end annotation
.end field

.field final bOg:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final bOh:Landroid/graphics/Bitmap$Config;

.field bOi:Z

.field volatile bOj:Z

.field final context:Landroid/content/Context;

.field shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/c/a/t$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/c/a/t$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/c/a/t;->bNZ:Lcom/c/a/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/c/a/i;Lcom/c/a/d;Lcom/c/a/t$c;Lcom/c/a/t$f;Ljava/util/List;Lcom/c/a/aa;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/c/a/i;",
            "Lcom/c/a/d;",
            "Lcom/c/a/t$c;",
            "Lcom/c/a/t$f;",
            "Ljava/util/List",
            "<",
            "Lcom/c/a/y;",
            ">;",
            "Lcom/c/a/aa;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/t;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/c/a/t;->bMX:Lcom/c/a/i;

    iput-object p3, p0, Lcom/c/a/t;->bMY:Lcom/c/a/d;

    iput-object p4, p0, Lcom/c/a/t;->bOa:Lcom/c/a/t$c;

    iput-object p5, p0, Lcom/c/a/t;->bOb:Lcom/c/a/t$f;

    iput-object p8, p0, Lcom/c/a/t;->bOh:Landroid/graphics/Bitmap$Config;

    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x7

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lcom/c/a/z;

    invoke-direct {v0, p1}, Lcom/c/a/z;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_0

    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/c/a/f;

    invoke-direct {v0, p1}, Lcom/c/a/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/c/a/o;

    invoke-direct {v0, p1}, Lcom/c/a/o;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/c/a/g;

    invoke-direct {v0, p1}, Lcom/c/a/g;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/c/a/b;

    invoke-direct {v0, p1}, Lcom/c/a/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/c/a/k;

    invoke-direct {v0, p1}, Lcom/c/a/k;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/c/a/r;

    iget-object v2, p2, Lcom/c/a/i;->bNs:Lcom/c/a/j;

    invoke-direct {v0, v2, p7}, Lcom/c/a/r;-><init>(Lcom/c/a/j;Lcom/c/a/aa;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/t;->bOd:Ljava/util/List;

    iput-object p7, p0, Lcom/c/a/t;->bMZ:Lcom/c/a/aa;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/t;->bOe:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/t;->bOf:Ljava/util/Map;

    iput-boolean p9, p0, Lcom/c/a/t;->bOi:Z

    iput-boolean p10, p0, Lcom/c/a/t;->bOj:Z

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/c/a/t;->bOg:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/c/a/t$b;

    iget-object v1, p0, Lcom/c/a/t;->bOg:Ljava/lang/ref/ReferenceQueue;

    sget-object v2, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/c/a/t$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/c/a/t;->bOc:Lcom/c/a/t$b;

    iget-object v0, p0, Lcom/c/a/t;->bOc:Lcom/c/a/t$b;

    invoke-virtual {v0}, Lcom/c/a/t$b;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/c/a/t;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;Lcom/c/a/a;)V
    .locals 5

    iget-boolean v0, p3, Lcom/c/a/a;->bMO:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p3, Lcom/c/a/a;->bMN:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/c/a/t;->bOe:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/c/a/a;->getTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LoadedFrom cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/c/a/a;->a(Landroid/graphics/Bitmap;Lcom/c/a/t$d;)V

    iget-boolean v0, p0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_0

    const-string v0, "Main"

    const-string v1, "completed"

    iget-object v2, p3, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/c/a/ag;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lcom/c/a/a;->error()V

    iget-boolean v0, p0, Lcom/c/a/t;->bOj:Z

    if-eqz v0, :cond_0

    const-string v0, "Main"

    const-string v1, "errored"

    iget-object v2, p3, Lcom/c/a/a;->bMG:Lcom/c/a/w;

    invoke-virtual {v2}, Lcom/c/a/w;->Au()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/c/a/ag;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final ai(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/c/a/t;->bMX:Lcom/c/a/i;

    iget-object v1, v0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final aj(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/c/a/t;->bMX:Lcom/c/a/i;

    iget-object v1, v0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final ak(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/c/a/ag;->AC()V

    iget-object v0, p0, Lcom/c/a/t;->bOe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/c/a/a;->cancel()V

    iget-object v1, p0, Lcom/c/a/t;->bMX:Lcom/c/a/i;

    iget-object v2, v1, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iget-object v1, v1, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/c/a/t;->bOf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/c/a/h;->bNp:Lcom/c/a/e;

    iget-object v1, v0, Lcom/c/a/h;->bMH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/c/a/a;)V
    .locals 3

    invoke-virtual {p1}, Lcom/c/a/a;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/c/a/t;->bOe:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/c/a/t;->ak(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/c/a/t;->bOe:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/c/a/t;->bMX:Lcom/c/a/i;

    iget-object v1, v0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/c/a/i;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dO(Ljava/lang/String;)Lcom/c/a/x;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/c/a/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/c/a/x;-><init>(Lcom/c/a/t;Landroid/net/Uri;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/c/a/t;->k(Landroid/net/Uri;)Lcom/c/a/x;

    move-result-object v0

    goto :goto_0
.end method

.method public final dP(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/c/a/t;->bMY:Lcom/c/a/d;

    invoke-interface {v0, p1}, Lcom/c/a/d;->dN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/c/a/t;->bMZ:Lcom/c/a/aa;

    invoke-virtual {v1}, Lcom/c/a/aa;->AB()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/c/a/t;->bMZ:Lcom/c/a/aa;

    iget-object v1, v1, Lcom/c/a/aa;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final k(Landroid/net/Uri;)Lcom/c/a/x;
    .locals 1

    new-instance v0, Lcom/c/a/x;

    invoke-direct {v0, p0, p1}, Lcom/c/a/x;-><init>(Lcom/c/a/t;Landroid/net/Uri;)V

    return-object v0
.end method
