.class final Lio/intercom/a/a/a/c/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/b$a;
.implements Lio/intercom/a/a/a/c/b/e;
.implements Lio/intercom/a/a/a/c/b/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/b$a",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/intercom/a/a/a/c/b/e;",
        "Lio/intercom/a/a/a/c/b/e$a;"
    }
.end annotation


# instance fields
.field private final cIP:Lio/intercom/a/a/a/c/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/f",
            "<*>;"
        }
    .end annotation
.end field

.field private final cIQ:Lio/intercom/a/a/a/c/b/e$a;

.field private volatile cIV:Lio/intercom/a/a/a/c/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/c/n$a",
            "<*>;"
        }
    .end annotation
.end field

.field private cLc:I

.field private cLd:Lio/intercom/a/a/a/c/b/b;

.field private cLe:Ljava/lang/Object;

.field private cLf:Lio/intercom/a/a/a/c/b/c;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/f",
            "<*>;",
            "Lio/intercom/a/a/a/c/b/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iput-object p2, p0, Lio/intercom/a/a/a/c/b/y;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    return-void
.end method


# virtual methods
.method public final HW()Z
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cLe:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cLe:Ljava/lang/Object;

    iput-object v10, p0, Lio/intercom/a/a/a/c/b/y;->cLe:Ljava/lang/Object;

    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v4

    :try_start_0
    iget-object v2, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v2, v2, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    iget-object v2, v2, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    iget-object v2, v2, Lio/intercom/a/a/a/h;->cFX:Lio/intercom/a/a/a/f/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Lio/intercom/a/a/a/f/a;->I(Ljava/lang/Class;)Lio/intercom/a/a/a/c/d;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v6, Lio/intercom/a/a/a/c/b/d;

    iget-object v7, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v7, v7, Lio/intercom/a/a/a/c/b/f;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-direct {v6, v2, v0, v7}, Lio/intercom/a/a/a/c/b/d;-><init>(Lio/intercom/a/a/a/c/d;Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)V

    new-instance v7, Lio/intercom/a/a/a/c/b/c;

    iget-object v8, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v8, v8, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    iget-object v9, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v9, v9, Lio/intercom/a/a/a/c/b/f;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-direct {v7, v8, v9}, Lio/intercom/a/a/a/c/b/c;-><init>(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/h;)V

    iput-object v7, p0, Lio/intercom/a/a/a/c/b/y;->cLf:Lio/intercom/a/a/a/c/b/c;

    iget-object v7, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    invoke-virtual {v7}, Lio/intercom/a/a/a/c/b/f;->HZ()Lio/intercom/a/a/a/c/b/b/a;

    move-result-object v7

    iget-object v8, p0, Lio/intercom/a/a/a/c/b/y;->cLf:Lio/intercom/a/a/a/c/b/c;

    invoke-interface {v7, v8, v6}, Lio/intercom/a/a/a/c/b/b/a;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/b/a$b;)V

    const-string v6, "SourceGenerator"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SourceGenerator"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Finished encoding source to cache, key: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lio/intercom/a/a/a/c/b/y;->cLf:Lio/intercom/a/a/a/c/b/c;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", encoder: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    new-instance v0, Lio/intercom/a/a/a/c/b/b;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v2, v2, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    invoke-direct {v0, v2, v4, p0}, Lio/intercom/a/a/a/c/b/b;-><init>(Ljava/util/List;Lio/intercom/a/a/a/c/b/f;Lio/intercom/a/a/a/c/b/e$a;)V

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cLd:Lio/intercom/a/a/a/c/b/b;

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cLd:Lio/intercom/a/a/a/c/b/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cLd:Lio/intercom/a/a/a/c/b/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/b;->HW()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    return v0

    :cond_2
    :try_start_1
    new-instance v1, Lio/intercom/a/a/a/h$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/h$e;-><init>(Ljava/lang/Class;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->cleanup()V

    throw v0

    :cond_3
    iput-object v10, p0, Lio/intercom/a/a/a/c/b/y;->cLd:Lio/intercom/a/a/a/c/b/b;

    iput-object v10, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    move v2, v3

    :cond_4
    :goto_1
    if-nez v2, :cond_7

    iget v0, p0, Lio/intercom/a/a/a/c/b/y;->cLc:I

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    invoke-virtual {v4}, Lio/intercom/a/a/a/c/b/f;->Ia()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    invoke-virtual {v0}, Lio/intercom/a/a/a/c/b/f;->Ia()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lio/intercom/a/a/a/c/b/y;->cLc:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lio/intercom/a/a/a/c/b/y;->cLc:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c/n$a;

    iput-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/f;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v4, v4, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v4}, Lio/intercom/a/a/a/c/a/b;->HT()Lio/intercom/a/a/a/c/a;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/intercom/a/a/a/c/b/i;->b(Lio/intercom/a/a/a/c/a;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v4, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v4, v4, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v4}, Lio/intercom/a/a/a/c/a/b;->HU()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/intercom/a/a/a/c/b/f;->z(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v2, v2, Lio/intercom/a/a/a/c/b/f;->cJg:Lio/intercom/a/a/a/g;

    invoke-interface {v0, v2, p0}, Lio/intercom/a/a/a/c/a/b;->a(Lio/intercom/a/a/a/g;Lio/intercom/a/a/a/c/a/b$a;)V

    move v2, v1

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public final HY()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Lio/intercom/a/a/a/c/h;Ljava/lang/Exception;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Ljava/lang/Exception;",
            "Lio/intercom/a/a/a/c/a/b",
            "<*>;",
            "Lio/intercom/a/a/a/c/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->HT()Lio/intercom/a/a/a/c/a;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lio/intercom/a/a/a/c/b/e$a;->a(Lio/intercom/a/a/a/c/h;Ljava/lang/Exception;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;)V

    return-void
.end method

.method public final a(Lio/intercom/a/a/a/c/h;Ljava/lang/Object;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/h;",
            "Ljava/lang/Object;",
            "Lio/intercom/a/a/a/c/a/b",
            "<*>;",
            "Lio/intercom/a/a/a/c/a;",
            "Lio/intercom/a/a/a/c/h;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->HT()Lio/intercom/a/a/a/c/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lio/intercom/a/a/a/c/b/e$a;->a(Lio/intercom/a/a/a/c/h;Ljava/lang/Object;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/h;)V

    return-void
.end method

.method public final as(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIP:Lio/intercom/a/a/a/c/b/f;

    iget-object v0, v0, Lio/intercom/a/a/a/c/b/f;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v1}, Lio/intercom/a/a/a/c/a/b;->HT()Lio/intercom/a/a/a/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/c/b/i;->b(Lio/intercom/a/a/a/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/y;->cLe:Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/e$a;->HY()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v1, v1, Lio/intercom/a/a/a/c/c/n$a;->cIS:Lio/intercom/a/a/a/c/h;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v3, v2, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v2, v2, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v2}, Lio/intercom/a/a/a/c/a/b;->HT()Lio/intercom/a/a/a/c/a;

    move-result-object v4

    iget-object v5, p0, Lio/intercom/a/a/a/c/b/y;->cLf:Lio/intercom/a/a/a/c/b/c;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lio/intercom/a/a/a/c/b/e$a;->a(Lio/intercom/a/a/a/c/h;Ljava/lang/Object;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;Lio/intercom/a/a/a/c/h;)V

    goto :goto_0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/a/b;->cancel()V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/y;->cIQ:Lio/intercom/a/a/a/c/b/e$a;

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/y;->cLf:Lio/intercom/a/a/a/c/b/c;

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v2, v2, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    iget-object v3, p0, Lio/intercom/a/a/a/c/b/y;->cIV:Lio/intercom/a/a/a/c/c/n$a;

    iget-object v3, v3, Lio/intercom/a/a/a/c/c/n$a;->cMW:Lio/intercom/a/a/a/c/a/b;

    invoke-interface {v3}, Lio/intercom/a/a/a/c/a/b;->HT()Lio/intercom/a/a/a/c/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lio/intercom/a/a/a/c/b/e$a;->a(Lio/intercom/a/a/a/c/h;Ljava/lang/Exception;Lio/intercom/a/a/a/c/a/b;Lio/intercom/a/a/a/c/a;)V

    return-void
.end method
