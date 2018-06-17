.class public abstract enum Lio/intercom/a/b/a/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/a/b/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cRv:Lio/intercom/a/b/a/q;

.field public static final enum cRw:Lio/intercom/a/b/a/q;

.field private static final synthetic cRx:[Lio/intercom/a/b/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/intercom/a/b/a/q$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lio/intercom/a/b/a/q$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/intercom/a/b/a/q;->cRv:Lio/intercom/a/b/a/q;

    new-instance v0, Lio/intercom/a/b/a/q$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lio/intercom/a/b/a/q$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/intercom/a/b/a/q;->cRw:Lio/intercom/a/b/a/q;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/intercom/a/b/a/q;

    const/4 v1, 0x0

    sget-object v2, Lio/intercom/a/b/a/q;->cRv:Lio/intercom/a/b/a/q;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/intercom/a/b/a/q;->cRw:Lio/intercom/a/b/a/q;

    aput-object v2, v0, v1

    sput-object v0, Lio/intercom/a/b/a/q;->cRx:[Lio/intercom/a/b/a/q;

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

    invoke-direct {p0, p1, p2}, Lio/intercom/a/b/a/q;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/intercom/a/b/a/q;
    .locals 1

    const-class v0, Lio/intercom/a/b/a/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/intercom/a/b/a/q;

    return-object v0
.end method

.method public static values()[Lio/intercom/a/b/a/q;
    .locals 1

    sget-object v0, Lio/intercom/a/b/a/q;->cRx:[Lio/intercom/a/b/a/q;

    invoke-virtual {v0}, [Lio/intercom/a/b/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/intercom/a/b/a/q;

    return-object v0
.end method
