.class public final Lio/intercom/a/a/a/c/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/e$a;
.implements Lio/intercom/a/a/a/i/a/a$c;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/b/g$g;,
        Lio/intercom/a/a/a/c/b/g$f;,
        Lio/intercom/a/a/a/c/b/g$d;,
        Lio/intercom/a/a/a/c/b/g$a;,
        Lio/intercom/a/a/a/c/b/g$c;,
        Lio/intercom/a/a/a/c/b/g$e;,
        Lio/intercom/a/a/a/c/b/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/e$a;",
        "Lio/intercom/a/a/a/i/a/a$c;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/intercom/a/a/a/c/b/g",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public cFu:Lio/intercom/a/a/a/e;

.field public cIX:Lio/intercom/a/a/a/c/h;

.field public cIZ:Lio/intercom/a/a/a/c/j;

.field public volatile cIs:Z

.field private cJA:Lio/intercom/a/a/a/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/a/b",
            "<*>;"
        }
    .end annotation
.end field

.field public volatile cJB:Lio/intercom/a/a/a/c/b/e;

.field private volatile cJC:Z

.field public final cJc:Lio/intercom/a/a/a/c/b/g$d;

.field public cJg:Lio/intercom/a/a/a/g;

.field public final cJj:Lio/intercom/a/a/a/c/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/f",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final cJk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final cJl:Lio/intercom/a/a/a/i/a/b;

.field private final cJm:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/g",
            "<*>;>;"
        }
    .end annotation
.end field

.field final cJn:Lio/intercom/a/a/a/c/b/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/g$c",
            "<*>;"
        }
    .end annotation
.end field

.field final cJo:Lio/intercom/a/a/a/c/b/g$e;

.field public cJp:Lio/intercom/a/a/a/c/b/m;

.field public cJq:Lio/intercom/a/a/a/c/b/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/g$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field private cJr:Lio/intercom/a/a/a/c/b/g$g;

.field public cJs:Lio/intercom/a/a/a/c/b/g$f;

.field private cJt:J

.field public cJu:Z

.field private cJv:Ljava/lang/Thread;

.field cJw:Lio/intercom/a/a/a/c/h;

.field private cJx:Lio/intercom/a/a/a/c/h;

.field private cJy:Ljava/lang/Object;

.field private cJz:Lio/intercom/a/a/a/c/a;

.field public diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

.field public height:I

.field public order:I

.field public width:I


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/g$d;Landroid/support/v4/g/k$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/g$d;",
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/c/b/g",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/intercom/a/a/a/c/b/f;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/f;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJk:Ljava/util/List;

    new-instance v0, Lio/intercom/a/a/a/i/a/b$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/a/b$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJl:Lio/intercom/a/a/a/i/a/b;

    new-instance v0, Lio/intercom/a/a/a/c/b/g$c;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/g$c;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJn:Lio/intercom/a/a/a/c/b/g$c;

    new-instance v0, Lio/intercom/a/a/a/c/b/g$e;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/g$e;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJo:Lio/intercom/a/a/a/c/b/g$e;

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/g;->cJc:Lio/intercom/a/a/a/c/b/g$d;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/g;->cJm:Landroid/support/v4/g/k$a;

    return-void
.end method

.method private Ic()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJo:Lio/intercom/a/a/a/c/b/g$e;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/g$e;->Im()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/g;->Id()V

    :cond_0
    return-void
.end method

.method private Ie()Lio/intercom/a/a/a/c/b/e;
    .locals 3

    sget-object v0, Lio/intercom/a/a/a/c/b/g$1;->cJE:[I

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/g$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized stage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lio/intercom/a/a/a/c/b/v;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    invoke-direct {v0, v1, p0}, Lio/intercom/a/a/a/c/b/v;-><init>(Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lio/intercom/a/a/a/c/b/b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    invoke-direct {v0, v1, p0}, Lio/intercom/a/a/a/c/b/b;-><init>(Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lio/intercom/a/a/a/c/b/y;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    invoke-direct {v0, v1, p0}, Lio/intercom/a/a/a/c/b/y;-><init>(Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private If()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJv:Ljava/lang/Thread;

    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/a/a/a/c/b/g;->cJt:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lio/intercom/a/a/a/c/b/g;->cIs:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJB:Lio/intercom/a/a/a/c/b/e;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJB:Lio/intercom/a/a/a/c/b/e;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/e;->HW()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    invoke-virtual {p0, v1}, Lio/intercom/a/a/a/c/b/g;->a(Lio/intercom/a/a/a/c/b/g$g;)Lio/intercom/a/a/a/c/b/g$g;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ie()Lio/intercom/a/a/a/c/b/e;

    move-result-object v1

    iput-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJB:Lio/intercom/a/a/a/c/b/e;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    sget-object v2, Lio/intercom/a/a/a/c/b/g$g;->cJT:Lio/intercom/a/a/a/c/b/g$g;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/g;->HY()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    sget-object v2, Lio/intercom/a/a/a/c/b/g$g;->cJV:Lio/intercom/a/a/a/c/b/g$g;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lio/intercom/a/a/a/c/b/g;->cIs:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ig()V

    goto :goto_0
.end method

.method private Ig()V
    .locals 4

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ih()V

    new-instance v0, Lio/intercom/a/a/a/c/b/p;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cJk:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJq:Lio/intercom/a/a/a/c/b/g$a;

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/c/b/g$a;->a(Lio/intercom/a/a/a/c/b/p;)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJo:Lio/intercom/a/a/a/c/b/g$e;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/g$e;->In()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/b/g;->Id()V

    :cond_0
    return-void
.end method

.method private Ih()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/g;->cJC:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/b/g;->cJC:Z

    return-void
.end method

.method private Ii()V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Retrieved data"

    iget-wide v4, p0, Lio/intercom/a/a/a/c/b/g;->cJt:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "data: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cJy:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cache key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cJw:Lio/intercom/a/a/a/c/h;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", fetcher: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cJA:Lio/intercom/a/a/a/c/a/b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v5, v1}, Lio/intercom/a/a/a/c/b/g;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJA:Lio/intercom/a/a/a/c/a/b;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJy:Ljava/lang/Object;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cJz:Lio/intercom/a/a/a/c/a;

    invoke-direct {p0, v0, v1, v3}, Lio/intercom/a/a/a/c/b/g;->a(Lio/intercom/a/a/a/c/a/b;Ljava/lang/Object;Lio/intercom/a/a/a/c/a;)Lio/intercom/a/a/a/c/b/u;
    :try_end_0
    .catch Lio/intercom/a/a/a/c/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/g;->cJz:Lio/intercom/a/a/a/c/a;

    instance-of v0, v1, Lio/intercom/a/a/a/c/b/q;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lio/intercom/a/a/a/c/b/q;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/q;->initialize()V

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJn:Lio/intercom/a/a/a/c/b/g$c;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/g$c;->Ik()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Lio/intercom/a/a/a/c/b/t;->c(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/t;

    move-result-object v1

    move-object v0, v1

    move-object v3, v1

    :goto_1
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ih()V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJq:Lio/intercom/a/a/a/c/b/g$a;

    invoke-interface {v1, v3, v4}, Lio/intercom/a/a/a/c/b/g$a;->a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V

    sget-object v1, Lio/intercom/a/a/a/c/b/g$g;->cJU:Lio/intercom/a/a/a/c/b/g$g;

    iput-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    :try_start_1
    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJn:Lio/intercom/a/a/a/c/b/g$c;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/g$c;->Ik()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJn:Lio/intercom/a/a/a/c/b/g$c;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJc:Lio/intercom/a/a/a/c/b/g$d;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cIZ:Lio/intercom/a/a/a/c/j;

    const-string v4, "DecodeJob.encode"

    invoke-static {v4}, Landroid/support/v4/d/d;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/g$d;->HZ()Lio/intercom/a/a/a/c/b/b/a;

    move-result-object v1

    iget-object v4, v2, Lio/intercom/a/a/a/c/b/g$c;->cIL:Lio/intercom/a/a/a/c/h;

    new-instance v5, Lio/intercom/a/a/a/c/b/d;

    iget-object v6, v2, Lio/intercom/a/a/a/c/b/g$c;->cJH:Lio/intercom/a/a/a/c/l;

    iget-object v7, v2, Lio/intercom/a/a/a/c/b/g$c;->cJI:Lio/intercom/a/a/a/c/b/t;

    invoke-direct {v5, v6, v7, v3}, Lio/intercom/a/a/a/c/b/d;-><init>(Lio/intercom/a/a/a/c/d;Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)V

    invoke-interface {v1, v4, v5}, Lio/intercom/a/a/a/c/b/b/a;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/b/a$b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, v2, Lio/intercom/a/a/a/c/b/g$c;->cJI:Lio/intercom/a/a/a/c/b/t;

    invoke-virtual {v1}, Lio/intercom/a/a/a/c/b/t;->unlock()V

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/t;->unlock()V

    :cond_3
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ic()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJx:Lio/intercom/a/a/a/c/h;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cJz:Lio/intercom/a/a/a/c/a;

    invoke-virtual {v0, v1, v3, v2}, Lio/intercom/a/a/a/c/b/p;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a;Ljava/lang/Class;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, v2, Lio/intercom/a/a/a/c/b/g$c;->cJI:Lio/intercom/a/a/a/c/b/t;

    invoke-virtual {v2}, Lio/intercom/a/a/a/c/b/t;->unlock()V

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/t;->unlock()V

    :cond_4
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ic()V

    throw v1

    :cond_5
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->If()V

    goto :goto_2

    :cond_6
    move-object v0, v2

    move-object v3, v1

    goto :goto_1
.end method

.method private a(Lio/intercom/a/a/a/c/a/b;Ljava/lang/Object;Lio/intercom/a/a/a/c/a;)Lio/intercom/a/a/a/c/b/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/a/b",
            "<*>;TData;",
            "Lio/intercom/a/a/a/c/a;",
            ")",
            "Lio/intercom/a/a/a/c/b/u",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/a/a/c/b/p;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/b/f;->A(Ljava/lang/Class;)Lio/intercom/a/a/a/c/b/s;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lio/intercom/a/a/a/c/b/g;->a(Ljava/lang/Object;Lio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/b/s;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Decoded result "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lio/intercom/a/a/a/c/b/g;->a(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    throw v0
.end method

.method private a(Ljava/lang/Object;Lio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/b/s;)Lio/intercom/a/a/a/c/b/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lio/intercom/a/a/a/c/a;",
            "Lio/intercom/a/a/a/c/b/s",
            "<TData;TResourceType;TR;>;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/intercom/a/a/a/c/b/p;
        }
    .end annotation

    invoke-direct {p0, p2}, Lio/intercom/a/a/a/c/b/g;->a(Lio/intercom/a/a/a/c/a;)Lio/intercom/a/a/a/c/j;

    move-result-object v2

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cFu:Lio/intercom/a/a/a/e;

    iget-object v0, v0, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    iget-object v0, v0, Lio/intercom/a/a/a/h;->cGa:Lio/intercom/a/a/a/c/a/d;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/c/a/d;->at(Ljava/lang/Object;)Lio/intercom/a/a/a/c/a/c;

    move-result-object v1

    :try_start_0
    iget v3, p0, Lio/intercom/a/a/a/c/b/g;->width:I

    iget v4, p0, Lio/intercom/a/a/a/c/b/g;->height:I

    new-instance v5, Lio/intercom/a/a/a/c/b/g$b;

    invoke-direct {v5, p0, p2}, Lio/intercom/a/a/a/c/b/g$b;-><init>(Lio/intercom/a/a/a/c/b/g;Lio/intercom/a/a/a/c/a;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lio/intercom/a/a/a/c/b/s;->a(Lio/intercom/a/a/a/c/a/c;Lio/intercom/a/a/a/c/j;IILio/intercom/a/a/a/c/b/h$a;)Lio/intercom/a/a/a/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/c;->cleanup()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/c;->cleanup()V

    throw v0
.end method

.method private a(Lio/intercom/a/a/a/c/a;)Lio/intercom/a/a/a/c/j;
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cIZ:Lio/intercom/a/a/a/c/j;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lio/intercom/a/a/a/c/d/a/k;->cNS:Lio/intercom/a/a/a/c/i;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lio/intercom/a/a/a/c/a;->cHF:Lio/intercom/a/a/a/c/a;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    iget-boolean v1, v1, Lio/intercom/a/a/a/c/b/f;->cJi:Z

    if-eqz v1, :cond_0

    :cond_2
    new-instance v0, Lio/intercom/a/a/a/c/j;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/j;-><init>()V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/j;)V

    sget-object v1, Lio/intercom/a/a/a/c/d/a/k;->cNS:Lio/intercom/a/a/a/c/i;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/c/j;

    goto :goto_0
.end method

.method static synthetic a(Lio/intercom/a/a/a/c/b/g;)Lio/intercom/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cFu:Lio/intercom/a/a/a/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    const-string v1, "DecodeJob"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", load key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJp:Lio/intercom/a/a/a/c/b/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final HY()V
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/b/g$f;->cJN:Lio/intercom/a/a/a/c/b/g$f;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJs:Lio/intercom/a/a/a/c/b/g$f;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJq:Lio/intercom/a/a/a/c/b/g$a;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/c/b/g$a;->b(Lio/intercom/a/a/a/c/b/g;)V

    return-void
.end method

.method final Id()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJo:Lio/intercom/a/a/a/c/b/g$e;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/g$e;->reset()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJn:Lio/intercom/a/a/a/c/b/g$c;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/g$c;->cIL:Lio/intercom/a/a/a/c/h;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/g$c;->cJH:Lio/intercom/a/a/a/c/l;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/g$c;->cJI:Lio/intercom/a/a/a/c/b/t;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cGk:Ljava/lang/Object;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cIX:Lio/intercom/a/a/a/c/h;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cJb:Ljava/lang/Class;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cGh:Ljava/lang/Class;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cIZ:Lio/intercom/a/a/a/c/j;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cJg:Lio/intercom/a/a/a/g;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->cJd:Ljava/util/Map;

    iput-object v2, v0, Lio/intercom/a/a/a/c/b/f;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/f;->cJa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v3, v0, Lio/intercom/a/a/a/c/b/f;->cJe:Z

    iget-object v1, v0, Lio/intercom/a/a/a/c/b/f;->cIO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v3, v0, Lio/intercom/a/a/a/c/b/f;->cJf:Z

    iput-boolean v3, p0, Lio/intercom/a/a/a/c/b/g;->cJC:Z

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cFu:Lio/intercom/a/a/a/e;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cIX:Lio/intercom/a/a/a/c/h;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cIZ:Lio/intercom/a/a/a/c/j;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJg:Lio/intercom/a/a/a/g;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJp:Lio/intercom/a/a/a/c/b/m;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJq:Lio/intercom/a/a/a/c/b/g$a;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJB:Lio/intercom/a/a/a/c/b/e;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJv:Ljava/lang/Thread;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJw:Lio/intercom/a/a/a/c/h;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJy:Ljava/lang/Object;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJz:Lio/intercom/a/a/a/c/a;

    iput-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJA:Lio/intercom/a/a/a/c/a/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/intercom/a/a/a/c/b/g;->cJt:J

    iput-boolean v3, p0, Lio/intercom/a/a/a/c/b/g;->cIs:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJm:Landroid/support/v4/g/k$a;

    invoke-interface {v0, p0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Ij()Lio/intercom/a/a/a/i/a/b;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJl:Lio/intercom/a/a/a/i/a/b;

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/c/b/g$g;)Lio/intercom/a/a/a/c/b/g$g;
    .locals 3

    :goto_0
    sget-object v0, Lio/intercom/a/a/a/c/b/g$1;->cJE:[I

    invoke-virtual {p1}, Lio/intercom/a/a/a/c/b/g$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized stage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/i;->Ip()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/intercom/a/a/a/c/b/g$g;->cJR:Lio/intercom/a/a/a/c/b/g$g;

    :goto_1
    return-object v0

    :cond_0
    sget-object p1, Lio/intercom/a/a/a/c/b/g$g;->cJR:Lio/intercom/a/a/a/c/b/g$g;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/i;->Iq()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/intercom/a/a/a/c/b/g$g;->cJS:Lio/intercom/a/a/a/c/b/g$g;

    goto :goto_1

    :cond_1
    sget-object p1, Lio/intercom/a/a/a/c/b/g$g;->cJS:Lio/intercom/a/a/a/c/b/g$g;

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/g;->cJu:Z

    if-eqz v0, :cond_2

    sget-object v0, Lio/intercom/a/a/a/c/b/g$g;->cJV:Lio/intercom/a/a/a/c/b/g$g;

    goto :goto_1

    :cond_2
    sget-object v0, Lio/intercom/a/a/a/c/b/g$g;->cJT:Lio/intercom/a/a/a/c/b/g$g;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lio/intercom/a/a/a/c/b/g$g;->cJV:Lio/intercom/a/a/a/c/b/g$g;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lio/intercom/a/a/a/c/h;Ljava/lang/Exception;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Ljava/lang/Exception;",
            "Lio/intercom/a/a/a/c/a/b",
            "<*>;",
            "Lio/intercom/a/a/a/c/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    new-instance v0, Lio/intercom/a/a/a/c/b/p;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lio/intercom/a/a/a/c/a/b;->HU()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lio/intercom/a/a/a/c/b/p;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/a;Ljava/lang/Class;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJv:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    sget-object v0, Lio/intercom/a/a/a/c/b/g$f;->cJN:Lio/intercom/a/a/a/c/b/g$f;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJs:Lio/intercom/a/a/a/c/b/g$f;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJq:Lio/intercom/a/a/a/c/b/g$a;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/c/b/g$a;->b(Lio/intercom/a/a/a/c/b/g;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->If()V

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/a/a/c/h;Ljava/lang/Object;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/c/a/b",
            "<*>;",
            "Lio/intercom/a/a/a/c/a;",
            "Lio/intercom/a/a/a/c/h;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/g;->cJw:Lio/intercom/a/a/a/c/h;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/g;->cJy:Ljava/lang/Object;

    iput-object p3, p0, Lio/intercom/a/a/a/c/b/g;->cJA:Lio/intercom/a/a/a/c/a/b;

    iput-object p4, p0, Lio/intercom/a/a/a/c/b/g;->cJz:Lio/intercom/a/a/a/c/a;

    iput-object p5, p0, Lio/intercom/a/a/a/c/b/g;->cJx:Lio/intercom/a/a/a/c/h;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJv:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    sget-object v0, Lio/intercom/a/a/a/c/b/g$f;->cJO:Lio/intercom/a/a/a/c/b/g$f;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJs:Lio/intercom/a/a/a/c/b/g$f;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJq:Lio/intercom/a/a/a/c/b/g$a;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/c/b/g$a;->b(Lio/intercom/a/a/a/c/b/g;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DecodeJob.decodeFromRetrievedData"

    invoke-static {v0}, Landroid/support/v4/d/d;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ii()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    throw v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lio/intercom/a/a/a/c/b/g;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJg:Lio/intercom/a/a/a/g;

    invoke-virtual {v0}, Lio/intercom/a/a/a/g;->ordinal()I

    move-result v0

    iget-object v1, p1, Lio/intercom/a/a/a/c/b/g;->cJg:Lio/intercom/a/a/a/g;

    invoke-virtual {v1}, Lio/intercom/a/a/a/g;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/c/b/g;->order:I

    iget v1, p1, Lio/intercom/a/a/a/c/b/g;->order:I

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final run()V
    .locals 5

    const-string v0, "DecodeJob#run"

    invoke-static {v0}, Landroid/support/v4/d/d;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/g;->cJA:Lio/intercom/a/a/a/c/a/b;

    :try_start_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/b/g;->cIs:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ig()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    :cond_0
    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lio/intercom/a/a/a/c/b/g$1;->cJD:[I

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJs:Lio/intercom/a/a/a/c/b/g$f;

    invoke-virtual {v2}, Lio/intercom/a/a/a/c/b/g$f;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized run reason: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/g;->cJs:Lio/intercom/a/a/a/c/b/g$f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "DecodeJob"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DecodeJob"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lio/intercom/a/a/a/c/b/g;->cIs:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    sget-object v3, Lio/intercom/a/a/a/c/b/g$g;->cJU:Lio/intercom/a/a/a/c/b/g$g;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/g;->cJk:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ig()V

    :cond_3
    iget-boolean v2, p0, Lio/intercom/a/a/a/c/b/g;->cIs:Z

    if-nez v2, :cond_6

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    :cond_4
    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    throw v0

    :pswitch_0
    :try_start_3
    sget-object v0, Lio/intercom/a/a/a/c/b/g$g;->cJQ:Lio/intercom/a/a/a/c/b/g$g;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/c/b/g;->a(Lio/intercom/a/a/a/c/b/g$g;)Lio/intercom/a/a/a/c/b/g$g;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJr:Lio/intercom/a/a/a/c/b/g$g;

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ie()Lio/intercom/a/a/a/c/b/e;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/g;->cJB:Lio/intercom/a/a/a/c/b/e;

    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->If()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    :cond_5
    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    goto/16 :goto_0

    :pswitch_1
    :try_start_4
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->If()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lio/intercom/a/a/a/c/b/g;->Ii()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    :cond_7
    invoke-static {}, Landroid/support/v4/d/d;->endSection()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
