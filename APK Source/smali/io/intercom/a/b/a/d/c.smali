.class public Lio/intercom/a/b/a/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final bkx:[Ljava/lang/String;

.field private static final bky:[Ljava/lang/String;


# instance fields
.field public bgC:Z

.field public bgE:Z

.field public bgz:Z

.field private bia:I

.field private bkA:Ljava/lang/String;

.field private bkl:[I

.field public bkz:Ljava/lang/String;

.field private final out:Ljava/io/Writer;

.field public separator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    move v0, v1

    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    sget-object v2, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lio/intercom/a/b/a/d/c;->bky:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bky:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bky:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bky:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bky:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/d/c;->df(I)V

    const-string v0, ":"

    iput-object v0, p0, Lio/intercom/a/b/a/d/c;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/b/a/d/c;->bgz:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    return-void
.end method

.method private df(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    iget v2, p0, Lio/intercom/a/b/a/d/c;->bia:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    iget v1, p0, Lio/intercom/a/b/a/d/c;->bia:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/intercom/a/b/a/d/c;->bia:I

    aput p1, v0, v1

    return-void
.end method

.method private dh(I)V
    .locals 2

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    iget v1, p0, Lio/intercom/a/b/a/d/c;->bia:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private dr(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lio/intercom/a/b/a/d/c;->bgC:Z

    if-eqz v0, :cond_1

    sget-object v0, Lio/intercom/a/b/a/d/c;->bky:[Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v2

    move v1, v2

    :goto_1
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x80

    if-ge v2, v5, :cond_2

    aget-object v2, v0, v2

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lio/intercom/a/b/a/d/c;->bkx:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_5

    const-string v2, "\\u2028"

    :cond_3
    :goto_3
    if-ge v1, v3, :cond_4

    iget-object v5, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_4
    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_0

    const-string v2, "\\u2029"

    goto :goto_3

    :cond_6
    if-ge v1, v4, :cond_7

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    :cond_7
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private e(IILjava/lang/String;)Lio/intercom/a/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vQ()I

    move-result v0

    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dangling name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, p0, Lio/intercom/a/b/a/d/c;->bia:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/intercom/a/b/a/d/c;->bia:I

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vS()V

    :cond_2
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private j(ILjava/lang/String;)Lio/intercom/a/b/a/d/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vT()V

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/d/c;->df(I)V

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private vQ()I
    .locals 2

    iget v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    iget v1, p0, Lio/intercom/a/b/a/d/c;->bia:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private vR()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vQ()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vS()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/d/c;->dh(I)V

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/d/c;->dr(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private vS()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkz:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lio/intercom/a/b/a/d/c;->bia:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    iget-object v3, p0, Lio/intercom/a/b/a/d/c;->bkz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private vT()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vQ()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean v0, p0, Lio/intercom/a/b/a/d/c;->bgE:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/d/c;->dh(I)V

    :goto_0
    return-void

    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/d/c;->dh(I)V

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vS()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vS()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lio/intercom/a/b/a/d/c;->dh(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public Kj()Lio/intercom/a/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lio/intercom/a/b/a/d/c;->j(ILjava/lang/String;)Lio/intercom/a/b/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public Kk()Lio/intercom/a/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/a/b/a/d/c;->e(IILjava/lang/String;)Lio/intercom/a/b/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public Kl()Lio/intercom/a/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    const/4 v0, 0x3

    const-string v1, "{"

    invoke-direct {p0, v0, v1}, Lio/intercom/a/b/a/d/c;->j(ILjava/lang/String;)Lio/intercom/a/b/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public Km()Lio/intercom/a/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lio/intercom/a/b/a/d/c;->e(IILjava/lang/String;)Lio/intercom/a/b/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public Kn()Lio/intercom/a/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/b/a/d/c;->bgz:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vT()V

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    goto :goto_0
.end method

.method public Y(J)Lio/intercom/a/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vT()V

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/Number;)Lio/intercom/a/b/a/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lio/intercom/a/b/a/d/c;->bgE:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vT()V

    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public bx(Z)Lio/intercom/a/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vT()V

    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public c(Ljava/lang/Boolean;)Lio/intercom/a/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vT()V

    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "false"

    goto :goto_1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lio/intercom/a/b/a/d/c;->bkl:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    return-void
.end method

.method public fd(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lio/intercom/a/b/a/d/c;->bkA:Ljava/lang/String;

    return-object p0
.end method

.method public fe(Ljava/lang/String;)Lio/intercom/a/b/a/d/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/b/a/d/c;->Kn()Lio/intercom/a/b/a/d/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vR()V

    invoke-direct {p0}, Lio/intercom/a/b/a/d/c;->vT()V

    invoke-direct {p0, p1}, Lio/intercom/a/b/a/d/c;->dr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/intercom/a/b/a/d/c;->bia:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/b/a/d/c;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method
