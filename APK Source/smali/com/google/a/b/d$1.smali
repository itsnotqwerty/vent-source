.class final Lcom/google/a/b/d$1;
.super Lcom/google/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/d;->a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
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

.field final synthetic bhp:Z

.field final synthetic bhq:Z

.field final synthetic bhr:Lcom/google/a/f;

.field final synthetic bhs:Lcom/google/a/c/a;

.field final synthetic bht:Lcom/google/a/b/d;


# direct methods
.method constructor <init>(Lcom/google/a/b/d;ZZLcom/google/a/f;Lcom/google/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/d$1;->bht:Lcom/google/a/b/d;

    iput-boolean p2, p0, Lcom/google/a/b/d$1;->bhp:Z

    iput-boolean p3, p0, Lcom/google/a/b/d$1;->bhq:Z

    iput-object p4, p0, Lcom/google/a/b/d$1;->bhr:Lcom/google/a/f;

    iput-object p5, p0, Lcom/google/a/b/d$1;->bhs:Lcom/google/a/c/a;

    invoke-direct {p0}, Lcom/google/a/u;-><init>()V

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

    iget-object v0, p0, Lcom/google/a/b/d$1;->bgO:Lcom/google/a/u;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/d$1;->bhr:Lcom/google/a/f;

    iget-object v1, p0, Lcom/google/a/b/d$1;->bht:Lcom/google/a/b/d;

    iget-object v2, p0, Lcom/google/a/b/d$1;->bhs:Lcom/google/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/f;->a(Lcom/google/a/v;Lcom/google/a/c/a;)Lcom/google/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/d$1;->bgO:Lcom/google/a/u;

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

    iget-boolean v0, p0, Lcom/google/a/b/d$1;->bhp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/a;->skipValue()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/d$1;->vq()Lcom/google/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/u;->a(Lcom/google/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/a/d/c;Ljava/lang/Object;)V
    .locals 1
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

    iget-boolean v0, p0, Lcom/google/a/b/d$1;->bhq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/a/d/c;->vF()Lcom/google/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/a/b/d$1;->vq()Lcom/google/a/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/a/u;->a(Lcom/google/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method
