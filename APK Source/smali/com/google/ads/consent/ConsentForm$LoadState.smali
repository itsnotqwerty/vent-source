.class public final enum Lcom/google/ads/consent/ConsentForm$LoadState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/consent/ConsentForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/consent/ConsentForm$LoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/consent/ConsentForm$LoadState;

.field public static final enum LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

.field public static final enum LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

.field public static final enum NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/ads/consent/ConsentForm$LoadState;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/consent/ConsentForm$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    new-instance v0, Lcom/google/ads/consent/ConsentForm$LoadState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/consent/ConsentForm$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

    new-instance v0, Lcom/google/ads/consent/ConsentForm$LoadState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/consent/ConsentForm$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/consent/ConsentForm$LoadState;

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->NOT_READY:Lcom/google/ads/consent/ConsentForm$LoadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADING:Lcom/google/ads/consent/ConsentForm$LoadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/consent/ConsentForm$LoadState;->LOADED:Lcom/google/ads/consent/ConsentForm$LoadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->$VALUES:[Lcom/google/ads/consent/ConsentForm$LoadState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/consent/ConsentForm$LoadState;
    .locals 1

    const-class v0, Lcom/google/ads/consent/ConsentForm$LoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/ConsentForm$LoadState;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/consent/ConsentForm$LoadState;
    .locals 1

    sget-object v0, Lcom/google/ads/consent/ConsentForm$LoadState;->$VALUES:[Lcom/google/ads/consent/ConsentForm$LoadState;

    invoke-virtual {v0}, [Lcom/google/ads/consent/ConsentForm$LoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/consent/ConsentForm$LoadState;

    return-object v0
.end method
