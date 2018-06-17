.class public final La/a/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/e/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
