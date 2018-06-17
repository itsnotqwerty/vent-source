.class final Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkd/lsdka/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:I

.field final synthetic bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;


# direct methods
.method constructor <init>(Lcom/layer/sdk/internal/lsdkd/lsdka/g;I)V
    .locals 1

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private a()Lcom/layer/sdk/internal/lsdkd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    iget v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(I)Lcom/layer/sdk/internal/lsdkd/d;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private b()Lcom/layer/sdk/internal/lsdkd/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    iget v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    invoke-virtual {v0, v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->a(I)Lcom/layer/sdk/internal/lsdkd/d;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->bra:Lcom/layer/sdk/internal/lsdkd/lsdka/g;

    invoke-virtual {v1}, Lcom/layer/sdk/internal/lsdkd/lsdka/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->a()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b()Lcom/layer/sdk/internal/lsdkd/d;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkd/lsdka/g$b;->b:I

    return v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot modify"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
