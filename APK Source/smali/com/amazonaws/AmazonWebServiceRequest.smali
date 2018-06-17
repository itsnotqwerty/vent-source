.class public abstract Lcom/amazonaws/AmazonWebServiceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final ama:Lcom/amazonaws/RequestClientOptions;

.field protected amb:Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public amc:Lcom/amazonaws/auth/AWSCredentials;

.field private amd:Lcom/amazonaws/AmazonWebServiceRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazonaws/RequestClientOptions;

    invoke-direct {v0}, Lcom/amazonaws/RequestClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceRequest;->ama:Lcom/amazonaws/RequestClientOptions;

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->jo()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method public jo()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/AmazonWebServiceRequest;

    iput-object p0, v0, Lcom/amazonaws/AmazonWebServiceRequest;->amd:Lcom/amazonaws/AmazonWebServiceRequest;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
