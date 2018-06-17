.class public final Lio/intercom/a/b/a/b/a/l;
.super Lio/intercom/a/b/a/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/b/a/b/a/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/b/a/r",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private cRs:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cSm:Lio/intercom/a/b/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/o",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cSn:Lio/intercom/a/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cSo:Lio/intercom/a/b/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cSp:Lio/intercom/a/b/a/s;

.field private final cSq:Lio/intercom/a/b/a/b/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/b/a/l",
            "<TT;>.a;"
        }
    .end annotation
.end field

.field final gson:Lio/intercom/a/b/a/e;


# direct methods
.method public constructor <init>(Lio/intercom/a/b/a/o;Lio/intercom/a/b/a/h;Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/o",
            "<TT;>;",
            "Lio/intercom/a/b/a/h",
            "<TT;>;",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/c/a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    new-instance v0, Lio/intercom/a/b/a/b/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/intercom/a/b/a/b/a/l$a;-><init>(Lio/intercom/a/b/a/b/a/l;B)V

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cSq:Lio/intercom/a/b/a/b/a/l$a;

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/l;->cSm:Lio/intercom/a/b/a/o;

    iput-object p2, p0, Lio/intercom/a/b/a/b/a/l;->cSn:Lio/intercom/a/b/a/h;

    iput-object p3, p0, Lio/intercom/a/b/a/b/a/l;->gson:Lio/intercom/a/b/a/e;

    iput-object p4, p0, Lio/intercom/a/b/a/b/a/l;->cSo:Lio/intercom/a/b/a/c/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cSp:Lio/intercom/a/b/a/s;

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

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cRs:Lio/intercom/a/b/a/r;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/l;->gson:Lio/intercom/a/b/a/e;

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/l;->cSp:Lio/intercom/a/b/a/s;

    iget-object v2, p0, Lio/intercom/a/b/a/b/a/l;->cSo:Lio/intercom/a/b/a/c/a;

    invoke-virtual {v0, v1, v2}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/s;Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cRs:Lio/intercom/a/b/a/r;

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

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cSn:Lio/intercom/a/b/a/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/intercom/a/b/a/b/a/l;->Ke()Lio/intercom/a/b/a/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lio/intercom/a/b/a/b/j;->c(Lio/intercom/a/b/a/d/a;)Lio/intercom/a/b/a/i;

    move-result-object v0

    instance-of v0, v0, Lio/intercom/a/b/a/k;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cSn:Lio/intercom/a/b/a/h;

    invoke-interface {v0}, Lio/intercom/a/b/a/h;->JZ()Ljava/lang/Object;

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

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cSm:Lio/intercom/a/b/a/o;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/intercom/a/b/a/b/a/l;->Ke()Lio/intercom/a/b/a/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/b/a/b/a/l;->cSm:Lio/intercom/a/b/a/o;

    invoke-interface {v0}, Lio/intercom/a/b/a/o;->Kb()Lio/intercom/a/b/a/i;

    move-result-object v0

    invoke-static {v0, p1}, Lio/intercom/a/b/a/b/j;->a(Lio/intercom/a/b/a/i;Lio/intercom/a/b/a/d/c;)V

    goto :goto_0
.end method
