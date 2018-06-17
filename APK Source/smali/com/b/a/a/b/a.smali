.class public final enum Lcom/b/a/a/b/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/a/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bJS:Lcom/b/a/a/b/a;

.field public static final enum bJT:Lcom/b/a/a/b/a;

.field public static final enum bJU:Lcom/b/a/a/b/a;

.field public static final enum bJV:Lcom/b/a/a/b/a;

.field public static final enum bJW:Lcom/b/a/a/b/a;

.field public static final enum bJX:Lcom/b/a/a/b/a;

.field public static final enum bJY:Lcom/b/a/a/b/a;

.field public static final enum bJZ:Lcom/b/a/a/b/a;

.field public static final enum bKa:Lcom/b/a/a/b/a;

.field public static final enum bKb:Lcom/b/a/a/b/a;

.field public static final enum bKc:Lcom/b/a/a/b/a;

.field public static final enum bKd:Lcom/b/a/a/b/a;

.field public static final enum bKe:Lcom/b/a/a/b/a;

.field public static final enum bKf:Lcom/b/a/a/b/a;

.field public static final enum bKg:Lcom/b/a/a/b/a;

.field public static final enum bKh:Lcom/b/a/a/b/a;

.field public static final enum bKi:Lcom/b/a/a/b/a;

.field public static final enum bKj:Lcom/b/a/a/b/a;

.field private static final synthetic bKn:[Lcom/b/a/a/b/a;


# instance fields
.field public final bKk:I

.field public final bKl:I

.field public final bKm:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    new-instance v0, Lcom/b/a/a/b/a;

    const-string v1, "NO_ERROR"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/b/a/a/b/a;->bJS:Lcom/b/a/a/b/a;

    new-instance v5, Lcom/b/a/a/b/a;

    const-string v6, "PROTOCOL_ERROR"

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v5 .. v10}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lcom/b/a/a/b/a;->bJT:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "INVALID_STREAM"

    move v10, v14

    move v11, v7

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bJU:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "UNSUPPORTED_VERSION"

    const/4 v12, 0x4

    move v10, v15

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bJV:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "STREAM_IN_USE"

    const/4 v10, 0x4

    const/16 v12, 0x8

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bJW:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "STREAM_ALREADY_CLOSED"

    const/4 v10, 0x5

    const/16 v12, 0x9

    move v11, v7

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bJX:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "INTERNAL_ERROR"

    const/4 v10, 0x6

    const/4 v12, 0x6

    move v11, v14

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bJY:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x7

    const/4 v12, 0x7

    move v11, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bJZ:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "STREAM_CLOSED"

    const/16 v10, 0x8

    const/4 v11, 0x5

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKa:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "FRAME_TOO_LARGE"

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0xb

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKb:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "REFUSED_STREAM"

    const/16 v10, 0xa

    const/4 v11, 0x7

    move v12, v15

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKc:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "CANCEL"

    const/16 v10, 0xb

    const/16 v11, 0x8

    const/4 v12, 0x5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "COMPRESSION_ERROR"

    const/16 v10, 0xc

    const/16 v11, 0x9

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKe:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "CONNECT_ERROR"

    const/16 v10, 0xd

    const/16 v11, 0xa

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKf:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "ENHANCE_YOUR_CALM"

    const/16 v10, 0xe

    const/16 v11, 0xb

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKg:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "INADEQUATE_SECURITY"

    const/16 v10, 0xf

    const/16 v11, 0xc

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKh:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "HTTP_1_1_REQUIRED"

    const/16 v10, 0x10

    const/16 v11, 0xd

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKi:Lcom/b/a/a/b/a;

    new-instance v8, Lcom/b/a/a/b/a;

    const-string v9, "INVALID_CREDENTIALS"

    const/16 v10, 0x11

    const/16 v12, 0xa

    move v11, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/b/a/a/b/a;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lcom/b/a/a/b/a;->bKj:Lcom/b/a/a/b/a;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/b/a/a/b/a;

    sget-object v1, Lcom/b/a/a/b/a;->bJS:Lcom/b/a/a/b/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/b/a;->bJT:Lcom/b/a/a/b/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/a/a/b/a;->bJU:Lcom/b/a/a/b/a;

    aput-object v1, v0, v14

    sget-object v1, Lcom/b/a/a/b/a;->bJV:Lcom/b/a/a/b/a;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/b/a/a/b/a;->bJW:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/a/b/a;->bJX:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/a/b/a;->bJY:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/b/a/a/b/a;->bJZ:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/b/a/a/b/a;->bKa:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/b/a/a/b/a;->bKb:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/b/a/a/b/a;->bKc:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/b/a/a/b/a;->bKd:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/b/a/a/b/a;->bKe:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/b/a/a/b/a;->bKf:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/b/a/a/b/a;->bKg:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/b/a/a/b/a;->bKh:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/b/a/a/b/a;->bKi:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/b/a/a/b/a;->bKj:Lcom/b/a/a/b/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/a/b/a;->bKn:[Lcom/b/a/a/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/b/a/a/b/a;->bKk:I

    iput p4, p0, Lcom/b/a/a/b/a;->bKl:I

    iput p5, p0, Lcom/b/a/a/b/a;->bKm:I

    return-void
.end method

.method public static dJ(I)Lcom/b/a/a/b/a;
    .locals 5

    invoke-static {}, Lcom/b/a/a/b/a;->values()[Lcom/b/a/a/b/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/b/a/a/b/a;->bKl:I

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

.method public static dK(I)Lcom/b/a/a/b/a;
    .locals 5

    invoke-static {}, Lcom/b/a/a/b/a;->values()[Lcom/b/a/a/b/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/b/a/a/b/a;->bKk:I

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

.method public static dL(I)Lcom/b/a/a/b/a;
    .locals 5

    invoke-static {}, Lcom/b/a/a/b/a;->values()[Lcom/b/a/a/b/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/b/a/a/b/a;->bKm:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/b/a;
    .locals 1

    const-class v0, Lcom/b/a/a/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/b/a;

    return-object v0
.end method

.method public static values()[Lcom/b/a/a/b/a;
    .locals 1

    sget-object v0, Lcom/b/a/a/b/a;->bKn:[Lcom/b/a/a/b/a;

    invoke-virtual {v0}, [Lcom/b/a/a/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/b/a;

    return-object v0
.end method
