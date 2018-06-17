.class public Lio/intercom/android/sdk/models/events/UploadEvent;
.super Ljava/lang/Object;


# instance fields
.field private final size:J

.field private final tempPartId:Ljava/lang/String;

.field private final tempPartPosition:I

.field private final upload:Lio/intercom/android/sdk/models/Upload;


# direct methods
.method public constructor <init>(Lio/intercom/android/sdk/models/Upload;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->upload:Lio/intercom/android/sdk/models/Upload;

    iput-wide p2, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->size:J

    iput p4, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->tempPartPosition:I

    iput-object p5, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->tempPartId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->size:J

    return-wide v0
.end method

.method public getTempPartId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->tempPartId:Ljava/lang/String;

    return-object v0
.end method

.method public getTempPartPosition()I
    .locals 1

    iget v0, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->tempPartPosition:I

    return v0
.end method

.method public getUpload()Lio/intercom/android/sdk/models/Upload;
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/models/events/UploadEvent;->upload:Lio/intercom/android/sdk/models/Upload;

    return-object v0
.end method
