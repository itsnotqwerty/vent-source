.class public Lcom/layer/sdk/internal/lsdkk/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;

.field private static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/lsdkk/c;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/c;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    const-string v0, "UTF-8"

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/c;->b:Ljava/lang/String;

    const/4 v0, 0x3

    sput v0, Lcom/layer/sdk/internal/lsdkk/c;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/layer/sdk/internal/lsdkk/c;->c:I

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    sget v0, Lcom/layer/sdk/internal/lsdkk/c;->c:I

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
