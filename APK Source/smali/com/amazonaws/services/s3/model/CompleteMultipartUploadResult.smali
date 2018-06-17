.class public Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;


# instance fields
.field public ark:Ljava/lang/String;

.field public arl:Ljava/lang/String;

.field public arm:Ljava/lang/String;

.field public arn:Ljava/util/Date;

.field public aro:Ljava/lang/String;

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->aro:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;->arn:Ljava/util/Date;

    return-void
.end method
