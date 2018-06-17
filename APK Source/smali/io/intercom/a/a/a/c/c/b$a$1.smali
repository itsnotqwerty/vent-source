.class final Lio/intercom/a/a/a/c/c/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/c/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/a/a/a/c/c/b$a;->a(Lio/intercom/a/a/a/c/c/r;)Lio/intercom/a/a/a/c/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/c/b$b",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cMw:Lio/intercom/a/a/a/c/c/b$a;


# direct methods
.method constructor <init>(Lio/intercom/a/a/a/c/c/b$a;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/a/a/a/c/c/b$a$1;->cMw:Lio/intercom/a/a/a/c/c/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic C([B)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

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
