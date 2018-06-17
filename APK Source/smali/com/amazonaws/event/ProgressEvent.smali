.class public Lcom/amazonaws/event/ProgressEvent;
.super Ljava/lang/Object;


# instance fields
.field protected anG:J

.field protected anH:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazonaws/event/ProgressEvent;->anG:J

    return-void
.end method


# virtual methods
.method public final co(I)V
    .locals 0

    iput p1, p0, Lcom/amazonaws/event/ProgressEvent;->anH:I

    return-void
.end method
