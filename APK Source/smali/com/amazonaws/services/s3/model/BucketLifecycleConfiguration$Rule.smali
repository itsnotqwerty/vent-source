.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field public aqA:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;

.field public aqr:Ljava/lang/String;

.field public aqv:Ljava/lang/String;

.field public aqw:I

.field public aqx:I

.field public aqy:Ljava/util/Date;

.field public aqz:Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqw:I

    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->aqx:I

    return-void
.end method
