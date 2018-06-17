.class public Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;
.super Lcom/layer/a/a;


# instance fields
.field private final a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

.field private final b:Lcom/layer/b/d/k;


# direct methods
.method public constructor <init>(Lcom/layer/a/b/a;Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;Lcom/layer/b/d/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/layer/a/a;-><init>(Lcom/layer/a/b/a;)V

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    iput-object p3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->b:Lcom/layer/b/d/k;

    return-void
.end method


# virtual methods
.method protected a(Lcom/layer/a/c/d;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->a(Lcom/layer/a/c/d;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->a:Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;

    invoke-interface {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/c$b;->r()Ljava/util/LinkedHashSet;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContentValues"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Presence updates found for more than one user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Presence updates found for more than one user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/n;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->b()Lcom/layer/sdk/messaging/Presence$PresenceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layer/sdk/messaging/Presence$PresenceStatus;->getValue()I

    move-result v3

    invoke-static {v3}, Lcom/layer/b/f/a/m;->ds(I)Lcom/layer/b/f/a/m;

    move-result-object v3

    new-instance v4, Lcom/layer/b/f/a/i;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/layer/b/f/a/i;-><init>(Ljava/lang/String;Lcom/layer/b/f/a/m;)V

    new-instance v0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/m;

    iget-object v3, p0, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->b:Lcom/layer/b/d/k;

    invoke-direct {v0, v3, v4}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/m;-><init>(Lcom/layer/b/d/k;Lcom/layer/b/f/a/i;)V

    new-array v3, v2, [Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdka/m;->b()Lcom/layer/a/c/a;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {p0, v3}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->a([Lcom/layer/a/c/d;)V

    :cond_3
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->a(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/d;

    invoke-virtual {v0}, Lcom/layer/a/c/d;->g()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdki/lsdkc/lsdkb/n;->a(Lcom/layer/a/c/d;)V

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method
