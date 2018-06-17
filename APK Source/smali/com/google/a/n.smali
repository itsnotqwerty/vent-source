.class public final Lcom/google/a/n;
.super Lcom/google/a/k;


# instance fields
.field public final bgU:Lcom/google/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/h",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/a/k;-><init>()V

    new-instance v0, Lcom/google/a/b/h;

    invoke-direct {v0}, Lcom/google/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/google/a/n;->bgU:Lcom/google/a/b/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/k;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/a/m;->bgT:Lcom/google/a/m;

    :cond_0
    iget-object v0, p0, Lcom/google/a/n;->bgU:Lcom/google/a/b/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/a/n;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/a/n;

    iget-object v0, p1, Lcom/google/a/n;->bgU:Lcom/google/a/b/h;

    iget-object v1, p0, Lcom/google/a/n;->bgU:Lcom/google/a/b/h;

    invoke-virtual {v0, v1}, Lcom/google/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/n;->bgU:Lcom/google/a/b/h;

    invoke-virtual {v0}, Lcom/google/a/b/h;->hashCode()I

    move-result v0

    return v0
.end method
