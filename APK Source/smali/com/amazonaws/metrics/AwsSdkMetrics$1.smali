.class final Lcom/amazonaws/metrics/AwsSdkMetrics$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/auth/AWSCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/metrics/AwsSdkMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aoN:Lcom/amazonaws/auth/PropertiesCredentials;


# direct methods
.method constructor <init>(Lcom/amazonaws/auth/PropertiesCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$1;->aoN:Lcom/amazonaws/auth/PropertiesCredentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final jy()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/metrics/AwsSdkMetrics$1;->aoN:Lcom/amazonaws/auth/PropertiesCredentials;

    return-object v0
.end method
