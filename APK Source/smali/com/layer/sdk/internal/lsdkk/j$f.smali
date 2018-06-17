.class final Lcom/layer/sdk/internal/lsdkk/j$f;
.super Ljava/lang/ref/WeakReference;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<TT;>;",
        "Lcom/layer/sdk/internal/lsdkk/j$d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:I

.field final synthetic bsQ:Lcom/layer/sdk/internal/lsdkk/j;

.field private final bsR:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/layer/sdk/internal/lsdkk/j;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/j$f;->bsQ:Lcom/layer/sdk/internal/lsdkk/j;

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/layer/sdk/internal/lsdkk/j$f;->bsR:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/layer/sdk/internal/lsdkk/j$f;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/layer/sdk/internal/lsdkk/j$d;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/j$d;

    invoke-interface {p1}, Lcom/layer/sdk/internal/lsdkk/j$d;->get()Ljava/lang/Object;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/j$f;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/layer/sdk/internal/lsdkk/j$f;->b:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/j$f;->bsR:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/layer/sdk/internal/lsdkk/j$f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
