.class public final enum Lcom/layer/sdk/query/CompoundPredicate$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/query/CompoundPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/query/CompoundPredicate$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/query/CompoundPredicate$Type;

.field public static final enum AND:Lcom/layer/sdk/query/CompoundPredicate$Type;

.field public static final enum NOT:Lcom/layer/sdk/query/CompoundPredicate$Type;

.field public static final enum OR:Lcom/layer/sdk/query/CompoundPredicate$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/query/CompoundPredicate$Type;

    const-string v1, "AND"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/query/CompoundPredicate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/CompoundPredicate$Type;->AND:Lcom/layer/sdk/query/CompoundPredicate$Type;

    new-instance v0, Lcom/layer/sdk/query/CompoundPredicate$Type;

    const-string v1, "OR"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/query/CompoundPredicate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/CompoundPredicate$Type;->OR:Lcom/layer/sdk/query/CompoundPredicate$Type;

    new-instance v0, Lcom/layer/sdk/query/CompoundPredicate$Type;

    const-string v1, "NOT"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/query/CompoundPredicate$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/CompoundPredicate$Type;->NOT:Lcom/layer/sdk/query/CompoundPredicate$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/query/CompoundPredicate$Type;

    sget-object v1, Lcom/layer/sdk/query/CompoundPredicate$Type;->AND:Lcom/layer/sdk/query/CompoundPredicate$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/query/CompoundPredicate$Type;->OR:Lcom/layer/sdk/query/CompoundPredicate$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/query/CompoundPredicate$Type;->NOT:Lcom/layer/sdk/query/CompoundPredicate$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/query/CompoundPredicate$Type;->$VALUES:[Lcom/layer/sdk/query/CompoundPredicate$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/query/CompoundPredicate$Type;
    .locals 1

    const-class v0, Lcom/layer/sdk/query/CompoundPredicate$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/CompoundPredicate$Type;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/query/CompoundPredicate$Type;
    .locals 1

    sget-object v0, Lcom/layer/sdk/query/CompoundPredicate$Type;->$VALUES:[Lcom/layer/sdk/query/CompoundPredicate$Type;

    invoke-virtual {v0}, [Lcom/layer/sdk/query/CompoundPredicate$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/query/CompoundPredicate$Type;

    return-object v0
.end method
