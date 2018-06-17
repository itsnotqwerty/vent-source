.class public final enum La/a/a/d$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/a/d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cpB:La/a/a/d$b;

.field public static final enum cpC:La/a/a/d$b;

.field public static final enum cpD:La/a/a/d$b;

.field public static final enum cpE:La/a/a/d$b;

.field public static final enum cpF:La/a/a/d$b;

.field public static final enum cpG:La/a/a/d$b;

.field private static final cpH:[La/a/a/d$b;

.field private static final synthetic cpI:[La/a/a/d$b;


# instance fields
.field final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v1, La/a/a/d$b;

    const-string v2, "QUERY"

    invoke-direct {v1, v2, v0}, La/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/d$b;->cpB:La/a/a/d$b;

    new-instance v1, La/a/a/d$b;

    const-string v2, "INVERSE_QUERY"

    invoke-direct {v1, v2, v4}, La/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/d$b;->cpC:La/a/a/d$b;

    new-instance v1, La/a/a/d$b;

    const-string v2, "STATUS"

    invoke-direct {v1, v2, v5}, La/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/d$b;->cpD:La/a/a/d$b;

    new-instance v1, La/a/a/d$b;

    const-string v2, "UNASSIGNED3"

    invoke-direct {v1, v2, v6}, La/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/d$b;->cpE:La/a/a/d$b;

    new-instance v1, La/a/a/d$b;

    const-string v2, "NOTIFY"

    invoke-direct {v1, v2, v7}, La/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/d$b;->cpF:La/a/a/d$b;

    new-instance v1, La/a/a/d$b;

    const-string v2, "UPDATE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, La/a/a/d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/d$b;->cpG:La/a/a/d$b;

    const/4 v1, 0x6

    new-array v1, v1, [La/a/a/d$b;

    sget-object v2, La/a/a/d$b;->cpB:La/a/a/d$b;

    aput-object v2, v1, v0

    sget-object v2, La/a/a/d$b;->cpC:La/a/a/d$b;

    aput-object v2, v1, v4

    sget-object v2, La/a/a/d$b;->cpD:La/a/a/d$b;

    aput-object v2, v1, v5

    sget-object v2, La/a/a/d$b;->cpE:La/a/a/d$b;

    aput-object v2, v1, v6

    sget-object v2, La/a/a/d$b;->cpF:La/a/a/d$b;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, La/a/a/d$b;->cpG:La/a/a/d$b;

    aput-object v3, v1, v2

    sput-object v1, La/a/a/d$b;->cpI:[La/a/a/d$b;

    invoke-static {}, La/a/a/d$b;->values()[La/a/a/d$b;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [La/a/a/d$b;

    sput-object v1, La/a/a/d$b;->cpH:[La/a/a/d$b;

    invoke-static {}, La/a/a/d$b;->values()[La/a/a/d$b;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    sget-object v4, La/a/a/d$b;->cpH:[La/a/a/d$b;

    iget-byte v5, v3, La/a/a/d$b;->value:B

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    sget-object v4, La/a/a/d$b;->cpH:[La/a/a/d$b;

    iget-byte v5, v3, La/a/a/d$b;->value:B

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, La/a/a/d$b;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, La/a/a/d$b;->value:B

    return-void
.end method

.method public static eV(I)La/a/a/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, La/a/a/d$b;->cpH:[La/a/a/d$b;

    array-length v0, v0

    if-lt p0, v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, La/a/a/d$b;->cpH:[La/a/a/d$b;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/d$b;
    .locals 1

    const-class v0, La/a/a/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/a/d$b;

    return-object v0
.end method

.method public static values()[La/a/a/d$b;
    .locals 1

    sget-object v0, La/a/a/d$b;->cpI:[La/a/a/d$b;

    invoke-virtual {v0}, [La/a/a/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/d$b;

    return-object v0
.end method
