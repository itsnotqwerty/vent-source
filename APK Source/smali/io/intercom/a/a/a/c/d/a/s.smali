.class public final Lio/intercom/a/a/a/c/d/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/c/d/a/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cIu:Lio/intercom/a/a/a/c/b/a/b;

.field private final cNB:Lio/intercom/a/a/a/c/d/a/k;


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/d/a/k;Lio/intercom/a/a/a/c/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/s;->cNB:Lio/intercom/a/a/a/c/d/a/k;

    iput-object p2, p0, Lio/intercom/a/a/a/c/d/a/s;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    return-void
.end method

.method private a(Ljava/io/InputStream;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lio/intercom/a/a/a/c/j;",
            ")",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lio/intercom/a/a/a/c/d/a/q;

    if-eqz v0, :cond_1

    check-cast p1, Lio/intercom/a/a/a/c/d/a/q;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-static {p1}, Lio/intercom/a/a/a/i/c;->r(Ljava/io/InputStream;)Lio/intercom/a/a/a/i/c;

    move-result-object v7

    new-instance v1, Lio/intercom/a/a/a/i/f;

    invoke-direct {v1, v7}, Lio/intercom/a/a/a/i/f;-><init>(Ljava/io/InputStream;)V

    new-instance v5, Lio/intercom/a/a/a/c/d/a/s$a;

    invoke-direct {v5, p1, v7}, Lio/intercom/a/a/a/c/d/a/s$a;-><init>(Lio/intercom/a/a/a/c/d/a/q;Lio/intercom/a/a/a/i/c;)V

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/s;->cNB:Lio/intercom/a/a/a/c/d/a/k;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/intercom/a/a/a/c/d/a/k;->a(Ljava/io/InputStream;IILio/intercom/a/a/a/c/j;Lio/intercom/a/a/a/c/d/a/k$a;)Lio/intercom/a/a/a/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v7}, Lio/intercom/a/a/a/i/c;->release()V

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lio/intercom/a/a/a/c/d/a/q;->release()V

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Lio/intercom/a/a/a/c/d/a/q;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/s;->cIu:Lio/intercom/a/a/a/c/b/a/b;

    invoke-direct {v1, p1, v0}, Lio/intercom/a/a/a/c/d/a/q;-><init>(Ljava/io/InputStream;Lio/intercom/a/a/a/c/b/a/b;)V

    const/4 v0, 0x1

    move v6, v0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Lio/intercom/a/a/a/i/c;->release()V

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lio/intercom/a/a/a/c/d/a/q;->release()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/intercom/a/a/a/c/d/a/s;->a(Ljava/io/InputStream;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;

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

    invoke-static {}, Lio/intercom/a/a/a/c/d/a/k;->IZ()Z

    move-result v0

    return v0
.end method
