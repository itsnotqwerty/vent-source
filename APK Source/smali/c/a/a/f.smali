.class public final Lc/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field private final cUU:Lc/a/a/b/h;

.field private final cUV:Lc/a/a/d/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lc/a/a/b/b$a;

    invoke-direct {v0}, Lc/a/a/b/b$a;-><init>()V

    invoke-direct {p0, v0}, Lc/a/a/f;-><init>(Lc/a/a/b/j;)V

    return-void
.end method

.method public constructor <init>(Lc/a/a/b/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/d/b;

    invoke-direct {v0}, Lc/a/a/d/b;-><init>()V

    iput-object v0, p0, Lc/a/a/f;->cUV:Lc/a/a/d/b;

    iget-object v0, p0, Lc/a/a/f;->cUV:Lc/a/a/d/b;

    invoke-interface {p1, v0}, Lc/a/a/b/j;->a(Lc/a/a/d/c;)Lc/a/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/f;->cUU:Lc/a/a/b/h;

    return-void
.end method


# virtual methods
.method public final a(Lc/a/a/c;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lc/a/a/f;->cUV:Lc/a/a/d/b;

    array-length v1, p2

    iput-object p2, v0, Lc/a/a/d/b;->bIG:[B

    const/4 v2, 0x0

    iput v2, v0, Lc/a/a/d/b;->b:I

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Lc/a/a/d/b;->c:I

    iget-object v0, p0, Lc/a/a/f;->cUU:Lc/a/a/b/h;

    invoke-interface {p1, v0}, Lc/a/a/c;->a(Lc/a/a/b/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lc/a/a/f;->cUV:Lc/a/a/d/b;

    iput-object v3, v0, Lc/a/a/d/b;->bIG:[B

    iget-object v0, p0, Lc/a/a/f;->cUU:Lc/a/a/b/h;

    invoke-virtual {v0}, Lc/a/a/b/h;->LE()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a/a/f;->cUV:Lc/a/a/d/b;

    iput-object v3, v1, Lc/a/a/d/b;->bIG:[B

    iget-object v1, p0, Lc/a/a/f;->cUU:Lc/a/a/b/h;

    invoke-virtual {v1}, Lc/a/a/b/h;->LE()V

    throw v0
.end method
