.class public Lcom/amazonaws/AmazonWebServiceResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public ame:Lcom/amazonaws/ResponseMetadata;

.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final jp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->ame:Lcom/amazonaws/ResponseMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->ame:Lcom/amazonaws/ResponseMetadata;

    invoke-virtual {v0}, Lcom/amazonaws/ResponseMetadata;->jp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
