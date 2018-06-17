.class public final Lc/a/a/b/e$c;
.super Lc/a/a/b/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field private c:Z

.field final synthetic cVG:Lc/a/a/b/e;


# direct methods
.method protected constructor <init>(Lc/a/a/b/e;)V
    .locals 1

    iput-object p1, p0, Lc/a/a/b/e$c;->cVG:Lc/a/a/b/e;

    invoke-direct {p0, p1}, Lc/a/a/b/e$b;-><init>(Lc/a/a/b/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/b/e$c;->c:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/b/e$c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/b/e$c;->c:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc/a/a/b/e$c;->cVG:Lc/a/a/b/e;

    iget-object v0, v0, Lc/a/a/b/e;->cVI:Lc/a/a/d/c;

    invoke-static {}, Lc/a/a/b/e;->LO()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/d/c;->b([B)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/b/e$c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/b/e$c;->c:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lc/a/a/b/e$c;->cVG:Lc/a/a/b/e;

    invoke-static {}, Lc/a/a/b/e;->LO()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/b/e;->I([B)V

    goto :goto_0
.end method
