.class public abstract Lio/intercom/a/a/a/g/a/f;
.super Lio/intercom/a/a/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lio/intercom/a/a/a/g/a/a",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, v0}, Lio/intercom/a/a/a/g/a/f;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lio/intercom/a/a/a/g/a/a;-><init>()V

    iput p1, p0, Lio/intercom/a/a/a/g/a/f;->width:I

    iput p2, p0, Lio/intercom/a/a/a/g/a/f;->height:I

    return-void
.end method


# virtual methods
.method public final getSize(Lio/intercom/a/a/a/g/a/g;)V
    .locals 3

    iget v0, p0, Lio/intercom/a/a/a/g/a/f;->width:I

    iget v1, p0, Lio/intercom/a/a/a/g/a/f;->height:I

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/intercom/a/a/a/g/a/f;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/intercom/a/a/a/g/a/f;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", either provide dimensions in the constructor or call override()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lio/intercom/a/a/a/g/a/f;->width:I

    iget v1, p0, Lio/intercom/a/a/a/g/a/f;->height:I

    invoke-interface {p1, v0, v1}, Lio/intercom/a/a/a/g/a/g;->aP(II)V

    return-void
.end method

.method public removeCallback(Lio/intercom/a/a/a/g/a/g;)V
    .locals 0

    return-void
.end method
