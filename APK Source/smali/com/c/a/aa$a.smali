.class final Lcom/c/a/aa$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final bMZ:Lcom/c/a/aa;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/c/a/aa;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/c/a/aa$a;->bMZ:Lcom/c/a/aa;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/c/a/t;->bNY:Landroid/os/Handler;

    new-instance v1, Lcom/c/a/aa$a$1;

    invoke-direct {v1, p0, p1}, Lcom/c/a/aa$a$1;-><init>(Lcom/c/a/aa$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/c/a/aa$a;->bMZ:Lcom/c/a/aa;

    iget-wide v2, v0, Lcom/c/a/aa;->bOY:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/aa;->bOY:J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/c/a/aa$a;->bMZ:Lcom/c/a/aa;

    iget-wide v2, v0, Lcom/c/a/aa;->bOZ:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/aa;->bOZ:J

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/c/a/aa$a;->bMZ:Lcom/c/a/aa;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    iget v1, v0, Lcom/c/a/aa;->bPh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/c/a/aa;->bPh:I

    iget-wide v4, v0, Lcom/c/a/aa;->bPb:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/aa;->bPb:J

    iget v1, v0, Lcom/c/a/aa;->bPh:I

    iget-wide v2, v0, Lcom/c/a/aa;->bPb:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/aa;->bPe:J

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/c/a/aa$a;->bMZ:Lcom/c/a/aa;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    iget v1, v0, Lcom/c/a/aa;->bPi:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/c/a/aa;->bPi:I

    iget-wide v4, v0, Lcom/c/a/aa;->bPc:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/aa;->bPc:J

    iget v1, v0, Lcom/c/a/aa;->bPh:I

    iget-wide v2, v0, Lcom/c/a/aa;->bPc:J

    int-to-long v4, v1

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/c/a/aa;->bPf:J

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/c/a/aa$a;->bMZ:Lcom/c/a/aa;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget v2, v1, Lcom/c/a/aa;->bPg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/c/a/aa;->bPg:I

    iget-wide v2, v1, Lcom/c/a/aa;->bPa:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/c/a/aa;->bPa:J

    iget v0, v1, Lcom/c/a/aa;->bPg:I

    iget-wide v2, v1, Lcom/c/a/aa;->bPa:J

    int-to-long v4, v0

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcom/c/a/aa;->bPd:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
