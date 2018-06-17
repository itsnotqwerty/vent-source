.class final Lio/intercom/a/a/a/i/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/g/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/i/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/support/v4/g/k$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final cJm:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cRd:Lio/intercom/a/a/a/i/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i/a/a$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final cRe:Lio/intercom/a/a/a/i/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i/a/a$d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;Lio/intercom/a/a/a/i/a/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/g/k$a",
            "<TT;>;",
            "Lio/intercom/a/a/a/i/a/a$a",
            "<TT;>;",
            "Lio/intercom/a/a/a/i/a/a$d",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/i/a/a$b;->cJm:Landroid/support/v4/g/k$a;

    iput-object p2, p0, Lio/intercom/a/a/a/i/a/a$b;->cRd:Lio/intercom/a/a/a/i/a/a$a;

    iput-object p3, p0, Lio/intercom/a/a/a/i/a/a$b;->cRe:Lio/intercom/a/a/a/i/a/a$d;

    return-void
.end method


# virtual methods
.method public final as()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/i/a/a$b;->cJm:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/i/a/a$b;->cRd:Lio/intercom/a/a/a/i/a/a$a;

    invoke-interface {v0}, Lio/intercom/a/a/a/i/a/a$a;->create()Ljava/lang/Object;

    move-result-object v1

    const-string v0, "FactoryPools"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FactoryPools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created new "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v0, v1, Lio/intercom/a/a/a/i/a/a$c;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lio/intercom/a/a/a/i/a/a$c;

    invoke-interface {v0}, Lio/intercom/a/a/a/i/a/a$c;->Ij()Lio/intercom/a/a/a/i/a/b;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/intercom/a/a/a/i/a/b;->bw(Z)V

    :cond_1
    return-object v1
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lio/intercom/a/a/a/i/a/a$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/intercom/a/a/a/i/a/a$c;

    invoke-interface {v0}, Lio/intercom/a/a/a/i/a/a$c;->Ij()Lio/intercom/a/a/a/i/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/i/a/b;->bw(Z)V

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/i/a/a$b;->cRe:Lio/intercom/a/a/a/i/a/a$d;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/i/a/a$d;->reset(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/intercom/a/a/a/i/a/a$b;->cJm:Landroid/support/v4/g/k$a;

    invoke-interface {v0, p1}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
