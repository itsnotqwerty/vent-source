.class public Lcom/amazonaws/event/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;


# instance fields
.field private final anL:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private anM:I

.field private anN:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anL:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    return-void
.end method

.method private cp(I)V
    .locals 4

    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anL:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    :cond_0
    return-void
.end method

.method private jD()V
    .locals 4

    iget-boolean v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anN:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->co(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anL:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anL:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    :cond_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->jD()V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;->cp(I)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->jD()V

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/amazonaws/event/ProgressReportingInputStream;->cp(I)V

    :cond_1
    return v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->co(I)V

    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anL:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->anM:I

    return-void
.end method
