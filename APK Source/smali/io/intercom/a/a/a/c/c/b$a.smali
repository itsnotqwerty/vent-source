.class public final Lio/intercom/a/a/a/c/c/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/o",
        "<[B",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/c/r;",
            ")",
            "Lio/intercom/a/a/a/c/c/n",
            "<[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/c/c/b;

    new-instance v1, Lio/intercom/a/a/a/c/c/b$a$1;

    invoke-direct {v1, p0}, Lio/intercom/a/a/a/c/c/b$a$1;-><init>(Lio/intercom/a/a/a/c/c/b$a;)V

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/c/b;-><init>(Lio/intercom/a/a/a/c/c/b$b;)V

    return-object v0
.end method
