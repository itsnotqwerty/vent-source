.class public final enum Lcom/layer/a/c/c$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layer/a/c/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bpH:Lcom/layer/a/c/c$b;

.field public static final enum bpI:Lcom/layer/a/c/c$b;

.field public static final enum bpJ:Lcom/layer/a/c/c$b;

.field private static final synthetic bpK:[Lcom/layer/a/c/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/layer/a/c/c$b;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v2}, Lcom/layer/a/c/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/a/c/c$b;->bpH:Lcom/layer/a/c/c$b;

    new-instance v0, Lcom/layer/a/c/c$b;

    const-string v1, "RETRY_LIMIT"

    invoke-direct {v0, v1, v3}, Lcom/layer/a/c/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/a/c/c$b;->bpI:Lcom/layer/a/c/c$b;

    new-instance v0, Lcom/layer/a/c/c$b;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/layer/a/c/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layer/a/c/c$b;->bpJ:Lcom/layer/a/c/c$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/layer/a/c/c$b;

    sget-object v1, Lcom/layer/a/c/c$b;->bpH:Lcom/layer/a/c/c$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/layer/a/c/c$b;->bpI:Lcom/layer/a/c/c$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layer/a/c/c$b;->bpJ:Lcom/layer/a/c/c$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/layer/a/c/c$b;->bpK:[Lcom/layer/a/c/c$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/layer/a/c/c$b;
    .locals 1

    const-class v0, Lcom/layer/a/c/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/layer/a/c/c$b;

    return-object v0
.end method

.method public static values()[Lcom/layer/a/c/c$b;
    .locals 1

    sget-object v0, Lcom/layer/a/c/c$b;->bpK:[Lcom/layer/a/c/c$b;

    invoke-virtual {v0}, [Lcom/layer/a/c/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/layer/a/c/c$b;

    return-object v0
.end method
