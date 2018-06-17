.class public Lcom/amazonaws/services/s3/model/MultipartUploadListing;
.super Ljava/lang/Object;


# instance fields
.field public aqv:Ljava/lang/String;

.field public arG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public arH:Z

.field public arK:Ljava/lang/String;

.field public arM:Ljava/lang/String;

.field public arT:Ljava/lang/String;

.field public arU:Ljava/lang/String;

.field public arV:I

.field public arW:Ljava/lang/String;

.field public arX:Ljava/lang/String;

.field public arY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field

.field public ark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/MultipartUploadListing;->arG:Ljava/util/List;

    return-void
.end method
