.class public abstract La/a/a/h/a;
.super Ljava/lang/Object;


# instance fields
.field protected cqG:I

.field protected cuw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, La/a/a/h/a;->cqG:I

    const/16 v0, 0x1388

    iput v0, p0, La/a/a/h/a;->cuw:I

    return-void
.end method


# virtual methods
.method public final Gn()I
    .locals 1

    iget v0, p0, La/a/a/h/a;->cqG:I

    return v0
.end method

.method public abstract a(La/a/a/d;Ljava/net/InetAddress;)La/a/a/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
