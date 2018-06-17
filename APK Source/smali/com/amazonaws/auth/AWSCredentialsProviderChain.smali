.class public Lcom/amazonaws/auth/AWSCredentialsProviderChain;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# static fields
.field private static final alS:Lorg/apache/commons/logging/Log;


# instance fields
.field private amY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/auth/AWSCredentialsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private amZ:Z

.field private ana:Lcom/amazonaws/auth/AWSCredentialsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->alS:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public varargs constructor <init>([Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->amY:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->amZ:Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->amY:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final jy()Lcom/amazonaws/auth/AWSCredentials;
    .locals 6

    iget-boolean v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->amZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->ana:Lcom/amazonaws/auth/AWSCredentialsProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->ana:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->jy()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->amY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/AWSCredentialsProvider;

    :try_start_0
    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->jy()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentials;->jw()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentials;->jx()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->alS:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading credentials from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->ana:Lcom/amazonaws/auth/AWSCredentialsProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/amazonaws/auth/AWSCredentialsProviderChain;->alS:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to load credentials from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to load AWS credentials from any provider in the chain"

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
