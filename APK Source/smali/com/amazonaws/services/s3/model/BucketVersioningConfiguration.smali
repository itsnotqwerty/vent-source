.class public Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
.super Ljava/lang/Object;


# instance fields
.field public aqK:Ljava/lang/Boolean;

.field public aqr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->aqK:Ljava/lang/Boolean;

    const-string v0, "Off"

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->aqr:Ljava/lang/String;

    return-void
.end method
