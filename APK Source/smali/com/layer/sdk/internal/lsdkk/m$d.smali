.class public abstract Lcom/layer/sdk/internal/lsdkk/m$d;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Lcom/layer/sdk/internal/lsdkk/m$c;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private a(Lcom/layer/sdk/internal/lsdkk/m$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkk/m$c;",
            ")TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/internal/lsdkk/m$c;",
            "TT;)TT;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TT;)TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-super {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/m$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$b;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-super {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-super {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/lsdkk/m$d;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-direct {p0, p1}, Lcom/layer/sdk/internal/lsdkk/m$d;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/m$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$b;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/m$d;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$c;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v0, p1}, Lcom/layer/sdk/internal/lsdkk/m$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/layer/sdk/internal/lsdkk/m$d;->a(Lcom/layer/sdk/internal/lsdkk/m$c;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$c;

    invoke-virtual {p0, p1, p2}, Lcom/layer/sdk/internal/lsdkk/m$d;->a(Lcom/layer/sdk/internal/lsdkk/m$c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
