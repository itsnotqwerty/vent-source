.class public final enum Lokhttp3/internal/e/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/internal/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum dao:Lokhttp3/internal/e/b;

.field public static final enum dap:Lokhttp3/internal/e/b;

.field public static final enum daq:Lokhttp3/internal/e/b;

.field public static final enum dar:Lokhttp3/internal/e/b;

.field public static final enum das:Lokhttp3/internal/e/b;

.field public static final enum dat:Lokhttp3/internal/e/b;

.field public static final enum dau:Lokhttp3/internal/e/b;

.field public static final enum dav:Lokhttp3/internal/e/b;

.field public static final enum daw:Lokhttp3/internal/e/b;

.field public static final enum dax:Lokhttp3/internal/e/b;

.field public static final enum day:Lokhttp3/internal/e/b;

.field private static final synthetic daz:[Lokhttp3/internal/e/b;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->dao:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "PROTOCOL_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->daq:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->dar:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->das:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "CANCEL"

    const/4 v2, 0x5

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->dat:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "COMPRESSION_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->dau:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "CONNECT_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->dav:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "ENHANCE_YOUR_CALM"

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->daw:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "INADEQUATE_SECURITY"

    const/16 v2, 0x9

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->dax:Lokhttp3/internal/e/b;

    new-instance v0, Lokhttp3/internal/e/b;

    const-string v1, "HTTP_1_1_REQUIRED"

    const/16 v2, 0xa

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/internal/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lokhttp3/internal/e/b;->day:Lokhttp3/internal/e/b;

    const/16 v0, 0xb

    new-array v0, v0, [Lokhttp3/internal/e/b;

    sget-object v1, Lokhttp3/internal/e/b;->dao:Lokhttp3/internal/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/e/b;->dap:Lokhttp3/internal/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/e/b;->daq:Lokhttp3/internal/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/e/b;->dar:Lokhttp3/internal/e/b;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lokhttp3/internal/e/b;->das:Lokhttp3/internal/e/b;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/e/b;->dat:Lokhttp3/internal/e/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/e/b;->dau:Lokhttp3/internal/e/b;

    aput-object v2, v0, v1

    sget-object v1, Lokhttp3/internal/e/b;->dav:Lokhttp3/internal/e/b;

    aput-object v1, v0, v8

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/e/b;->daw:Lokhttp3/internal/e/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/e/b;->dax:Lokhttp3/internal/e/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/e/b;->day:Lokhttp3/internal/e/b;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/internal/e/b;->daz:[Lokhttp3/internal/e/b;

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

    iput p3, p0, Lokhttp3/internal/e/b;->httpCode:I

    return-void
.end method

.method public static fQ(I)Lokhttp3/internal/e/b;
    .locals 5

    invoke-static {}, Lokhttp3/internal/e/b;->values()[Lokhttp3/internal/e/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lokhttp3/internal/e/b;->httpCode:I

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

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/e/b;
    .locals 1

    const-class v0, Lokhttp3/internal/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/e/b;

    return-object v0
.end method

.method public static values()[Lokhttp3/internal/e/b;
    .locals 1

    sget-object v0, Lokhttp3/internal/e/b;->daz:[Lokhttp3/internal/e/b;

    invoke-virtual {v0}, [Lokhttp3/internal/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/e/b;

    return-object v0
.end method
