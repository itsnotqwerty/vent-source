.class public Lcom/amazonaws/http/ExecutionContext;
.super Ljava/lang/Object;


# instance fields
.field final alX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field public amc:Lcom/amazonaws/auth/AWSCredentials;

.field public final anU:Lcom/amazonaws/util/AWSRequestMetrics;

.field anV:Ljava/lang/String;

.field private final anW:Lcom/amazonaws/AmazonWebServiceClient;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;Z",
            "Lcom/amazonaws/AmazonWebServiceClient;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->alX:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;

    invoke-direct {v0}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->anU:Lcom/amazonaws/util/AWSRequestMetrics;

    iput-object p3, p0, Lcom/amazonaws/http/ExecutionContext;->anW:Lcom/amazonaws/AmazonWebServiceClient;

    return-void

    :cond_0
    new-instance v0, Lcom/amazonaws/util/AWSRequestMetrics;

    invoke-direct {v0}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->anW:Lcom/amazonaws/AmazonWebServiceClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->anW:Lcom/amazonaws/AmazonWebServiceClient;

    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/amazonaws/auth/Signer;)V
    .locals 0

    return-void
.end method
