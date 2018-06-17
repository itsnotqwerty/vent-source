.class public final Lorg/a/b/b;
.super Lorg/a/b/a;


# static fields
.field public static final dcv:Lorg/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/b/b;

    invoke-direct {v0}, Lorg/a/b/b;-><init>()V

    sput-object v0, Lorg/a/b/b;->dcv:Lorg/a/b/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "NOP"

    return-object v0
.end method
