.class public final Lio/intercom/a/a/a/c/d/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/u",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final sY:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/b/b;->sY:[B

    return-void
.end method


# virtual methods
.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<[B>;"
        }
    .end annotation

    const-class v0, [B

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/b/b;->sY:[B

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/b/b;->sY:[B

    array-length v0, v0

    return v0
.end method

.method public final recycle()V
    .locals 0

    return-void
.end method
