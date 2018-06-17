.class public final Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/blocks/models/BlockAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field contentType:Ljava/lang/String;

.field id:I

.field name:Ljava/lang/String;

.field size:J

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/intercom/android/sdk/blocks/models/BlockAttachment;
    .locals 1

    new-instance v0, Lio/intercom/android/sdk/blocks/models/BlockAttachment;

    invoke-direct {v0, p0}, Lio/intercom/android/sdk/blocks/models/BlockAttachment;-><init>(Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;)V

    return-object v0
.end method

.method public final withContentType(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public final withId(I)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
    .locals 0

    iput p1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->id:I

    return-object p0
.end method

.method public final withName(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final withSize(J)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
    .locals 1

    iput-wide p1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->size:J

    return-object p0
.end method

.method public final withUrl(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/models/BlockAttachment$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
