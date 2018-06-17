.class public final Lio/intercom/a/a/a/c/b/a$b;
.super Ljava/lang/ref/WeakReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lio/intercom/a/a/a/c/b/o",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final cIL:Lio/intercom/a/a/a/c/h;

.field final cIM:Z

.field cIN:Lio/intercom/a/a/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/u",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;Ljava/lang/ref/ReferenceQueue;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Lio/intercom/a/a/a/c/b/o",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lio/intercom/a/a/a/c/b/o",
            "<*>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/h;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a$b;->cIL:Lio/intercom/a/a/a/c/h;

    iget-boolean v0, p2, Lio/intercom/a/a/a/c/b/o;->cIM:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p2, Lio/intercom/a/a/a/c/b/o;->cIN:Lio/intercom/a/a/a/c/b/u;

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/u;

    :goto_0
    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a$b;->cIN:Lio/intercom/a/a/a/c/b/u;

    iget-boolean v0, p2, Lio/intercom/a/a/a/c/b/o;->cIM:Z

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/a$b;->cIM:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/a$b;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/a$b;->clear()V

    return-void
.end method
