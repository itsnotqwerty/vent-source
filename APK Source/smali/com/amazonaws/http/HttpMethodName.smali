.class public final enum Lcom/amazonaws/http/HttpMethodName;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/http/HttpMethodName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum anX:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum anY:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum anZ:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum aoa:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum aob:Lcom/amazonaws/http/HttpMethodName;

.field public static final enum aoc:Lcom/amazonaws/http/HttpMethodName;

.field private static final synthetic aod:[Lcom/amazonaws/http/HttpMethodName;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->anX:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->anY:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->anZ:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->aoa:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->aob:Lcom/amazonaws/http/HttpMethodName;

    new-instance v0, Lcom/amazonaws/http/HttpMethodName;

    const-string v1, "PATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/http/HttpMethodName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->aoc:Lcom/amazonaws/http/HttpMethodName;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazonaws/http/HttpMethodName;

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->anX:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->anY:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->anZ:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->aoa:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->aob:Lcom/amazonaws/http/HttpMethodName;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->aoc:Lcom/amazonaws/http/HttpMethodName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/http/HttpMethodName;->aod:[Lcom/amazonaws/http/HttpMethodName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/http/HttpMethodName;
    .locals 1

    const-class v0, Lcom/amazonaws/http/HttpMethodName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/http/HttpMethodName;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/http/HttpMethodName;
    .locals 1

    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->aod:[Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {v0}, [Lcom/amazonaws/http/HttpMethodName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/http/HttpMethodName;

    return-object v0
.end method
