.class Lcom/layer/sdk/internal/telemetry/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/telemetry/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/layer/sdk/internal/telemetry/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field btL:Ljava/util/Calendar;
    .annotation runtime Lcom/google/a/a/c;
        value = "start"
    .end annotation
.end field

.field btM:Ljava/util/Calendar;
    .annotation runtime Lcom/google/a/a/c;
        value = "end"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/telemetry/f$a;->btL:Ljava/util/Calendar;

    iput-object p2, p0, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final a(Lcom/layer/sdk/internal/telemetry/f$a;)I
    .locals 2

    iget-object v0, p0, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    iget-object v1, p1, Lcom/layer/sdk/internal/telemetry/f$a;->btM:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/layer/sdk/internal/telemetry/f$a;

    invoke-virtual {p0, p1}, Lcom/layer/sdk/internal/telemetry/f$a;->a(Lcom/layer/sdk/internal/telemetry/f$a;)I

    move-result v0

    return v0
.end method
