.class public final enum Lio/intercom/android/sdk/blocks/StyleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/blocks/StyleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/blocks/StyleType;

.field public static final enum ADMIN:Lio/intercom/android/sdk/blocks/StyleType;

.field public static final enum CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

.field public static final enum CONTAINER_CARD:Lio/intercom/android/sdk/blocks/StyleType;

.field public static final enum NOTE:Lio/intercom/android/sdk/blocks/StyleType;

.field public static final enum POST:Lio/intercom/android/sdk/blocks/StyleType;

.field public static final enum PREVIEW:Lio/intercom/android/sdk/blocks/StyleType;

.field public static final enum USER:Lio/intercom/android/sdk/blocks/StyleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lio/intercom/android/sdk/blocks/StyleType;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/blocks/StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->PREVIEW:Lio/intercom/android/sdk/blocks/StyleType;

    new-instance v0, Lio/intercom/android/sdk/blocks/StyleType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/blocks/StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->USER:Lio/intercom/android/sdk/blocks/StyleType;

    new-instance v0, Lio/intercom/android/sdk/blocks/StyleType;

    const-string v1, "ADMIN"

    invoke-direct {v0, v1, v5}, Lio/intercom/android/sdk/blocks/StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->ADMIN:Lio/intercom/android/sdk/blocks/StyleType;

    new-instance v0, Lio/intercom/android/sdk/blocks/StyleType;

    const-string v1, "NOTE"

    invoke-direct {v0, v1, v6}, Lio/intercom/android/sdk/blocks/StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->NOTE:Lio/intercom/android/sdk/blocks/StyleType;

    new-instance v0, Lio/intercom/android/sdk/blocks/StyleType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v7}, Lio/intercom/android/sdk/blocks/StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->POST:Lio/intercom/android/sdk/blocks/StyleType;

    new-instance v0, Lio/intercom/android/sdk/blocks/StyleType;

    const-string v1, "CONTAINER_CARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/blocks/StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->CONTAINER_CARD:Lio/intercom/android/sdk/blocks/StyleType;

    new-instance v0, Lio/intercom/android/sdk/blocks/StyleType;

    const-string v1, "CHAT_FULL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/blocks/StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    const/4 v0, 0x7

    new-array v0, v0, [Lio/intercom/android/sdk/blocks/StyleType;

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->PREVIEW:Lio/intercom/android/sdk/blocks/StyleType;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->USER:Lio/intercom/android/sdk/blocks/StyleType;

    aput-object v1, v0, v4

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->ADMIN:Lio/intercom/android/sdk/blocks/StyleType;

    aput-object v1, v0, v5

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->NOTE:Lio/intercom/android/sdk/blocks/StyleType;

    aput-object v1, v0, v6

    sget-object v1, Lio/intercom/android/sdk/blocks/StyleType;->POST:Lio/intercom/android/sdk/blocks/StyleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/intercom/android/sdk/blocks/StyleType;->CONTAINER_CARD:Lio/intercom/android/sdk/blocks/StyleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/intercom/android/sdk/blocks/StyleType;->CHAT_FULL:Lio/intercom/android/sdk/blocks/StyleType;

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/android/sdk/blocks/StyleType;->$VALUES:[Lio/intercom/android/sdk/blocks/StyleType;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/blocks/StyleType;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/blocks/StyleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/blocks/StyleType;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/blocks/StyleType;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/blocks/StyleType;->$VALUES:[Lio/intercom/android/sdk/blocks/StyleType;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/blocks/StyleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/blocks/StyleType;

    return-object v0
.end method
