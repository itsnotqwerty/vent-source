.class public Lcom/amazonaws/services/s3/model/ListObjectsV2Result;
.super Ljava/lang/Object;


# instance fields
.field public aqv:Ljava/lang/String;

.field public arF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/S3ObjectSummary;",
            ">;"
        }
    .end annotation
.end field

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

.field public arI:I

.field public arJ:Ljava/lang/String;

.field public arK:Ljava/lang/String;

.field public arL:I

.field public arM:Ljava/lang/String;

.field public arN:Ljava/lang/String;

.field public arO:Ljava/lang/String;

.field public ark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arF:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/ListObjectsV2Result;->arG:Ljava/util/List;

    return-void
.end method
