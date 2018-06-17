.class public Lcom/layer/sdk/exceptions/LayerException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layer/sdk/exceptions/LayerException$Type;
    }
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# instance fields
.field private final b:Lcom/layer/sdk/exceptions/LayerException$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/exceptions/LayerException;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/exceptions/LayerException;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/exceptions/LayerException$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/exceptions/LayerException;->b:Lcom/layer/sdk/exceptions/LayerException$Type;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/layer/sdk/exceptions/LayerException;->b:Lcom/layer/sdk/exceptions/LayerException$Type;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/layer/sdk/exceptions/LayerException;->b:Lcom/layer/sdk/exceptions/LayerException$Type;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/layer/sdk/exceptions/LayerException;->b:Lcom/layer/sdk/exceptions/LayerException$Type;

    return-void
.end method

.method public static fromTransportException(Lcom/layer/b/d/m;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/layer/b/d/m;->buL:Lcom/layer/b/d/b;

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/layer/b/d/b;->name()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/layer/sdk/exceptions/LayerException$Type;->values()[Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/layer/sdk/exceptions/LayerException$Type;->name()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    invoke-direct {v0, v4, p1, p0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/layer/b/d/m;->buL:Lcom/layer/b/d/b;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/layer/sdk/exceptions/LayerException;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v1, "Cannot find matching LayerException for TransportException"

    invoke-static {v0, v1, p0}, Lcom/layer/sdk/internal/lsdkk/k;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    new-instance v0, Lcom/layer/sdk/exceptions/LayerException;

    sget-object v1, Lcom/layer/sdk/exceptions/LayerException$Type;->UNKNOWN:Lcom/layer/sdk/exceptions/LayerException$Type;

    invoke-direct {v0, v1, p1, p0}, Lcom/layer/sdk/exceptions/LayerException;-><init>(Lcom/layer/sdk/exceptions/LayerException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public getType()Lcom/layer/sdk/exceptions/LayerException$Type;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/exceptions/LayerException;->b:Lcom/layer/sdk/exceptions/LayerException$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/layer/sdk/exceptions/LayerException;->getType()Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/exceptions/LayerException;->getType()Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/exceptions/LayerException;->getType()Lcom/layer/sdk/exceptions/LayerException$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/layer/sdk/exceptions/LayerException$Type;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/layer/sdk/exceptions/LayerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
