.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation


# instance fields
.field public aqB:Ljava/util/Date;

.field public aqt:I

.field public aqu:Lcom/amazonaws/services/s3/model/StorageClass;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->aqt:I

    return-void
.end method
