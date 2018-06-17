.class public final enum Lcom/layer/sdk/internal/a$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/sdk/internal/a$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/layer/sdk/internal/a$e;

.field public static final enum b:Lcom/layer/sdk/internal/a$e;

.field public static final enum c:Lcom/layer/sdk/internal/a$e;

.field private static final synthetic d:[Lcom/layer/sdk/internal/a$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/sdk/internal/a$e;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/layer/sdk/internal/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/a$e;->a:Lcom/layer/sdk/internal/a$e;

    new-instance v0, Lcom/layer/sdk/internal/a$e;

    const-string v1, "INITTED"

    invoke-direct {v0, v1, v3}, Lcom/layer/sdk/internal/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/a$e;->b:Lcom/layer/sdk/internal/a$e;

    new-instance v0, Lcom/layer/sdk/internal/a$e;

    const-string v1, "DISPOSED"

    invoke-direct {v0, v1, v4}, Lcom/layer/sdk/internal/a$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/sdk/internal/a$e;->c:Lcom/layer/sdk/internal/a$e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/sdk/internal/a$e;

    sget-object v1, Lcom/layer/sdk/internal/a$e;->a:Lcom/layer/sdk/internal/a$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/sdk/internal/a$e;->b:Lcom/layer/sdk/internal/a$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/sdk/internal/a$e;->c:Lcom/layer/sdk/internal/a$e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/sdk/internal/a$e;->d:[Lcom/layer/sdk/internal/a$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/sdk/internal/a$e;
    .locals 1

    const-class v0, Lcom/layer/sdk/internal/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/sdk/internal/a$e;

    return-object v0
.end method

.method public static values()[Lcom/layer/sdk/internal/a$e;
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/a$e;->d:[Lcom/layer/sdk/internal/a$e;

    invoke-virtual {v0}, [Lcom/layer/sdk/internal/a$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/sdk/internal/a$e;

    return-object v0
.end method
