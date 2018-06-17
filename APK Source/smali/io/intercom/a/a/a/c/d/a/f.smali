.class public final Lio/intercom/a/a/a/c/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cNB:Lio/intercom/a/a/a/c/d/a/k;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/d/a/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/f;->cNB:Lio/intercom/a/a/a/c/d/a/k;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/intercom/a/a/a/i/a;->d(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/f;->cNB:Lio/intercom/a/a/a/c/d/a/k;

    sget-object v5, Lio/intercom/a/a/a/c/d/a/k;->cNU:Lio/intercom/a/a/a/c/d/a/k$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/intercom/a/a/a/c/d/a/k;->a(Ljava/io/InputStream;IILio/intercom/a/a/a/c/j;Lio/intercom/a/a/a/c/d/a/k$a;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/k;->Ja()Z

    move-result v0

    return v0
.end method
