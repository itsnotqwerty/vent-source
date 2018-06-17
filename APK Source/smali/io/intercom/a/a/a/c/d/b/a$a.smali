.class public final Lio/intercom/a/a/a/c/d/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/c$a",
        "<",
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
.method public final HU()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final synthetic at(Ljava/lang/Object;)Lio/intercom/a/a/a/c/a/c;
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    new-instance v0, Lio/intercom/a/a/a/c/d/b/a;

    invoke-direct {v0, p1}, Lio/intercom/a/a/a/c/d/b/a;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
