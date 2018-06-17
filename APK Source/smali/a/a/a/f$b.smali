.class public final enum La/a/a/f$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/a/a/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cqA:La/a/a/f$b;

.field public static final enum cqB:La/a/a/f$b;

.field public static final enum cqC:La/a/a/f$b;

.field public static final enum cqD:La/a/a/f$b;

.field private static final synthetic cqF:[La/a/a/f$b;

.field public static final enum cqq:La/a/a/f$b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum cqr:La/a/a/f$b;

.field public static final enum cqs:La/a/a/f$b;

.field public static final enum cqt:La/a/a/f$b;

.field public static final enum cqu:La/a/a/f$b;

.field public static final enum cqv:La/a/a/f$b;

.field public static final enum cqw:La/a/a/f$b;

.field public static final enum cqx:La/a/a/f$b;

.field public static final enum cqy:La/a/a/f$b;

.field public static final enum cqz:La/a/a/f$b;


# instance fields
.field public final cqE:B

.field public final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, La/a/a/f$b;

    const-string v1, "RSAMD5"

    const/4 v2, 0x0

    const-string v3, "RSA/MD5"

    invoke-direct {v0, v1, v2, v5, v3}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqq:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "DH"

    const-string v2, "Diffie-Hellman"

    invoke-direct {v0, v1, v5, v6, v2}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqr:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "DSA"

    const-string v2, "DSA/SHA1"

    invoke-direct {v0, v1, v6, v7, v2}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqs:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "RSASHA1"

    const-string v2, "RSA/SHA-1"

    invoke-direct {v0, v1, v7, v8, v2}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqt:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "DSA_NSEC3_SHA1"

    const/4 v2, 0x4

    const-string v3, "DSA_NSEC3-SHA1"

    invoke-direct {v0, v1, v2, v9, v3}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqu:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "RSASHA1_NSEC3_SHA1"

    const/4 v2, 0x7

    const-string v3, "RSASHA1-NSEC3-SHA1"

    invoke-direct {v0, v1, v8, v2, v3}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqv:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "RSASHA256"

    const/16 v2, 0x8

    const-string v3, "RSA/SHA-256"

    invoke-direct {v0, v1, v9, v2, v3}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqw:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "RSASHA512"

    const/4 v2, 0x7

    const/16 v3, 0xa

    const-string v4, "RSA/SHA-512"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqx:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "ECC_GOST"

    const/16 v2, 0x8

    const/16 v3, 0xc

    const-string v4, "GOST R 34.10-2001"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqy:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "ECDSAP256SHA256"

    const/16 v2, 0x9

    const/16 v3, 0xd

    const-string v4, "ECDSA Curve P-256 with SHA-256"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqz:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "ECDSAP384SHA384"

    const/16 v2, 0xa

    const/16 v3, 0xe

    const-string v4, "ECDSA Curve P-384 with SHA-384"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqA:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "INDIRECT"

    const/16 v2, 0xb

    const/16 v3, 0xfc

    const-string v4, "Reserved for Indirect Keys"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqB:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "PRIVATEDNS"

    const/16 v2, 0xc

    const/16 v3, 0xfd

    const-string v4, "private algorithm"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqC:La/a/a/f$b;

    new-instance v0, La/a/a/f$b;

    const-string v1, "PRIVATEOID"

    const/16 v2, 0xd

    const/16 v3, 0xfe

    const-string v4, "private algorithm oid"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/a/f$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, La/a/a/f$b;->cqD:La/a/a/f$b;

    const/16 v0, 0xe

    new-array v0, v0, [La/a/a/f$b;

    const/4 v1, 0x0

    sget-object v2, La/a/a/f$b;->cqq:La/a/a/f$b;

    aput-object v2, v0, v1

    sget-object v1, La/a/a/f$b;->cqr:La/a/a/f$b;

    aput-object v1, v0, v5

    sget-object v1, La/a/a/f$b;->cqs:La/a/a/f$b;

    aput-object v1, v0, v6

    sget-object v1, La/a/a/f$b;->cqt:La/a/a/f$b;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, La/a/a/f$b;->cqu:La/a/a/f$b;

    aput-object v2, v0, v1

    sget-object v1, La/a/a/f$b;->cqv:La/a/a/f$b;

    aput-object v1, v0, v8

    sget-object v1, La/a/a/f$b;->cqw:La/a/a/f$b;

    aput-object v1, v0, v9

    const/4 v1, 0x7

    sget-object v2, La/a/a/f$b;->cqx:La/a/a/f$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, La/a/a/f$b;->cqy:La/a/a/f$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, La/a/a/f$b;->cqz:La/a/a/f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, La/a/a/f$b;->cqA:La/a/a/f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, La/a/a/f$b;->cqB:La/a/a/f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, La/a/a/f$b;->cqC:La/a/a/f$b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, La/a/a/f$b;->cqD:La/a/a/f$b;

    aput-object v2, v0, v1

    sput-object v0, La/a/a/f$b;->cqF:[La/a/a/f$b;

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

    iput-byte v0, p0, La/a/a/f$b;->cqE:B

    iput-object p4, p0, La/a/a/f$b;->description:Ljava/lang/String;

    invoke-static {}, La/a/a/f;->FU()Ljava/util/Map;

    move-result-object v0

    iget-byte v1, p0, La/a/a/f$b;->cqE:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(B)La/a/a/f$b;
    .locals 2

    invoke-static {}, La/a/a/f;->FU()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/f$b;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/f$b;
    .locals 1

    const-class v0, La/a/a/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/a/f$b;

    return-object v0
.end method

.method public static values()[La/a/a/f$b;
    .locals 1

    sget-object v0, La/a/a/f$b;->cqF:[La/a/a/f$b;

    invoke-virtual {v0}, [La/a/a/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/f$b;

    return-object v0
.end method
