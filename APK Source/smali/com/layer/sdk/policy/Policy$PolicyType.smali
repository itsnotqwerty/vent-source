.class public final enum Lcom/layer/sdk/policy/Policy$PolicyType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/policy/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/policy/Policy$PolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/layer/sdk/policy/Policy$PolicyType;

.field public static final enum BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/policy/Policy$PolicyType;

    const-string v1, "BLOCK"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/policy/Policy$PolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/policy/Policy$PolicyType;->BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/layer/sdk/policy/Policy$PolicyType;

    sget-object v1, Lcom/layer/sdk/policy/Policy$PolicyType;->BLOCK:Lcom/layer/sdk/policy/Policy$PolicyType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/layer/sdk/policy/Policy$PolicyType;->$VALUES:[Lcom/layer/sdk/policy/Policy$PolicyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/policy/Policy$PolicyType;
    .locals 1

    const-class v0, Lcom/layer/sdk/policy/Policy$PolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/policy/Policy$PolicyType;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/policy/Policy$PolicyType;
    .locals 1

    sget-object v0, Lcom/layer/sdk/policy/Policy$PolicyType;->$VALUES:[Lcom/layer/sdk/policy/Policy$PolicyType;

    invoke-virtual {v0}, [Lcom/layer/sdk/policy/Policy$PolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/policy/Policy$PolicyType;

    return-object v0
.end method
