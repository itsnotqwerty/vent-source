.class final Lio/intercom/a/b/a/b/d$1;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/b/a/b/d;->a(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/intercom/a/b/a/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bhp:Z

.field final synthetic bhq:Z

.field final synthetic cRE:Lio/intercom/a/b/a/e;

.field final synthetic cRF:Lio/intercom/a/b/a/c/a;

.field final synthetic cRG:Lio/intercom/a/b/a/b/d;

.field private cRs:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/b/d;ZZLio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/b/a/b/d$1;->cRG:Lio/intercom/a/b/a/b/d;

    iput-boolean p2, p0, Lio/intercom/a/b/a/b/d$1;->bhp:Z

    iput-boolean p3, p0, Lio/intercom/a/b/a/b/d$1;->bhq:Z

    iput-object p4, p0, Lio/intercom/a/b/a/b/d$1;->cRE:Lio/intercom/a/b/a/e;

    iput-object p5, p0, Lio/intercom/a/b/a/b/d$1;->cRF:Lio/intercom/a/b/a/c/a;

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    return-void
.end method

.method private Ke()Lio/intercom/a/b/a/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/b/d$1;->cRs:Lio/intercom/a/b/a/r;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/b/d$1;->cRE:Lio/intercom/a/b/a/e;

    iget-object v1, p0, Lio/intercom/a/b/a/b/d$1;->cRG:Lio/intercom/a/b/a/b/d;

    iget-object v2, p0, Lio/intercom/a/b/a/b/d$1;->cRF:Lio/intercom/a/b/a/c/a;

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/s;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/b/a/b/d$1;->cRs:Lio/intercom/a/b/a/r;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/a/b/a/b/d$1;->bhp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/a;->skipValue()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/b/a/b/d$1;->Ke()Lio/intercom/a/b/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/intercom/a/b/a/b/d$1;->bhq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/b/a/b/d$1;->Ke()Lio/intercom/a/b/a/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method
