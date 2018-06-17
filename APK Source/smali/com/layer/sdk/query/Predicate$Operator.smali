.class public final enum Lcom/layer/sdk/query/Predicate$Operator;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/query/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/query/Predicate$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum GREATER_THAN:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum GREATER_THAN_OR_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum IN:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum LESS_THAN:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum LESS_THAN_OR_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum LIKE:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum NOT_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

.field public static final enum NOT_IN:Lcom/layer/sdk/query/Predicate$Operator;


# instance fields
.field private final a:Lcom/layer/sdk/query/Predicate$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "EQUAL_TO"

    sget-object v2, Lcom/layer/sdk/query/Predicate$Type;->EQUALITY:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v4, v2}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "NOT_EQUAL_TO"

    sget-object v2, Lcom/layer/sdk/query/Predicate$Type;->EQUALITY:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v5, v2}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->NOT_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "LESS_THAN"

    sget-object v2, Lcom/layer/sdk/query/Predicate$Type;->RELATIVE:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v6, v2}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->LESS_THAN:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "LESS_THAN_OR_EQUAL_TO"

    sget-object v2, Lcom/layer/sdk/query/Predicate$Type;->RELATIVE:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v7, v2}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->LESS_THAN_OR_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "GREATER_THAN"

    sget-object v2, Lcom/layer/sdk/query/Predicate$Type;->RELATIVE:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v8, v2}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->GREATER_THAN:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "GREATER_THAN_OR_EQUAL_TO"

    const/4 v2, 0x5

    sget-object v3, Lcom/layer/sdk/query/Predicate$Type;->RELATIVE:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->GREATER_THAN_OR_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "IN"

    const/4 v2, 0x6

    sget-object v3, Lcom/layer/sdk/query/Predicate$Type;->INCLUSIVE:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->IN:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "NOT_IN"

    const/4 v2, 0x7

    sget-object v3, Lcom/layer/sdk/query/Predicate$Type;->INCLUSIVE:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->NOT_IN:Lcom/layer/sdk/query/Predicate$Operator;

    new-instance v0, Lcom/layer/sdk/query/Predicate$Operator;

    const-string v1, "LIKE"

    const/16 v2, 0x8

    sget-object v3, Lcom/layer/sdk/query/Predicate$Type;->PATTERN:Lcom/layer/sdk/query/Predicate$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/layer/sdk/query/Predicate$Operator;-><init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->LIKE:Lcom/layer/sdk/query/Predicate$Operator;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/layer/sdk/query/Predicate$Operator;

    sget-object v1, Lcom/layer/sdk/query/Predicate$Operator;->EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layer/sdk/query/Predicate$Operator;->NOT_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layer/sdk/query/Predicate$Operator;->LESS_THAN:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layer/sdk/query/Predicate$Operator;->LESS_THAN_OR_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v1, v0, v7

    sget-object v1, Lcom/layer/sdk/query/Predicate$Operator;->GREATER_THAN:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/layer/sdk/query/Predicate$Operator;->GREATER_THAN_OR_EQUAL_TO:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layer/sdk/query/Predicate$Operator;->IN:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/layer/sdk/query/Predicate$Operator;->NOT_IN:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/layer/sdk/query/Predicate$Operator;->LIKE:Lcom/layer/sdk/query/Predicate$Operator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layer/sdk/query/Predicate$Operator;->$VALUES:[Lcom/layer/sdk/query/Predicate$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/layer/sdk/query/Predicate$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layer/sdk/query/Predicate$Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/layer/sdk/query/Predicate$Operator;->a:Lcom/layer/sdk/query/Predicate$Type;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/query/Predicate$Operator;
    .locals 1

    const-class v0, Lcom/layer/sdk/query/Predicate$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/Predicate$Operator;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/query/Predicate$Operator;
    .locals 1

    sget-object v0, Lcom/layer/sdk/query/Predicate$Operator;->$VALUES:[Lcom/layer/sdk/query/Predicate$Operator;

    invoke-virtual {v0}, [Lcom/layer/sdk/query/Predicate$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/query/Predicate$Operator;

    return-object v0
.end method


# virtual methods
.method public final getType()Lcom/layer/sdk/query/Predicate$Type;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/query/Predicate$Operator;->a:Lcom/layer/sdk/query/Predicate$Type;

    return-object v0
.end method
