.class public final Lio/intercom/a/a/a/c/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/a$b;,
        Lio/intercom/a/a/a/c/b/a$a;
    }
.end annotation


# instance fields
.field private final cFJ:Z

.field public final cIE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field cIF:Lio/intercom/a/a/a/c/b/o$a;

.field cIG:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/intercom/a/a/a/c/b/o",
            "<*>;>;"
        }
    .end annotation
.end field

.field private cIH:Ljava/lang/Thread;

.field volatile cII:Z

.field volatile cIJ:Lio/intercom/a/a/a/c/b/a$a;

.field final mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lio/intercom/a/a/a/c/b/a$1;

    invoke-direct {v2, p0}, Lio/intercom/a/a/a/c/b/a$1;-><init>(Lio/intercom/a/a/a/c/b/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a;->mainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a;->cIE:Ljava/util/Map;

    iput-boolean p1, p0, Lio/intercom/a/a/a/c/b/a;->cFJ:Z

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/b/a$b;)V
    .locals 4

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a;->cIE:Ljava/util/Map;

    iget-object v1, p1, Lio/intercom/a/a/a/c/b/a$b;->cIL:Lio/intercom/a/a/a/c/h;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lio/intercom/a/a/a/c/b/a$b;->cIM:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lio/intercom/a/a/a/c/b/a$b;->cIN:Lio/intercom/a/a/a/c/b/u;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lio/intercom/a/a/a/c/b/o;

    iget-object v1, p1, Lio/intercom/a/a/a/c/b/a$b;->cIN:Lio/intercom/a/a/a/c/b/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/a/a/a/c/b/o;-><init>(Lio/intercom/a/a/a/c/b/u;ZZ)V

    iget-object v1, p1, Lio/intercom/a/a/a/c/b/a$b;->cIL:Lio/intercom/a/a/a/c/h;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/a;->cIF:Lio/intercom/a/a/a/c/b/o$a;

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/a/a/c/b/o;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o$a;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a;->cIF:Lio/intercom/a/a/a/c/b/o$a;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/a$b;->cIL:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v2, v0}, Lio/intercom/a/a/a/c/b/o$a;->b(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/o",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/b/a$b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a;->cIG:Ljava/lang/ref/ReferenceQueue;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lio/intercom/a/a/a/c/b/a;->cIG:Ljava/lang/ref/ReferenceQueue;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/intercom/a/a/a/c/b/a$2;

    invoke-direct {v2, p0}, Lio/intercom/a/a/a/c/b/a$2;-><init>(Lio/intercom/a/a/a/c/b/a;)V

    const-string v3, "glide-active-resources"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lio/intercom/a/a/a/c/b/a;->cIH:Ljava/lang/Thread;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a;->cIH:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a;->cIG:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lio/intercom/a/a/a/c/b/a;->cFJ:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lio/intercom/a/a/a/c/b/a$b;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a;->cIE:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/a$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/a$b;->reset()V

    :cond_1
    return-void
.end method
