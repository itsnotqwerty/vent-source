.class final Lcom/layer/b/d/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/b/d/k;-><init>(Lcom/layer/b/d/a;Lcom/layer/b/b/a;Lcom/layer/b/a/a;ILjava/util/concurrent/ExecutorService;Lcom/layer/b/d/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/layer/b/d/k;

.field final synthetic bxn:Lcom/layer/b/d/e;


# direct methods
.method constructor <init>(Lcom/layer/b/d/k;Lcom/layer/b/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/b/d/k$1;->b:Lcom/layer/b/d/k;

    iput-object p2, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/UUID;Lcom/b/a/ac;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/layer/b/d/m;
        }
    .end annotation

    const-string v0, ":conversation_identifier"

    invoke-virtual {p2, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ":message_identifier"

    invoke-virtual {p2, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/layer/b/d/k$1;->b:Lcom/layer/b/d/k;

    invoke-static {v0, p2}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v5

    iget-object v3, v5, Lcom/layer/b/d/j;->c:Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, v5, Lcom/layer/b/d/j;->bwR:Lcom/layer/b/d/c;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/b/d/c;

    iput-object p1, v0, Lcom/layer/b/d/c;->bvS:Ljava/util/UUID;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    iget-object v4, v5, Lcom/layer/b/d/j;->bwS:Lcom/layer/b/d/h;

    iget-object v5, v5, Lcom/layer/b/d/j;->bwU:Lcom/layer/b/f/c/n;

    invoke-interface/range {v0 .. v5}, Lcom/layer/b/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/layer/b/d/h;Lcom/layer/b/f/c/n;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/ac;)Z
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    :try_start_0
    const-string v0, ":path"

    invoke-virtual {p1, v0}, Lcom/b/a/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/b/e/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Push with no path. response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push with no path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/layer/b/d/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    iget-object v1, v0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    sget-object v2, Lcom/layer/b/d/f;->bvV:Lcom/layer/b/d/f;

    if-eq v1, v2, :cond_2

    invoke-static {v5}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Push Error: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v1, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    invoke-interface {v1, v0}, Lcom/layer/b/d/e;->a(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return v4

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/layer/b/d/k;->wZ()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-static {}, Lcom/layer/b/d/k;->xa()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/layer/b/d/k$1;->a(Ljava/util/UUID;Lcom/b/a/ac;)V
    :try_end_1
    .catch Lcom/layer/b/d/m; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v5}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Push Error: "

    invoke-static {v1, v0}, Lcom/layer/b/e/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    iget-object v1, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    invoke-interface {v1, v0}, Lcom/layer/b/d/e;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v1, "/push/ack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    invoke-interface {v0}, Lcom/layer/b/d/e;->z()V

    goto :goto_0

    :cond_6
    const-string v1, "/identity/changes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/layer/b/d/k$1;->b:Lcom/layer/b/d/k;

    invoke-static {v0, p1}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v0

    iget-object v0, v0, Lcom/layer/b/d/j;->bwX:Lcom/layer/b/f/a/g;

    iget-object v1, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    invoke-interface {v1, v0}, Lcom/layer/b/d/e;->b(Lcom/layer/b/f/a/g;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/layer/b/d/k$1;->b:Lcom/layer/b/d/k;

    invoke-static {v0, p1}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v0

    iget-object v0, v0, Lcom/layer/b/d/j;->bwY:Lcom/layer/b/f/a/i;

    iget-object v1, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/layer/b/f/a/i;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/layer/b/d/e;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_8
    const-string v1, "/presence_sync"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/layer/b/d/k$1;->b:Lcom/layer/b/d/k;

    invoke-static {v0, p1}, Lcom/layer/b/d/k;->a(Lcom/layer/b/d/k;Lcom/b/a/ac;)Lcom/layer/b/d/j;

    move-result-object v0

    iget-object v0, v0, Lcom/layer/b/d/j;->bwZ:Ljava/util/List;

    iget-object v1, p0, Lcom/layer/b/d/k$1;->bxn:Lcom/layer/b/d/e;

    invoke-interface {v1, v0}, Lcom/layer/b/d/e;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/layer/b/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push from unexpected path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/layer/b/e/a;->c(Ljava/lang/String;)V

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Push from unexpected path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/layer/b/d/m; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method
