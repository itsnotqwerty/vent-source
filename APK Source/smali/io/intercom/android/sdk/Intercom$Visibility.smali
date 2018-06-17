.class public final enum Lio/intercom/android/sdk/Intercom$Visibility;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/Intercom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/Intercom$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/Intercom$Visibility;

.field public static final enum GONE:Lio/intercom/android/sdk/Intercom$Visibility;

.field public static final enum VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/Intercom$Visibility;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/Intercom$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/Intercom$Visibility;->GONE:Lio/intercom/android/sdk/Intercom$Visibility;

    new-instance v0, Lio/intercom/android/sdk/Intercom$Visibility;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/Intercom$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/Intercom$Visibility;->VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/intercom/android/sdk/Intercom$Visibility;

    sget-object v1, Lio/intercom/android/sdk/Intercom$Visibility;->GONE:Lio/intercom/android/sdk/Intercom$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/Intercom$Visibility;->VISIBLE:Lio/intercom/android/sdk/Intercom$Visibility;

    aput-object v1, v0, v3

    sput-object v0, Lio/intercom/android/sdk/Intercom$Visibility;->$VALUES:[Lio/intercom/android/sdk/Intercom$Visibility;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/Intercom$Visibility;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/Intercom$Visibility;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/Intercom$Visibility;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/Intercom$Visibility;->$VALUES:[Lio/intercom/android/sdk/Intercom$Visibility;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/Intercom$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/Intercom$Visibility;

    return-object v0
.end method
