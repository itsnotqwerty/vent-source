.class public Lio/intercom/android/sdk/models/GifResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/android/sdk/models/GifResponse$Builder;
    }
.end annotation


# instance fields
.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/models/GifResponse;->results:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public results()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/intercom/android/sdk/blocks/models/Block;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/android/sdk/models/GifResponse;->results:Ljava/util/List;

    return-object v0
.end method
