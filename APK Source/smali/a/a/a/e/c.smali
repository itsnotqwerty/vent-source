.class public final La/a/a/e/c;
.super Ljava/lang/Object;


# static fields
.field private static ctm:La/a/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/a/e/a;

    invoke-direct {v0}, La/a/a/e/a;-><init>()V

    sput-object v0, La/a/a/e/c;->ctm:La/a/a/e/b;

    return-void
.end method

.method public static toASCII(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/a/e/c;->ctm:La/a/a/e/b;

    invoke-interface {v0, p0}, La/a/a/e/b;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/a/e/c;->ctm:La/a/a/e/b;

    invoke-interface {v0, p0}, La/a/a/e/b;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
