.class public final enum Lcom/layer/sdk/query/Query$ResultType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/query/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/query/Query$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/query/Query$ResultType;

.field public static final enum COUNT:Lcom/layer/sdk/query/Query$ResultType;

.field public static final enum IDENTIFIERS:Lcom/layer/sdk/query/Query$ResultType;

.field public static final enum OBJECTS:Lcom/layer/sdk/query/Query$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/query/Query$ResultType;

    const-string v1, "OBJECTS"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/query/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/Query$ResultType;->OBJECTS:Lcom/layer/sdk/query/Query$ResultType;

    new-instance v0, Lcom/layer/sdk/query/Query$ResultType;

    const-string v1, "IDENTIFIERS"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/query/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/Query$ResultType;->IDENTIFIERS:Lcom/layer/sdk/query/Query$ResultType;

    new-instance v0, Lcom/layer/sdk/query/Query$ResultType;

    const-string v1, "COUNT"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/query/Query$ResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/Query$ResultType;->COUNT:Lcom/layer/sdk/query/Query$ResultType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/query/Query$ResultType;

    sget-object v1, Lcom/layer/sdk/query/Query$ResultType;->OBJECTS:Lcom/layer/sdk/query/Query$ResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/query/Query$ResultType;->IDENTIFIERS:Lcom/layer/sdk/query/Query$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/query/Query$ResultType;->COUNT:Lcom/layer/sdk/query/Query$ResultType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/query/Query$ResultType;->$VALUES:[Lcom/layer/sdk/query/Query$ResultType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/query/Query$ResultType;
    .locals 1

    const-class v0, Lcom/layer/sdk/query/Query$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Query$ResultType;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/query/Query$ResultType;
    .locals 1

    sget-object v0, Lcom/layer/sdk/query/Query$ResultType;->$VALUES:[Lcom/layer/sdk/query/Query$ResultType;

    invoke-virtual {v0}, [Lcom/layer/sdk/query/Query$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/query/Query$ResultType;

    return-object v0
.end method
