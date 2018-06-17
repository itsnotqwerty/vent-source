.class public abstract La/a/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private cpt:Ljava/lang/String;

.field private cqL:Ljava/lang/String;

.field public final ctb:I

.field public final ctc:I

.field protected final ctd:[B


# direct methods
.method protected constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/a/a/c/a;->ctb:I

    array-length v0, p2

    iput v0, p0, La/a/a/c/a;->ctc:I

    iput-object p2, p0, La/a/a/c/a;->ctd:[B

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, La/a/a/c/a;->FY()La/a/a/g$b;

    move-result-object v0

    iget v0, v0, La/a/a/g$b;->cqO:I

    iput v0, p0, La/a/a/c/a;->ctb:I

    array-length v0, p1

    iput v0, p0, La/a/a/c/a;->ctc:I

    iput-object p1, p0, La/a/a/c/a;->ctd:[B

    return-void
.end method

.method public static b(I[B)La/a/a/c/a;
    .locals 2

    invoke-static {p0}, La/a/a/g$b;->eY(I)La/a/a/g$b;

    move-result-object v0

    sget-object v1, La/a/a/c/a$1;->cte:[I

    invoke-virtual {v0}, La/a/a/g$b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, La/a/a/c/c;

    invoke-direct {v0, p0, p1}, La/a/a/c/c;-><init>(I[B)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, La/a/a/c/b;

    invoke-direct {v0, p1}, La/a/a/c/b;-><init>([B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract FY()La/a/a/g$b;
.end method

.method protected abstract FZ()Ljava/lang/CharSequence;
.end method

.method public final Ga()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/c/a;->cqL:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/a/a/c/a;->Gb()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/c/a;->cqL:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, La/a/a/c/a;->cqL:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract Gb()Ljava/lang/CharSequence;
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, La/a/a/c/a;->ctb:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, p0, La/a/a/c/a;->ctc:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, La/a/a/c/a;->ctd:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/c/a;->cpt:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/a/a/c/a;->FZ()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/c/a;->cpt:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, La/a/a/c/a;->cpt:Ljava/lang/String;

    return-object v0
.end method
