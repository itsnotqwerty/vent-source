.class public final Lcom/google/a/b/a/l;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/a/l$a;,
        Lcom/google/a/b/a/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/u",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private bgO:Lcom/google/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final biA:Lcom/google/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/j",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final biB:Lcom/google/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final biC:Lcom/google/a/v;

.field private final biD:Lcom/google/a/b/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/a/l",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field final bil:Lcom/google/a/f;

.field private final biz:Lcom/google/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/r",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/a/r;Lcom/google/a/j;Lcom/google/a/f;Lcom/google/a/c/a;Lcom/google/a/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/r",
            "<TT;>;",
            "Lcom/google/a/j",
            "<TT;>;",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<TT;>;",
            "Lcom/google/a/v;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

    new-instance v0, Lcom/google/a/b/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/a/l$a;-><init>(Lcom/google/a/b/a/l;B)V

    iput-object v0, p0, Lcom/google/a/b/a/l;->biD:Lcom/google/a/b/a/l$a;

    iput-object p1, p0, Lcom/google/a/b/a/l;->biz:Lcom/google/a/r;

    iput-object p2, p0, Lcom/google/a/b/a/l;->biA:Lcom/google/a/j;

    iput-object p3, p0, Lcom/google/a/b/a/l;->bil:Lcom/google/a/f;

    iput-object p4, p0, Lcom/google/a/b/a/l;->biB:Lcom/google/a/c/a;

    iput-object p5, p0, Lcom/google/a/b/a/l;->biC:Lcom/google/a/v;

    return-void
.end method

.method private vq()Lcom/google/a/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/u",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/l;->bgO:Lcom/google/a/u;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/a/l;->bil:Lcom/google/a/f;

    iget-object v1, p0, Lcom/google/a/b/a/l;->biC:Lcom/google/a/v;

    iget-object v2, p0, Lcom/google/a/b/a/l;->biB:Lcom/google/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/f;->a(Lcom/google/a/v;Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/a/l;->bgO:Lcom/google/a/u;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/l;->biA:Lcom/google/a/j;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/b/a/l;->vq()Lcom/google/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/a/b/l;->c(Lcom/google/a/d/a;)Lcom/google/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/google/a/m;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/a/b/a/l;->biA:Lcom/google/a/j;

    invoke-interface {v0}, Lcom/google/a/j;->vg()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/l;->biz:Lcom/google/a/r;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/b/a/l;->vq()Lcom/google/a/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/a/d/c;->vF()Lcom/google/a/d/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/a/b/a/l;->biz:Lcom/google/a/r;

    iget-object v1, p0, Lcom/google/a/b/a/l;->biD:Lcom/google/a/b/a/l$a;

    invoke-interface {v0, p2, v1}, Lcom/google/a/r;->a(Ljava/lang/Object;Lcom/google/a/q;)Lcom/google/a/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/l;->a(Lcom/google/a/k;Lcom/google/a/d/c;)V

    goto :goto_0
.end method
