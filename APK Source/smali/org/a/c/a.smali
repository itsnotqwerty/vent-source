.class public final Lorg/a/c/a;
.super Ljava/lang/Object;


# static fields
.field private static final dcF:Lorg/a/c/a;

.field public static dcG:Ljava/lang/String;

.field private static final dcH:Ljava/lang/String;


# instance fields
.field public final dcI:Lorg/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/c/a;

    invoke-direct {v0}, Lorg/a/c/a;-><init>()V

    sput-object v0, Lorg/a/c/a;->dcF:Lorg/a/c/a;

    const-string v0, "1.6.99"

    sput-object v0, Lorg/a/c/a;->dcG:Ljava/lang/String;

    const-class v0, Lorg/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/a/c/a;->dcH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/a/b/c;

    invoke-direct {v0}, Lorg/a/b/c;-><init>()V

    iput-object v0, p0, Lorg/a/c/a;->dcI:Lorg/a/a;

    return-void
.end method

.method public static final NC()Lorg/a/c/a;
    .locals 1

    sget-object v0, Lorg/a/c/a;->dcF:Lorg/a/c/a;

    return-object v0
.end method

.method public static ND()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/a/c/a;->dcH:Ljava/lang/String;

    return-object v0
.end method
