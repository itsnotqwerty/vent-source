.class final enum Lio/intercom/android/sdk/identity/Registration$Validity;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/android/sdk/identity/Registration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Validity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/android/sdk/identity/Registration$Validity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/intercom/android/sdk/identity/Registration$Validity;

.field public static final enum INVALID:Lio/intercom/android/sdk/identity/Registration$Validity;

.field public static final enum NOT_SET:Lio/intercom/android/sdk/identity/Registration$Validity;

.field public static final enum VALID:Lio/intercom/android/sdk/identity/Registration$Validity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/android/sdk/identity/Registration$Validity;

    const-string v1, "NOT_SET"

    invoke-direct {v0, v1, v2}, Lio/intercom/android/sdk/identity/Registration$Validity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->NOT_SET:Lio/intercom/android/sdk/identity/Registration$Validity;

    new-instance v0, Lio/intercom/android/sdk/identity/Registration$Validity;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lio/intercom/android/sdk/identity/Registration$Validity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->INVALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    new-instance v0, Lio/intercom/android/sdk/identity/Registration$Validity;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v4}, Lio/intercom/android/sdk/identity/Registration$Validity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->VALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/intercom/android/sdk/identity/Registration$Validity;

    sget-object v1, Lio/intercom/android/sdk/identity/Registration$Validity;->NOT_SET:Lio/intercom/android/sdk/identity/Registration$Validity;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/android/sdk/identity/Registration$Validity;->INVALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/android/sdk/identity/Registration$Validity;->VALID:Lio/intercom/android/sdk/identity/Registration$Validity;

    aput-object v1, v0, v4

    sput-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->$VALUES:[Lio/intercom/android/sdk/identity/Registration$Validity;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/android/sdk/identity/Registration$Validity;
    .locals 1

    const-class v0, Lio/intercom/android/sdk/identity/Registration$Validity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/android/sdk/identity/Registration$Validity;

    return-object v0
.end method

.method public static values()[Lio/intercom/android/sdk/identity/Registration$Validity;
    .locals 1

    sget-object v0, Lio/intercom/android/sdk/identity/Registration$Validity;->$VALUES:[Lio/intercom/android/sdk/identity/Registration$Validity;

    invoke-virtual {v0}, [Lio/intercom/android/sdk/identity/Registration$Validity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/android/sdk/identity/Registration$Validity;

    return-object v0
.end method
