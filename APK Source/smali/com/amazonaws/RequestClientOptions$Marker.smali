.class public final enum Lcom/amazonaws/RequestClientOptions$Marker;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/RequestClientOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Marker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/RequestClientOptions$Marker;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum amK:Lcom/amazonaws/RequestClientOptions$Marker;

.field private static final synthetic amL:[Lcom/amazonaws/RequestClientOptions$Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazonaws/RequestClientOptions$Marker;

    const-string v1, "USER_AGENT"

    invoke-direct {v0, v1}, Lcom/amazonaws/RequestClientOptions$Marker;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->amK:Lcom/amazonaws/RequestClientOptions$Marker;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazonaws/RequestClientOptions$Marker;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazonaws/RequestClientOptions$Marker;->amK:Lcom/amazonaws/RequestClientOptions$Marker;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->amL:[Lcom/amazonaws/RequestClientOptions$Marker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/RequestClientOptions$Marker;
    .locals 1

    const-class v0, Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/RequestClientOptions$Marker;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/RequestClientOptions$Marker;
    .locals 1

    sget-object v0, Lcom/amazonaws/RequestClientOptions$Marker;->amL:[Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {v0}, [Lcom/amazonaws/RequestClientOptions$Marker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/RequestClientOptions$Marker;

    return-object v0
.end method
