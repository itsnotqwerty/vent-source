.class public final enum La/a/a/g/l$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/a/g/l$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ctY:La/a/a/g/l$a;

.field public static final enum ctZ:La/a/a/g/l$a;

.field private static final synthetic cua:[La/a/a/g/l$a;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, La/a/a/g/l$a;

    const-string v1, "RESERVED"

    const-string v2, "Reserved"

    invoke-direct {v0, v1, v3, v3, v2}, La/a/a/g/l$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/g/l$a;->ctY:La/a/a/g/l$a;

    new-instance v0, La/a/a/g/l$a;

    const-string v1, "SHA1"

    const-string v2, "SHA-1"

    invoke-direct {v0, v1, v4, v4, v2}, La/a/a/g/l$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/g/l$a;->ctZ:La/a/a/g/l$a;

    const/4 v0, 0x2

    new-array v0, v0, [La/a/a/g/l$a;

    sget-object v1, La/a/a/g/l$a;->ctY:La/a/a/g/l$a;

    aput-object v1, v0, v3

    sget-object v1, La/a/a/g/l$a;->ctZ:La/a/a/g/l$a;

    aput-object v1, v0, v4

    sput-object v0, La/a/a/g/l$a;->cua:[La/a/a/g/l$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-ltz p3, :cond_0

    const/16 v0, 0xff

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    int-to-byte v0, p3

    iput-byte v0, p0, La/a/a/g/l$a;->value:B

    iput-object p4, p0, La/a/a/g/l$a;->description:Ljava/lang/String;

    invoke-static {}, La/a/a/g/l;->FU()Ljava/util/Map;

    move-result-object v0

    iget-byte v1, p0, La/a/a/g/l$a;->value:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(B)La/a/a/g/l$a;
    .locals 2

    invoke-static {}, La/a/a/g/l;->FU()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/g/l$a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/g/l$a;
    .locals 1

    const-class v0, La/a/a/g/l$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/a/g/l$a;

    return-object v0
.end method

.method public static values()[La/a/a/g/l$a;
    .locals 1

    sget-object v0, La/a/a/g/l$a;->cua:[La/a/a/g/l$a;

    invoke-virtual {v0}, [La/a/a/g/l$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/g/l$a;

    return-object v0
.end method
