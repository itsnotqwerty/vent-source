.class final Lcom/layer/sdk/internal/telemetry/TelemetryUploadService$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/telemetry/TelemetryUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/r",
        "<",
        "Lcom/layer/sdk/internal/telemetry/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/a/q;)Lcom/google/a/k;
    .locals 3

    check-cast p1, Lcom/layer/sdk/internal/telemetry/f$a;

    new-instance v0, Lcom/google/a/n;

    invoke-direct {v0}, Lcom/google/a/n;-><init>()V

    const-string v1, "start"

    iget-object v2, p1, Lcom/layer/sdk/internal/telemetry/f$a;->btL:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/a/q;->ac(Ljava/lang/Object;)Lcom/google/a/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/n;->a(Ljava/lang/String;Lcom/google/a/k;)V

    const-string v1, "end"

    iget-object v2, p1, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/a/q;->ac(Ljava/lang/Object;)Lcom/google/a/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/n;->a(Ljava/lang/String;Lcom/google/a/k;)V

    return-object v0
.end method
