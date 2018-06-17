.class final Lio/intercom/a/a/a/c/d/e/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/e/g$a;,
        Lio/intercom/a/a/a/c/d/e/g$c;,
        Lio/intercom/a/a/a/c/d/e/g$b;
    }
.end annotation


# instance fields
.field private final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private cLa:Lio/intercom/a/a/a/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final cOG:Lio/intercom/a/a/a/b/a;

.field final cOH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/c/d/e/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private cOI:Z

.field private cOJ:Z

.field private cOK:Lio/intercom/a/a/a/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field cOL:Lio/intercom/a/a/a/c/d/e/g$a;

.field cOM:Z

.field cON:Lio/intercom/a/a/a/c/d/e/g$a;

.field cOO:Landroid/graphics/Bitmap;

.field cOP:Lio/intercom/a/a/a/c/d/e/g$a;

.field cOz:Z

.field private final handler:Landroid/os/Handler;

.field final requestManager:Lio/intercom/a/a/a/j;


# direct methods
.method private constructor <init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/j;Lio/intercom/a/a/a/b/a;Lio/intercom/a/a/a/i;Lio/intercom/a/a/a/c/m;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/a/e;",
            "Lio/intercom/a/a/a/j;",
            "Lio/intercom/a/a/a/b/a;",
            "Lio/intercom/a/a/a/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    iput-boolean v1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOz:Z

    iput-boolean v1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOI:Z

    iput-boolean v1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOJ:Z

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/e/g;->requestManager:Lio/intercom/a/a/a/j;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lio/intercom/a/a/a/c/d/e/g$c;

    invoke-direct {v2, p0}, Lio/intercom/a/a/a/c/d/e/g$c;-><init>(Lio/intercom/a/a/a/c/d/e/g;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/g;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lio/intercom/a/a/a/c/d/e/g;->cOK:Lio/intercom/a/a/a/i;

    iput-object p3, p0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-virtual {p0, p5, p6}, Lio/intercom/a/a/a/c/d/e/g;->a(Lio/intercom/a/a/a/c/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lio/intercom/a/a/a/c;Lio/intercom/a/a/a/b/a;IILio/intercom/a/a/a/c/m;Landroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c;",
            "Lio/intercom/a/a/a/b/a;",
            "II",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v1, p1, Lio/intercom/a/a/a/c;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iget-object v0, p1, Lio/intercom/a/a/a/c;->cFu:Lio/intercom/a/a/a/e;

    invoke-virtual {v0}, Lio/intercom/a/a/a/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/a/a/a/c;->ca(Landroid/content/Context;)Lio/intercom/a/a/a/j;

    move-result-object v2

    iget-object v0, p1, Lio/intercom/a/a/a/c;->cFu:Lio/intercom/a/a/a/e;

    invoke-virtual {v0}, Lio/intercom/a/a/a/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/a/a/a/c;->ca(Landroid/content/Context;)Lio/intercom/a/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/intercom/a/a/a/j;->HC()Lio/intercom/a/a/a/i;

    move-result-object v0

    sget-object v3, Lio/intercom/a/a/a/c/b/i;->cKc:Lio/intercom/a/a/a/c/b/i;

    invoke-static {v3}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/a/a/a/g/g;->Jw()Lio/intercom/a/a/a/g/g;

    move-result-object v3

    invoke-virtual {v3}, Lio/intercom/a/a/a/g/g;->Jx()Lio/intercom/a/a/a/g/g;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lio/intercom/a/a/a/g/g;->aO(II)Lio/intercom/a/a/a/g/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v4

    move-object v0, p0

    move-object v3, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/intercom/a/a/a/c/d/e/g;-><init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/j;Lio/intercom/a/a/a/b/a;Lio/intercom/a/a/a/i;Lio/intercom/a/a/a/c/m;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method final Jo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/d/e/g$a;->cOR:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOO:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method final Jp()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOz:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOI:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOJ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lio/intercom/a/a/a/i/h;->b(ZLjava/lang/String;)V

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v0}, Lio/intercom/a/a/a/b/a;->HK()V

    iput-boolean v2, p0, Lio/intercom/a/a/a/c/d/e/g;->cOJ:Z

    :cond_2
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    iput-object v5, p0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    invoke-virtual {p0, v0}, Lio/intercom/a/a/a/c/d/e/g;->a(Lio/intercom/a/a/a/c/d/e/g$a;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOI:Z

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v0}, Lio/intercom/a/a/a/b/a;->HI()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-long v0, v0

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v2}, Lio/intercom/a/a/a/b/a;->advance()V

    new-instance v2, Lio/intercom/a/a/a/c/d/e/g$a;

    iget-object v3, p0, Lio/intercom/a/a/a/c/d/e/g;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v4}, Lio/intercom/a/a/a/b/a;->HJ()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lio/intercom/a/a/a/c/d/e/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v2, p0, Lio/intercom/a/a/a/c/d/e/g;->cON:Lio/intercom/a/a/a/c/d/e/g$a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOK:Lio/intercom/a/a/a/i;

    new-instance v1, Lio/intercom/a/a/a/h/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/intercom/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lio/intercom/a/a/a/g/g;->e(Lio/intercom/a/a/a/c/h;)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->aq(Ljava/lang/Object;)Lio/intercom/a/a/a/i;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/g;->cON:Lio/intercom/a/a/a/c/d/e/g$a;

    invoke-virtual {v0, v1, v5}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;)Lio/intercom/a/a/a/g/a/h;

    goto :goto_0
.end method

.method final Jq()V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOO:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/c/b/a/e;->g(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOO:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method final a(Lio/intercom/a/a/a/c/d/e/g$a;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOI:Z

    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOz:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOP:Lio/intercom/a/a/a/c/d/e/g$a;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lio/intercom/a/a/a/c/d/e/g$a;->cOR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/g;->Jq()V

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/e/g;->cOL:Lio/intercom/a/a/a/c/d/e/g$a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/d/e/g$b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/d/e/g$b;->Jn()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    invoke-virtual {p0}, Lio/intercom/a/a/a/c/d/e/g;->Jp()V

    goto :goto_0
.end method

.method final a(Lio/intercom/a/a/a/c/m;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/m;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cLa:Lio/intercom/a/a/a/c/m;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOO:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOK:Lio/intercom/a/a/a/i;

    new-instance v1, Lio/intercom/a/a/a/g/g;

    invoke-direct {v1}, Lio/intercom/a/a/a/g/g;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i;->a(Lio/intercom/a/a/a/g/g;)Lio/intercom/a/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOK:Lio/intercom/a/a/a/i;

    return-void
.end method

.method final getFrameCount()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/e/g;->cOG:Lio/intercom/a/a/a/b/a;

    invoke-interface {v0}, Lio/intercom/a/a/a/b/a;->getFrameCount()I

    move-result v0

    return v0
.end method
