.class final Lio/intercom/a/a/a/c/b/b/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/i/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/i/a/a$a",
        "<",
        "Lio/intercom/a/a/a/c/b/b/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cMf:Lio/intercom/a/a/a/c/b/b/j;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/b/b/j;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/b/j$1;->cMf:Lio/intercom/a/a/a/c/b/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IH()Lio/intercom/a/a/a/c/b/b/j$a;
    .locals 2

    :try_start_0
    new-instance v0, Lio/intercom/a/a/a/c/b/b/j$a;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/b/b/j$a;-><init>(Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/intercom/a/a/a/c/b/b/j$1;->IH()Lio/intercom/a/a/a/c/b/b/j$a;

    move-result-object v0

    return-object v0
.end method
