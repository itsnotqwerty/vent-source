.class public final enum Lcom/layer/sdk/query/SortDescriptor$Order;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/query/SortDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/query/SortDescriptor$Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/query/SortDescriptor$Order;

.field public static final enum ASCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;

.field public static final enum DESCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/query/SortDescriptor$Order;

    const-string v1, "ASCENDING"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/query/SortDescriptor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/SortDescriptor$Order;->ASCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;

    new-instance v0, Lcom/layer/sdk/query/SortDescriptor$Order;

    const-string v1, "DESCENDING"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/query/SortDescriptor$Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/query/SortDescriptor$Order;->DESCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/layer/sdk/query/SortDescriptor$Order;

    sget-object v1, Lcom/layer/sdk/query/SortDescriptor$Order;->ASCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/query/SortDescriptor$Order;->DESCENDING:Lcom/layer/sdk/query/SortDescriptor$Order;

    aput-object v1, v0, v3

    sput-object v0, Lcom/layer/sdk/query/SortDescriptor$Order;->$VALUES:[Lcom/layer/sdk/query/SortDescriptor$Order;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/query/SortDescriptor$Order;
    .locals 1

    const-class v0, Lcom/layer/sdk/query/SortDescriptor$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/query/SortDescriptor$Order;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/query/SortDescriptor$Order;
    .locals 1

    sget-object v0, Lcom/layer/sdk/query/SortDescriptor$Order;->$VALUES:[Lcom/layer/sdk/query/SortDescriptor$Order;

    invoke-virtual {v0}, [Lcom/layer/sdk/query/SortDescriptor$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/query/SortDescriptor$Order;

    return-object v0
.end method
