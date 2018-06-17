.class public final enum Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LauncherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

.field public static final enum CUSTOM:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

.field public static final enum DEFAULT:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->DEFAULT:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    new-instance v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->CUSTOM:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    sget-object v1, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->DEFAULT:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->CUSTOM:Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    aput-object v1, v0, v3

    sput-object v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->$VALUES:[Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->$VALUES:[Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/overlay/LauncherOpenBehaviour$LauncherType;

    return-object v0
.end method
