.class public final Lio/intercom/a/a/a/c/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private final cFs:Lio/intercom/a/a/a/c/b/b/h;

.field private final cMt:Lio/intercom/a/a/a/c/b;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/d/a;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/d/a;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/d/a;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/d/a;->cMt:Lio/intercom/a/a/a/c/b;

    return-void
.end method
