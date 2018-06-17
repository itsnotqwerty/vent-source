.class public final enum Lio/intercom/a/a/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/a/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cFM:Lio/intercom/a/a/a/f;

.field public static final enum cFN:Lio/intercom/a/a/a/f;

.field public static final enum cFO:Lio/intercom/a/a/a/f;

.field private static final synthetic cFQ:[Lio/intercom/a/a/a/f;


# instance fields
.field private final cFP:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lio/intercom/a/a/a/f;

    const-string v1, "LOW"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v3, v2}, Lio/intercom/a/a/a/f;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lio/intercom/a/a/a/f;->cFM:Lio/intercom/a/a/a/f;

    new-instance v0, Lio/intercom/a/a/a/f;

    const-string v1, "NORMAL"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v2}, Lio/intercom/a/a/a/f;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lio/intercom/a/a/a/f;->cFN:Lio/intercom/a/a/a/f;

    new-instance v0, Lio/intercom/a/a/a/f;

    const-string v1, "HIGH"

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1, v5, v2}, Lio/intercom/a/a/a/f;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lio/intercom/a/a/a/f;->cFO:Lio/intercom/a/a/a/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/intercom/a/a/a/f;

    sget-object v1, Lio/intercom/a/a/a/f;->cFM:Lio/intercom/a/a/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/a/a/a/f;->cFN:Lio/intercom/a/a/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/a/a/a/f;->cFO:Lio/intercom/a/a/a/f;

    aput-object v1, v0, v5

    sput-object v0, Lio/intercom/a/a/a/f;->cFQ:[Lio/intercom/a/a/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/intercom/a/a/a/f;->cFP:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/a/a/a/f;
    .locals 1

    const-class v0, Lio/intercom/a/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/f;

    return-object v0
.end method

.method public static values()[Lio/intercom/a/a/a/f;
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/f;->cFQ:[Lio/intercom/a/a/a/f;

    invoke-virtual {v0}, [Lio/intercom/a/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/a/a/a/f;

    return-object v0
.end method
