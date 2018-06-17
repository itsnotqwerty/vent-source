.class public final Lcom/layer/b/d/m;
.super Ljava/lang/Exception;


# instance fields
.field public final buL:Lcom/layer/b/d/b;

.field public final bvU:Lcom/layer/b/d/f;

.field public final bwa:Lcom/layer/b/d/g;


# direct methods
.method public constructor <init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Lcom/layer/b/d/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p4, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    iput-object p2, p0, Lcom/layer/b/d/m;->bwa:Lcom/layer/b/d/g;

    iput-object p3, p0, Lcom/layer/b/d/m;->buL:Lcom/layer/b/d/b;

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Lcom/layer/b/d/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Lcom/layer/b/d/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/layer/b/d/g;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/layer/b/d/m;-><init>(Lcom/layer/b/d/f;Lcom/layer/b/d/g;Lcom/layer/b/d/b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransportException{mResponseType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layer/b/d/m;->bvU:Lcom/layer/b/d/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/m;->bwa:Lcom/layer/b/d/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layer/b/d/m;->buL:Lcom/layer/b/d/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
