.class public abstract Lcom/layer/a/c/b;
.super Lcom/layer/a/c/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/a/c/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Targs:",
        "Ljava/lang/Object;",
        "Tresults:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/layer/a/c/d",
        "<TTargs;TTresults;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/layer/a/c/b$a;


# direct methods
.method public constructor <init>(Lcom/layer/a/c/b$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/a/c/b$a;",
            "TTargs;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/layer/a/c/d;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/layer/a/c/b;->a:Lcom/layer/a/c/b$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/layer/a/c/d;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layer/a/c/b;->a(I)V

    return-object p0
.end method

.method public run()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/layer/a/c/b;->g()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/layer/a/c/b;->a()Lcom/layer/a/c/d;

    :cond_0
    invoke-virtual {p0}, Lcom/layer/a/c/b;->g()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    new-instance v0, Lcom/layer/a/c/e;

    const-string v2, "Task run while not ready"

    invoke-direct {v0, p0, v2}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/layer/a/c/b;->a(Lcom/layer/a/c/e;)V

    :goto_0
    invoke-virtual {p0}, Lcom/layer/a/c/b;->i()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/a/c/b;->a(I)V

    iget-object v0, p0, Lcom/layer/a/c/b;->a:Lcom/layer/a/c/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/a/c/b;->a:Lcom/layer/a/c/b$a;

    invoke-interface {v0}, Lcom/layer/a/c/b$a;->wp()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/layer/a/c/b;->a(I)V

    invoke-virtual {p0}, Lcom/layer/a/c/b;->a_()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layer/a/c/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/a/c/b;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/layer/a/c/e;

    const-string v3, "Uncaught Task exception"

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/layer/a/c/e;-><init>(Lcom/layer/a/c/d;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/layer/a/c/b;->a(Lcom/layer/a/c/e;)V

    goto :goto_0

    :cond_3
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/layer/a/c/b;->a(I)V

    invoke-virtual {p0}, Lcom/layer/a/c/b;->i()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/layer/a/c/b;->i()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/layer/a/c/e;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/layer/a/c/b;->a:Lcom/layer/a/c/b$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/layer/a/c/b;->a:Lcom/layer/a/c/b$a;

    invoke-interface {v1, v0}, Lcom/layer/a/c/b$a;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
