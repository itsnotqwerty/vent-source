.class public final enum Lio/intercom/a/a/a/c/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/a/a/a/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cHN:Lio/intercom/a/a/a/c/c;

.field public static final enum cHO:Lio/intercom/a/a/a/c/c;

.field public static final enum cHP:Lio/intercom/a/a/a/c/c;

.field private static final synthetic cHQ:[Lio/intercom/a/a/a/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lio/intercom/a/a/a/c/c;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v2}, Lio/intercom/a/a/a/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/a/a/a/c/c;->cHN:Lio/intercom/a/a/a/c/c;

    new-instance v0, Lio/intercom/a/a/a/c/c;

    const-string v1, "TRANSFORMED"

    invoke-direct {v0, v1, v3}, Lio/intercom/a/a/a/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/a/a/a/c/c;->cHO:Lio/intercom/a/a/a/c/c;

    new-instance v0, Lio/intercom/a/a/a/c/c;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lio/intercom/a/a/a/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/intercom/a/a/a/c/c;->cHP:Lio/intercom/a/a/a/c/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/intercom/a/a/a/c/c;

    sget-object v1, Lio/intercom/a/a/a/c/c;->cHN:Lio/intercom/a/a/a/c/c;

    aput-object v1, v0, v2

    sget-object v1, Lio/intercom/a/a/a/c/c;->cHO:Lio/intercom/a/a/a/c/c;

    aput-object v1, v0, v3

    sget-object v1, Lio/intercom/a/a/a/c/c;->cHP:Lio/intercom/a/a/a/c/c;

    aput-object v1, v0, v4

    sput-object v0, Lio/intercom/a/a/a/c/c;->cHQ:[Lio/intercom/a/a/a/c/c;

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

.method public static valueOf(Ljava/lang/String;)Lio/intercom/a/a/a/c/c;
    .locals 1

    const-class v0, Lio/intercom/a/a/a/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/c;

    return-object v0
.end method

.method public static values()[Lio/intercom/a/a/a/c/c;
    .locals 1

    sget-object v0, Lio/intercom/a/a/a/c/c;->cHQ:[Lio/intercom/a/a/a/c/c;

    invoke-virtual {v0}, [Lio/intercom/a/a/a/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/a/a/a/c/c;

    return-object v0
.end method
