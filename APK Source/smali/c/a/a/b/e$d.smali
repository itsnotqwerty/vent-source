.class public final Lc/a/a/b/e$d;
.super Lc/a/a/b/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field private c:Z

.field final synthetic cVG:Lc/a/a/b/e;

.field private d:Z


# direct methods
.method protected constructor <init>(Lc/a/a/b/e;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p1, p0, Lc/a/a/b/e$d;->cVG:Lc/a/a/b/e;

    invoke-direct {p0, p1}, Lc/a/a/b/e$b;-><init>(Lc/a/a/b/e;)V

    iput-boolean v0, p0, Lc/a/a/b/e$d;->c:Z

    iput-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lc/a/a/b/e$d;->c:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lc/a/a/b/e$d;->c:Z

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/a/b/e$d;->cVG:Lc/a/a/b/e;

    iget-object v3, v0, Lc/a/a/b/e;->cVI:Lc/a/a/d/c;

    iget-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lc/a/a/b/e;->LP()[B

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lc/a/a/d/c;->b([B)V

    iget-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lc/a/a/b/e;->LO()[B

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected final b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lc/a/a/g;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lc/a/a/b/e$d;->c:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lc/a/a/b/e$d;->c:Z

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    return-void

    :cond_0
    iget-object v3, p0, Lc/a/a/b/e$d;->cVG:Lc/a/a/b/e;

    iget-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lc/a/a/b/e;->LP()[B

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lc/a/a/b/e;->I([B)V

    iget-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lc/a/a/b/e;->LO()[B

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected final c()Z
    .locals 1

    iget-boolean v0, p0, Lc/a/a/b/e$d;->d:Z

    return v0
.end method
