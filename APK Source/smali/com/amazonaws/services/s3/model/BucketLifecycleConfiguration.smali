.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;,
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;,
        Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    }
.end annotation


# instance fields
.field public aqs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;->aqs:Ljava/util/List;

    return-void
.end method
