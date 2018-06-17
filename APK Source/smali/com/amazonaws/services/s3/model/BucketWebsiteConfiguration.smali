.class public Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
.super Ljava/lang/Object;


# instance fields
.field public aqL:Ljava/lang/String;

.field public aqM:Ljava/lang/String;

.field public aqN:Lcom/amazonaws/services/s3/model/RedirectRule;

.field public aqO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->aqO:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->aqO:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->aqL:Ljava/lang/String;

    return-void
.end method
