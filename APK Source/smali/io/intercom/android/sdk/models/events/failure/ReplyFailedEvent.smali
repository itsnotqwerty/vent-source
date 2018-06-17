.class public Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;
.super Ljava/lang/Object;


# instance fields
.field private final isUpload:Z

.field private final partId:Ljava/lang/String;

.field private final position:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->position:I

    iput-object p3, p0, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->partId:Ljava/lang/String;

    iput-boolean p2, p0, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->isUpload:Z

    return-void
.end method


# virtual methods
.method public getPartId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->partId:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->position:I

    return v0
.end method

.method public isUpload()Z
    .locals 1

    iget-boolean v0, p0, Lio/intercom/android/sdk/models/events/failure/ReplyFailedEvent;->isUpload:Z

    return v0
.end method
