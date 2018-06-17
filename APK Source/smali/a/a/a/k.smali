.class public final La/a/a/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/k$a;,
        La/a/a/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "La/a/a/g/g;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private transient cpv:Ljava/lang/Integer;

.field public final cqS:La/a/a/e;

.field public final cqT:La/a/a/k$b;

.field public final cqU:La/a/a/k$a;

.field protected final cqV:Z

.field public final cqW:I

.field public final cqX:J

.field public final cqY:La/a/a/g/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private sY:[B


# direct methods
.method public constructor <init>(La/a/a/e;La/a/a/k$b;IJLa/a/a/g/g;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/e;",
            "La/a/a/k$b;",
            "IJTD;)V"
        }
    .end annotation

    sget-object v4, La/a/a/k$a;->crd:La/a/a/k$a;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, La/a/a/k;-><init>(La/a/a/e;La/a/a/k$b;La/a/a/k$a;IJLa/a/a/g/g;Z)V

    return-void
.end method

.method private constructor <init>(La/a/a/e;La/a/a/k$b;La/a/a/k$a;IJLa/a/a/g/g;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/e;",
            "La/a/a/k$b;",
            "La/a/a/k$a;",
            "IJTD;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/k;->cqS:La/a/a/e;

    iput-object p2, p0, La/a/a/k;->cqT:La/a/a/k$b;

    iput-object p3, p0, La/a/a/k;->cqU:La/a/a/k$a;

    iput p4, p0, La/a/a/k;->cqW:I

    iput-wide p5, p0, La/a/a/k;->cqX:J

    iput-object p7, p0, La/a/a/k;->cqY:La/a/a/g/g;

    iput-boolean p8, p0, La/a/a/k;->cqV:Z

    return-void
.end method

.method public static b(Ljava/io/DataInputStream;[B)La/a/a/k;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "[B)",
            "La/a/a/k",
            "<",
            "La/a/a/g/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-static {v2}, La/a/a/k$b;->fa(I)La/a/a/k$b;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v15

    and-int/lit16 v2, v15, 0x7fff

    invoke-static {v2}, La/a/a/k$a;->eZ(I)La/a/a/k$a;

    move-result-object v16

    const v2, 0x8000

    and-int/2addr v2, v15

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v12, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v4, v4

    add-long v18, v2, v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    sget-object v3, La/a/a/k$1;->coM:[I

    invoke-virtual {v14}, La/a/a/k$b;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v10, La/a/a/g/v;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v2, v14}, La/a/a/g/v;-><init>(Ljava/io/DataInputStream;ILa/a/a/k$b;)V

    :goto_1
    new-instance v3, La/a/a/k;

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, v16

    move v7, v15

    move-wide/from16 v8, v18

    move v11, v12

    invoke-direct/range {v3 .. v11}, La/a/a/k;-><init>(La/a/a/e;La/a/a/k$b;La/a/a/k$a;IJLa/a/a/g/g;Z)V

    return-object v3

    :cond_0
    const/4 v2, 0x0

    move v12, v2

    goto :goto_0

    :pswitch_0
    invoke-static/range {p0 .. p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v3

    invoke-static/range {p0 .. p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v6, v2

    const-wide v8, 0xffffffffL

    and-long v5, v6, v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v10, v2

    const-wide v20, 0xffffffffL

    and-long v10, v10, v20

    new-instance v2, La/a/a/g/r;

    invoke-direct/range {v2 .. v11}, La/a/a/g/r;-><init>(La/a/a/e;La/a/a/e;JIIIJ)V

    move-object v10, v2

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    invoke-static/range {p0 .. p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v5

    new-instance v10, La/a/a/g/s;

    invoke-direct {v10, v2, v3, v4, v5}, La/a/a/g/s;-><init>(IIILa/a/a/e;)V

    goto :goto_1

    :pswitch_2
    invoke-static/range {p0 .. p1}, La/a/a/g/i;->d(Ljava/io/DataInputStream;[B)La/a/a/g/i;

    move-result-object v10

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x10

    new-array v2, v2, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v10, La/a/a/g/b;

    invoke-direct {v10, v2}, La/a/a/g/b;-><init>([B)V

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x4

    new-array v2, v2, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v10, La/a/a/g/a;

    invoke-direct {v10, v2}, La/a/a/g/a;-><init>([B)V

    goto :goto_1

    :pswitch_5
    invoke-static/range {p0 .. p1}, La/a/a/g/c;->c(Ljava/io/DataInputStream;[B)La/a/a/g/c;

    move-result-object v2

    new-instance v10, La/a/a/g/j;

    iget-object v2, v2, La/a/a/g/c;->cqS:La/a/a/e;

    invoke-direct {v10, v2}, La/a/a/g/j;-><init>(La/a/a/e;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-static/range {p0 .. p1}, La/a/a/g/c;->c(Ljava/io/DataInputStream;[B)La/a/a/g/c;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_7
    invoke-static/range {p0 .. p1}, La/a/a/g/c;->c(Ljava/io/DataInputStream;[B)La/a/a/g/c;

    move-result-object v2

    new-instance v10, La/a/a/g/p;

    iget-object v2, v2, La/a/a/g/c;->cqS:La/a/a/e;

    invoke-direct {v10, v2}, La/a/a/g/p;-><init>(La/a/a/e;)V

    goto/16 :goto_1

    :pswitch_8
    new-array v2, v2, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v10, La/a/a/g/u;

    invoke-direct {v10, v2}, La/a/a/g/u;-><init>([B)V

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    invoke-static {v0, v2}, La/a/a/g/o;->e(Ljava/io/DataInputStream;I)La/a/a/g/o;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p0

    invoke-static {v0, v2}, La/a/a/g/e;->b(Ljava/io/DataInputStream;I)La/a/a/g/e;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, La/a/a/g/q;->a(Ljava/io/DataInputStream;[BI)La/a/a/g/q;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p0

    invoke-static {v0, v2}, La/a/a/g/f;->c(Ljava/io/DataInputStream;I)La/a/a/g/f;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_d
    invoke-static/range {p0 .. p1}, La/a/a/e;->a(Ljava/io/DataInputStream;[B)La/a/a/e;

    move-result-object v3

    invoke-virtual {v3}, La/a/a/e;->size()I

    move-result v4

    sub-int/2addr v2, v4

    new-array v2, v2, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    array-length v5, v2

    if-eq v4, v5, :cond_1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_1
    invoke-static {v2}, La/a/a/g/k;->w([B)[La/a/a/k$b;

    move-result-object v2

    new-instance v10, La/a/a/g/k;

    invoke-direct {v10, v3, v2}, La/a/a/g/k;-><init>(La/a/a/e;[La/a/a/k$b;)V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    invoke-static {v0, v2}, La/a/a/g/l;->d(Ljava/io/DataInputStream;I)La/a/a/g/l;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_f
    invoke-static/range {p0 .. p0}, La/a/a/g/m;->a(Ljava/io/DataInputStream;)La/a/a/g/m;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    add-int/lit8 v2, v2, -0x3

    new-array v2, v2, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    array-length v7, v2

    if-eq v6, v7, :cond_2

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_2
    new-instance v10, La/a/a/g/t;

    invoke-direct {v10, v3, v4, v5, v2}, La/a/a/g/t;-><init>(BBB[B)V

    goto/16 :goto_1

    :pswitch_11
    new-array v2, v2, [B

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v10, La/a/a/g/n;

    invoke-direct {v10, v2}, La/a/a/g/n;-><init>([B)V

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, p0

    invoke-static {v0, v2}, La/a/a/g/d;->a(Ljava/io/DataInputStream;I)La/a/a/g/d;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public final e(La/a/a/j;)Z
    .locals 2

    iget-object v0, p1, La/a/a/j;->cqT:La/a/a/k$b;

    iget-object v1, p0, La/a/a/k;->cqT:La/a/a/k$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, La/a/a/j;->cqT:La/a/a/k$b;

    sget-object v1, La/a/a/k$b;->csH:La/a/a/k$b;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p1, La/a/a/j;->cqU:La/a/a/k$a;

    iget-object v1, p0, La/a/a/k;->cqU:La/a/a/k$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, La/a/a/j;->cqU:La/a/a/k$a;

    sget-object v1, La/a/a/k$a;->cre:La/a/a/k$a;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, La/a/a/j;->cqS:La/a/a/e;

    iget-object v1, p0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v0, v1}, La/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, La/a/a/k;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, La/a/a/k;

    iget-object v2, p0, La/a/a/k;->cqS:La/a/a/e;

    iget-object v3, p1, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v2, v3}, La/a/a/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/k;->cqT:La/a/a/k$b;

    iget-object v3, p1, La/a/a/k;->cqT:La/a/a/k$b;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, La/a/a/k;->cqU:La/a/a/k$a;

    iget-object v3, p1, La/a/a/k;->cqU:La/a/a/k$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, La/a/a/k;->cqY:La/a/a/g/g;

    iget-object v3, p1, La/a/a/k;->cqY:La/a/a/g/g;

    invoke-virtual {v2, v3}, La/a/a/g/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, La/a/a/k;->cpv:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v0}, La/a/a/e;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, La/a/a/k;->cqT:La/a/a/k$b;

    invoke-virtual {v1}, La/a/a/k$b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, La/a/a/k;->cqU:La/a/a/k$a;

    invoke-virtual {v1}, La/a/a/k$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, La/a/a/k;->cqY:La/a/a/g/g;

    invoke-virtual {v1}, La/a/a/g/g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, La/a/a/k;->cpv:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, La/a/a/k;->cpv:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final toByteArray()[B
    .locals 4

    iget-object v0, p0, La/a/a/k;->sY:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v1}, La/a/a/e;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    iget-object v2, p0, La/a/a/k;->cqY:La/a/a/g/g;

    invoke-virtual {v2}, La/a/a/g/g;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v2, p0, La/a/a/k;->cqY:La/a/a/g/g;

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty Record has no byte representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v2, p0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v2, v1}, La/a/a/e;->writeToStream(Ljava/io/OutputStream;)V

    iget-object v2, p0, La/a/a/k;->cqT:La/a/a/k$b;

    iget v2, v2, La/a/a/k$b;->value:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, p0, La/a/a/k;->cqW:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v2, p0, La/a/a/k;->cqX:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, La/a/a/k;->cqY:La/a/a/g/g;

    invoke-virtual {v2}, La/a/a/g/g;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, La/a/a/k;->cqY:La/a/a/g/g;

    invoke-virtual {v2}, La/a/a/g/g;->Gl()V

    iget-object v2, v2, La/a/a/g/g;->sY:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/k;->sY:[B

    :cond_1
    iget-object v0, p0, La/a/a/k;->sY:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/a/a/k;->cqS:La/a/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, La/a/a/k;->cqX:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/k;->cqU:La/a/a/k$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/k;->cqT:La/a/a/k$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/k;->cqY:La/a/a/g/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
