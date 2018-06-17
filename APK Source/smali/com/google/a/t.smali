.class public abstract enum Lcom/google/a/t;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bgW:Lcom/google/a/t;

.field public static final enum bgX:Lcom/google/a/t;

.field private static final synthetic bgY:[Lcom/google/a/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/a/t$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/google/a/t$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/t;->bgW:Lcom/google/a/t;

    new-instance v0, Lcom/google/a/t$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/google/a/t$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/t;->bgX:Lcom/google/a/t;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/t;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/t;->bgW:Lcom/google/a/t;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/t;->bgX:Lcom/google/a/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/t;->bgY:[Lcom/google/a/t;

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

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/t;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/t;
    .locals 1

    const-class v0, Lcom/google/a/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/t;

    return-object v0
.end method

.method public static values()[Lcom/google/a/t;
    .locals 1

    sget-object v0, Lcom/google/a/t;->bgY:[Lcom/google/a/t;

    invoke-virtual {v0}, [Lcom/google/a/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/t;

    return-object v0
.end method
