.class public final Lio/intercom/a/a/a/c/d/a/j$g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/intercom/a/a/a/c/d/a/j$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final cNM:I

.field public static final cNN:I

.field private static final synthetic cNO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v3, 0x1

    sput v3, Lio/intercom/a/a/a/c/d/a/j$g;->cNM:I

    sput v0, Lio/intercom/a/a/a/c/d/a/j$g;->cNN:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lio/intercom/a/a/a/c/d/a/j$g;->cNM:I

    aput v2, v0, v1

    sget v1, Lio/intercom/a/a/a/c/d/a/j$g;->cNN:I

    aput v1, v0, v3

    sput-object v0, Lio/intercom/a/a/a/c/d/a/j$g;->cNO:[I

    return-void
.end method
