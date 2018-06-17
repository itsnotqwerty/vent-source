.class public Lcom/layer/sdk/internal/lsdkd/lsdka/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;,
        Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Z

.field private c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

.field private d:Ljava/lang/Long;

.field private e:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/layer/sdk/internal/lsdkk/m$g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/layer/sdk/internal/lsdkd/lsdka/o;",
            ">;)",
            "Lcom/layer/sdk/internal/lsdkk/m$g;"
        }
    .end annotation

    new-instance v1, Lcom/layer/sdk/internal/lsdkk/m$g;

    invoke-direct {v1}, Lcom/layer/sdk/internal/lsdkk/m$g;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    invoke-virtual {v1, v3, v4}, Lcom/layer/sdk/internal/lsdkk/m$g;->a(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    return-void
.end method

.method public a(Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b:Z

    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b:Z

    return v0
.end method

.method public c()Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    return-object v0
.end method

.method public c(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h:Ljava/lang/Long;

    return-void
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public e()Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/layer/sdk/internal/lsdkd/lsdka/o;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    if-nez v2, :cond_5

    :cond_7
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-virtual {v0}, Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteKeyedValueImpl{mDatabaseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->c:Lcom/layer/sdk/internal/lsdkd/lsdka/o$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mObjectDatabaseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->e:Lcom/layer/sdk/internal/lsdkd/lsdka/o$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/o;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
