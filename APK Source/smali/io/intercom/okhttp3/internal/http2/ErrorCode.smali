.class public final enum Lio/intercom/okhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/okhttp3/internal/http2/ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/okhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lio/intercom/okhttp3/internal/http2/ErrorCode;

.field public static final enum FLOW_CONTROL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lio/intercom/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    const-string v1, "PROTOCOL_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lio/intercom/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lio/intercom/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    const-string v1, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lio/intercom/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lio/intercom/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    new-instance v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lio/intercom/okhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->CANCEL:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    const/4 v0, 0x6

    new-array v0, v0, [Lio/intercom/okhttp3/internal/http2/ErrorCode;

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lio/intercom/okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/intercom/okhttp3/internal/http2/ErrorCode;->CANCEL:Lio/intercom/okhttp3/internal/http2/ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->$VALUES:[Lio/intercom/okhttp3/internal/http2/ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->httpCode:I

    return-void
.end method

.method public static fromHttp2(I)Lio/intercom/okhttp3/internal/http2/ErrorCode;
    .locals 5

    invoke-static {}, Lio/intercom/okhttp3/internal/http2/ErrorCode;->values()[Lio/intercom/okhttp3/internal/http2/ErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->httpCode:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/okhttp3/internal/http2/ErrorCode;
    .locals 1

    const-class v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;

    return-object v0
.end method

.method public static values()[Lio/intercom/okhttp3/internal/http2/ErrorCode;
    .locals 1

    sget-object v0, Lio/intercom/okhttp3/internal/http2/ErrorCode;->$VALUES:[Lio/intercom/okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0}, [Lio/intercom/okhttp3/internal/http2/ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/okhttp3/internal/http2/ErrorCode;

    return-object v0
.end method
