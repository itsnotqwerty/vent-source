.class public final enum Lcom/layer/sdk/query/Predicate$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/query/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/query/Predicate$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/query/Predicate$Type;

.field public static final enum EQUALITY:Lcom/layer/sdk/query/Predicate$Type;

.field public static final enum INCLUSIVE:Lcom/layer/sdk/query/Predicate$Type;

.field public static final enum PATTERN:Lcom/layer/sdk/query/Predicate$Type;

.field public static final enum RELATIVE:Lcom/layer/sdk/query/Predicate$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/query/Predicate$Type;

    const-string v1, "EQUALITY"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/query/Predicate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Type;->EQUALITY:Lcom/layer/sdk/query/Predicate$Type;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Type;

    const-string v1, "RELATIVE"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/query/Predicate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Type;->RELATIVE:Lcom/layer/sdk/query/Predicate$Type;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Type;

    const-string v1, "INCLUSIVE"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/query/Predicate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Type;->INCLUSIVE:Lcom/layer/sdk/query/Predicate$Type;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Type;

    const-string v1, "PATTERN"

    invoke-direct {v0, v1, v5}, Lcom/layer/sdk/query/Predicate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Type;->PATTERN:Lcom/layer/sdk/query/Predicate$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/layer/sdk/query/Predicate$Type;

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->EQUALITY:Lcom/layer/sdk/query/Predicate$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->RELATIVE:Lcom/layer/sdk/query/Predicate$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->INCLUSIVE:Lcom/layer/sdk/query/Predicate$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/query/Predicate$Type;->PATTERN:Lcom/layer/sdk/query/Predicate$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/layer/sdk/query/Predicate$Type;->$VALUES:[Lcom/layer/sdk/query/Predicate$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/query/Predicate$Type;
    .locals 1

    const-class v0, Lcom/layer/sdk/query/Predicate$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Predicate$Type;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/query/Predicate$Type;
    .locals 1

    sget-object v0, Lcom/layer/sdk/query/Predicate$Type;->$VALUES:[Lcom/layer/sdk/query/Predicate$Type;

    invoke-virtual {v0}, [Lcom/layer/sdk/query/Predicate$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/query/Predicate$Type;

    return-object v0
.end method
