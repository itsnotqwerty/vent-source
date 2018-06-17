.class public final Lio/intercom/a/a/a/c/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/a/a",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Iv()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic au(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, [B

    array-length v0, p1

    return v0
.end method

.method public final bridge synthetic fg(I)Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteArrayPool"

    return-object v0
.end method
