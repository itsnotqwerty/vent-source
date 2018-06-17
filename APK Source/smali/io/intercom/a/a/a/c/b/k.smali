.class public final Lio/intercom/a/a/a/c/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/g$a;
.implements Lio/intercom/a/a/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/k$b;,
        Lio/intercom/a/a/a/c/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/g$a",
        "<TR;>;",
        "Lio/intercom/a/a/a/i/a/a$c;"
    }
.end annotation


# static fields
.field private static final cKx:Lio/intercom/a/a/a/c/b/k$a;

.field private static final cKy:Landroid/os/Handler;


# instance fields
.field private final cFC:Lio/intercom/a/a/a/c/b/c/a;

.field public final cFD:Lio/intercom/a/a/a/c/b/c/a;

.field private final cFI:Lio/intercom/a/a/a/c/b/c/a;

.field public cIL:Lio/intercom/a/a/a/c/h;

.field public cIM:Z

.field cIN:Lio/intercom/a/a/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/u",
            "<*>;"
        }
    .end annotation
.end field

.field public volatile cIs:Z

.field cJF:Lio/intercom/a/a/a/c/a;

.field public final cJl:Lio/intercom/a/a/a/i/a/b;

.field private final cJm:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;>;"
        }
    .end annotation
.end field

.field public cJu:Z

.field private final cKA:Lio/intercom/a/a/a/c/b/k$a;

.field public cKB:Z

.field public cKC:Z

.field public cKD:Z

.field private cKE:Lio/intercom/a/a/a/c/b/p;

.field public cKF:Z

.field public cKG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/g/h;",
            ">;"
        }
    .end annotation
.end field

.field cKH:Lio/intercom/a/a/a/c/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/o",
            "<*>;"
        }
    .end annotation
.end field

.field public cKI:Lio/intercom/a/a/a/c/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/g",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final cKq:Lio/intercom/a/a/a/c/b/c/a;

.field public final cKr:Lio/intercom/a/a/a/c/b/l;

.field public final cKz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/g/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/intercom/a/a/a/c/b/k$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/k$a;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/c/b/k;->cKx:Lio/intercom/a/a/a/c/b/k$a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lio/intercom/a/a/a/c/b/k$b;

    invoke-direct {v2}, Lio/intercom/a/a/a/c/b/k$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lio/intercom/a/a/a/c/b/k;->cKy:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/l;Landroid/support/v4/g/k$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/l;",
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;>;)V"
        }
    .end annotation

    sget-object v7, Lio/intercom/a/a/a/c/b/k;->cKx:Lio/intercom/a/a/a/c/b/k$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lio/intercom/a/a/a/c/b/k;-><init>(Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/l;Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/c/b/k$a;)V

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/l;Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/c/b/k$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/c/a;",
            "Lio/intercom/a/a/a/c/b/l;",
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/k",
            "<*>;>;",
            "Lio/intercom/a/a/a/c/b/k$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    new-instance v0, Lio/intercom/a/a/a/i/a/b$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/a/b$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cJl:Lio/intercom/a/a/a/i/a/b;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/k;->cFD:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/k;->cFC:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/k;->cKq:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p4, p0, Lio/intercom/a/a/a/c/b/k;->cFI:Lio/intercom/a/a/a/c/b/c/a;

    iput-object p5, p0, Lio/intercom/a/a/a/c/b/k;->cKr:Lio/intercom/a/a/a/c/b/l;

    iput-object p6, p0, Lio/intercom/a/a/a/c/b/k;->cJm:Landroid/support/v4/g/k$a;

    iput-object p7, p0, Lio/intercom/a/a/a/c/b/k;->cKA:Lio/intercom/a/a/a/c/b/k$a;

    return-void
.end method


# virtual methods
.method public final Ij()Lio/intercom/a/a/a/i/a/b;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cJl:Lio/intercom/a/a/a/i/a/b;

    return-object v0
.end method

.method public final Ir()Lio/intercom/a/a/a/c/b/c/a;
    .locals 1

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/k;->cKB:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKq:Lio/intercom/a/a/a/c/b/c/a;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/k;->cKC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cFI:Lio/intercom/a/a/a/c/b/c/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cFC:Lio/intercom/a/a/a/c/b/c/a;

    goto :goto_0
.end method

.method final Is()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/k;->cIL:Lio/intercom/a/a/a/c/h;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/k;->cIN:Lio/intercom/a/a/a/c/b/u;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-boolean v1, p0, Lio/intercom/a/a/a/c/b/k;->cKF:Z

    iput-boolean v1, p0, Lio/intercom/a/a/a/c/b/k;->cIs:Z

    iput-boolean v1, p0, Lio/intercom/a/a/a/c/b/k;->cKD:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKI:Lio/intercom/a/a/a/c/b/g;

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/g;->cJo:Lio/intercom/a/a/a/c/b/g$e;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/g$e;->Il()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/g;->Id()V

    :cond_1
    iput-object v2, p0, Lio/intercom/a/a/a/c/b/k;->cKI:Lio/intercom/a/a/a/c/b/g;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/k;->cKE:Lio/intercom/a/a/a/c/b/p;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/k;->cJF:Lio/intercom/a/a/a/c/a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cJm:Landroid/support/v4/g/k$a;

    invoke-interface {v0, p0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method final It()V
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/k;->cIs:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/k;->Is()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/k;->cKF:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/k;->cKF:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKr:Lio/intercom/a/a/a/c/b/l;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/k;->cIL:Lio/intercom/a/a/a/c/h;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lio/intercom/a/a/a/c/b/l;->a(Lio/intercom/a/a/a/c/b/k;Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/h;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/c/b/k;->b(Lio/intercom/a/a/a/g/h;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/k;->cKE:Lio/intercom/a/a/a/c/b/p;

    invoke-interface {v0, v2}, Lio/intercom/a/a/a/g/h;->a(Lio/intercom/a/a/a/c/b/p;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/k;->Is()V

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/a/a/c/b/p;)V
    .locals 2

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/k;->cKE:Lio/intercom/a/a/a/c/b/p;

    sget-object v0, Lio/intercom/a/a/a/c/b/k;->cKy:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<TR;>;",
            "Lio/intercom/a/a/a/c/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/k;->cIN:Lio/intercom/a/a/a/c/b/u;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/k;->cJF:Lio/intercom/a/a/a/c/a;

    sget-object v0, Lio/intercom/a/a/a/c/b/k;->cKy:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lio/intercom/a/a/a/g/h;)V
    .locals 2

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/k;->cKD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKH:Lio/intercom/a/a/a/c/b/o;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/k;->cJF:Lio/intercom/a/a/a/c/a;

    invoke-interface {p1, v0, v1}, Lio/intercom/a/a/a/g/h;->a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/k;->cKF:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKE:Lio/intercom/a/a/a/c/b/p;

    invoke-interface {p1, v0}, Lio/intercom/a/a/a/g/h;->a(Lio/intercom/a/a/a/c/b/p;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(Lio/intercom/a/a/a/c/b/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/g",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/k;->Ir()Lio/intercom/a/a/a/c/b/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/b/c/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b(Lio/intercom/a/a/a/g/h;)Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
