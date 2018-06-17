.class public final Lio/intercom/a/a/a/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/h;


# instance fields
.field private final cIg:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Lio/intercom/a/a/a/c/i",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/i",
            "<TT;>;TT;)",
            "Lio/intercom/a/a/a/c/j;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/i",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lio/intercom/a/a/a/c/i;->cId:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lio/intercom/a/a/a/c/j;)V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    iget-object v1, p1, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->a(Landroid/support/v4/g/m;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/intercom/a/a/a/c/j;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/j;

    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    iget-object v1, p1, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/i;

    iget-object v2, p0, Lio/intercom/a/a/a/c/j;->cIg:Landroid/support/v4/g/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/g/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lio/intercom/a/a/a/c/i;->cIe:Lio/intercom/a/a/a/c/i$a;

    iget-object v4, v0, Lio/intercom/a/a/a/c/i;->cIf:[B

    if-nez v4, :cond_0

    iget-object v4, v0, Lio/intercom/a/a/a/c/i;->key:Ljava/lang/String;

    sget-object v5, Lio/intercom/a/a/a/c/h;->cIb:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v0, Lio/intercom/a/a/a/c/i;->cIf:[B

    :cond_0
    iget-object v0, v0, Lio/intercom/a/a/a/c/i;->cIf:[B

    invoke-interface {v3, v0, v2, p1}, Lio/intercom/a/a/a/c/i$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
