.class public final Lio/intercom/a/a/a/i/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/i/a/a$b;,
        Lio/intercom/a/a/a/i/a/a$c;,
        Lio/intercom/a/a/a/i/a/a$d;,
        Lio/intercom/a/a/a/i/a/a$a;
    }
.end annotation


# static fields
.field private static final cRc:Lio/intercom/a/a/a/i/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/i/a/a$d",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/i/a/a$1;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/a/a$1;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/i/a/a;->cRc:Lio/intercom/a/a/a/i/a/a$d;

    return-void
.end method

.method public static JW()Landroid/support/v4/g/k$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/support/v4/g/k$a",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/g/k$c;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/g/k$c;-><init>(I)V

    new-instance v1, Lio/intercom/a/a/a/i/a/a$2;

    invoke-direct {v1}, Lio/intercom/a/a/a/i/a/a$2;-><init>()V

    new-instance v2, Lio/intercom/a/a/a/i/a/a$3;

    invoke-direct {v2}, Lio/intercom/a/a/a/i/a/a$3;-><init>()V

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/i/a/a;->a(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;Lio/intercom/a/a/a/i/a/a$d;)Landroid/support/v4/g/k$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/intercom/a/a/a/i/a/a$c;",
            ">(I",
            "Lio/intercom/a/a/a/i/a/a$a",
            "<TT;>;)",
            "Landroid/support/v4/g/k$a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/g/k$c;

    invoke-direct {v0, p0}, Landroid/support/v4/g/k$c;-><init>(I)V

    invoke-static {v0, p1}, Lio/intercom/a/a/a/i/a/a;->a(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/intercom/a/a/a/i/a/a$c;",
            ">(",
            "Landroid/support/v4/g/k$a",
            "<TT;>;",
            "Lio/intercom/a/a/a/i/a/a$a",
            "<TT;>;)",
            "Landroid/support/v4/g/k$a",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/i/a/a;->cRc:Lio/intercom/a/a/a/i/a/a$d;

    invoke-static {p0, p1, v0}, Lio/intercom/a/a/a/i/a/a;->a(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;Lio/intercom/a/a/a/i/a/a$d;)Landroid/support/v4/g/k$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;Lio/intercom/a/a/a/i/a/a$d;)Landroid/support/v4/g/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/g/k$a",
            "<TT;>;",
            "Lio/intercom/a/a/a/i/a/a$a",
            "<TT;>;",
            "Lio/intercom/a/a/a/i/a/a$d",
            "<TT;>;)",
            "Landroid/support/v4/g/k$a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/i/a/a$b;

    invoke-direct {v0, p0, p1, p2}, Lio/intercom/a/a/a/i/a/a$b;-><init>(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;Lio/intercom/a/a/a/i/a/a$d;)V

    return-object v0
.end method

.method public static a(Lio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/intercom/a/a/a/i/a/a$c;",
            ">(",
            "Lio/intercom/a/a/a/i/a/a$a",
            "<TT;>;)",
            "Landroid/support/v4/g/k$a",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/g/k$b;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Landroid/support/v4/g/k$b;-><init>(I)V

    invoke-static {v0, p0}, Lio/intercom/a/a/a/i/a/a;->a(Landroid/support/v4/g/k$a;Lio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;

    move-result-object v0

    return-object v0
.end method
