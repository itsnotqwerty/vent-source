.class public final Lc/a/a/b/e$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field private b:Z

.field private bMw:[B

.field final synthetic cVF:Lc/a/a/b/e;


# direct methods
.method protected constructor <init>(Lc/a/a/b/e;)V
    .locals 1

    iput-object p1, p0, Lc/a/a/b/e$e;->cVF:Lc/a/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lc/a/a/b/e$e;->bMw:[B

    return-void
.end method


# virtual methods
.method protected final LQ()B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lc/a/a/b/e$e;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lc/a/a/b/e$e;->b:Z

    :goto_0
    iget-object v0, p0, Lc/a/a/b/e$e;->bMw:[B

    aget-byte v0, v0, v3

    return v0

    :cond_0
    iget-object v0, p0, Lc/a/a/b/e$e;->cVF:Lc/a/a/b/e;

    iget-object v0, v0, Lc/a/a/b/e;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/e$e;->bMw:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc/a/a/d/c;->h([BI)I

    goto :goto_0
.end method

.method protected final LR()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v2, 0x1

    iget-boolean v0, p0, Lc/a/a/b/e$e;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/a/a/b/e$e;->cVF:Lc/a/a/b/e;

    iget-object v0, v0, Lc/a/a/b/e;->cVI:Lc/a/a/d/c;

    iget-object v1, p0, Lc/a/a/b/e$e;->bMw:[B

    invoke-virtual {v0, v1, v2}, Lc/a/a/d/c;->h([BI)I

    :cond_0
    iput-boolean v2, p0, Lc/a/a/b/e$e;->b:Z

    iget-object v0, p0, Lc/a/a/b/e$e;->bMw:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method
