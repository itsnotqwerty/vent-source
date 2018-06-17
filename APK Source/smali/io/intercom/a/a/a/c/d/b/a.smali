.class public final Lio/intercom/a/a/a/c/d/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/a/c",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final aZN:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/b/a;->aZN:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final synthetic HV()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/b/a;->aZN:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/b/a;->aZN:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final cleanup()V
    .locals 0

    return-void
.end method
