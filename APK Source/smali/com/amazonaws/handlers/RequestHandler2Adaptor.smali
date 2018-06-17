.class final Lcom/amazonaws/handlers/RequestHandler2Adaptor;
.super Lcom/amazonaws/handlers/RequestHandler2;


# instance fields
.field private final anP:Lcom/amazonaws/handlers/RequestHandler;


# direct methods
.method constructor <init>(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazonaws/handlers/RequestHandler2;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->anP:Lcom/amazonaws/handlers/RequestHandler;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->anP:Lcom/amazonaws/handlers/RequestHandler;

    iget-object v1, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->anP:Lcom/amazonaws/handlers/RequestHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/handlers/RequestHandler2Adaptor;->anP:Lcom/amazonaws/handlers/RequestHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
