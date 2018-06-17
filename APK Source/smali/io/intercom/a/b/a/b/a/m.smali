.class final Lio/intercom/a/b/a/b/a/m;
.super Lio/intercom/a/b/a/r;


# annotations
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
.field private final biJ:Ljava/lang/reflect/Type;

.field private final cRs:Lio/intercom/a/b/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/b/a/r",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cSs:Lio/intercom/a/b/a/e;


# direct methods
.method constructor <init>(Lio/intercom/a/b/a/e;Lio/intercom/a/b/a/r;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/b/a/e;",
            "Lio/intercom/a/b/a/r",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/r;-><init>()V

    iput-object p1, p0, Lio/intercom/a/b/a/b/a/m;->cSs:Lio/intercom/a/b/a/e;

    iput-object p2, p0, Lio/intercom/a/b/a/b/a/m;->cRs:Lio/intercom/a/b/a/r;

    iput-object p3, p0, Lio/intercom/a/b/a/b/a/m;->biJ:Ljava/lang/reflect/Type;

    return-void
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

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/m;->cRs:Lio/intercom/a/b/a/r;

    invoke-virtual {v0, p1}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V
    .locals 3
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

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/m;->cRs:Lio/intercom/a/b/a/r;

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/m;->biJ:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lio/intercom/a/b/a/b/a/m;->biJ:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/m;->cSs:Lio/intercom/a/b/a/e;

    invoke-static {v0}, Lio/intercom/a/b/a/c/a;->f(Ljava/lang/reflect/Type;)Lio/intercom/a/b/a/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/intercom/a/b/a/e;->a(Lio/intercom/a/b/a/c/a;)Lio/intercom/a/b/a/r;

    move-result-object v0

    instance-of v1, v0, Lio/intercom/a/b/a/b/a/i$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/intercom/a/b/a/b/a/m;->cRs:Lio/intercom/a/b/a/r;

    instance-of v1, v1, Lio/intercom/a/b/a/b/a/i$a;

    if-nez v1, :cond_2

    iget-object v0, p0, Lio/intercom/a/b/a/b/a/m;->cRs:Lio/intercom/a/b/a/r;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lio/intercom/a/b/a/r;->a(Lio/intercom/a/b/a/d/c;Ljava/lang/Object;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
