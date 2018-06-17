.class public Lio/intercom/a/a/a/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/b/a;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private awZ:I

.field private cHA:Ljava/lang/Boolean;

.field private cHB:Landroid/graphics/Bitmap$Config;

.field private cHj:[B

.field private cHk:Ljava/nio/ByteBuffer;

.field private cHl:Lio/intercom/a/a/a/b/c;

.field private cHn:[I

.field private final cHo:[I

.field private final cHp:Lio/intercom/a/a/a/b/a$a;

.field private cHq:[S

.field private cHr:[B

.field private cHs:[B

.field private cHt:[B

.field private cHu:[I

.field private cHv:I

.field private cHw:Landroid/graphics/Bitmap;

.field private cHx:Z

.field private cHy:I

.field private cHz:I

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/intercom/a/a/a/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/b/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lio/intercom/a/a/a/b/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lio/intercom/a/a/a/b/e;->cHo:[I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lio/intercom/a/a/a/b/e;->cHB:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    new-instance v0, Lio/intercom/a/a/a/b/c;

    invoke-direct {v0}, Lio/intercom/a/a/a/b/c;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    return-void
.end method

.method public constructor <init>(Lio/intercom/a/a/a/b/a$a;Lio/intercom/a/a/a/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/b/e;-><init>(Lio/intercom/a/a/a/b/a$a;)V

    invoke-direct {p0, p2, p3, p4}, Lio/intercom/a/a/a/b/e;->a(Lio/intercom/a/a/a/b/c;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private HS()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    iget v2, p0, Lio/intercom/a/a/a/b/e;->cHz:I

    iget v3, p0, Lio/intercom/a/a/a/b/e;->cHy:I

    invoke-interface {v1, v2, v3, v0}, Lio/intercom/a/a/a/b/a$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHB:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private a(Lio/intercom/a/a/a/b/b;Lio/intercom/a/a/a/b/b;)Landroid/graphics/Bitmap;
    .locals 32

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/b/e;->cHu:[I

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    invoke-interface {v2, v4}, Lio/intercom/a/a/a/b/a$a;->f(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGW:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGW:I

    if-lez v2, :cond_7

    move-object/from16 v0, p2

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGW:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lio/intercom/a/a/a/b/b;->cGV:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v2, v2, Lio/intercom/a/a/a/b/c;->bgColor:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lio/intercom/a/a/a/b/b;->cGZ:[I

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v4, v4, Lio/intercom/a/a/a/b/c;->cHg:I

    move-object/from16 v0, p1

    iget v5, v0, Lio/intercom/a/a/a/b/b;->cGX:I

    if-ne v4, v5, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lio/intercom/a/a/a/b/b;->cGT:I

    move-object/from16 v0, p0

    iget v5, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int/2addr v4, v5

    move-object/from16 v0, p2

    iget v5, v0, Lio/intercom/a/a/a/b/b;->cGR:I

    move-object/from16 v0, p0

    iget v6, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int/2addr v5, v6

    move-object/from16 v0, p2

    iget v6, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    move-object/from16 v0, p0

    iget v7, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int/2addr v6, v7

    move-object/from16 v0, p2

    iget v7, v0, Lio/intercom/a/a/a/b/b;->cGQ:I

    move-object/from16 v0, p0

    iget v8, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    mul-int/2addr v4, v7

    add-int v7, v5, v4

    :goto_1
    if-ge v5, v7, :cond_7

    add-int v8, v5, v6

    move v4, v5

    :goto_2
    if-ge v4, v8, :cond_5

    aput v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lio/intercom/a/a/a/b/e;->cHv:I

    if-nez v4, :cond_3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    add-int/2addr v5, v4

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGW:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    move-object/from16 v0, p0

    iget v9, v0, Lio/intercom/a/a/a/b/e;->cHy:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_7
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v4, v0, Lio/intercom/a/a/a/b/b;->cGY:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_8
    if-nez p1, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v2, v2, Lio/intercom/a/a/a/b/c;->width:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v4, v4, Lio/intercom/a/a/a/b/c;->height:I

    mul-int/2addr v2, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    array-length v4, v4

    if-ge v4, v2, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    invoke-interface {v4, v2}, Lio/intercom/a/a/a/b/a$a;->fd(I)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHq:[S

    if-nez v4, :cond_b

    const/16 v4, 0x1000

    new-array v4, v4, [S

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/intercom/a/a/a/b/e;->cHq:[S

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHq:[S

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHr:[B

    if-nez v4, :cond_c

    const/16 v4, 0x1000

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/intercom/a/a/a/b/e;->cHr:[B

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHr:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHs:[B

    if-nez v4, :cond_d

    const/16 v4, 0x1001

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/intercom/a/a/a/b/e;->cHs:[B

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHs:[B

    move-object/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lio/intercom/a/a/a/b/e;->readByte()I

    move-result v24

    const/4 v4, 0x1

    shl-int v25, v4, v24

    add-int/lit8 v26, v25, 0x1

    add-int/lit8 v8, v25, 0x2

    const/4 v12, -0x1

    add-int/lit8 v7, v24, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v7

    add-int/lit8 v6, v4, -0x1

    const/4 v4, 0x0

    :goto_4
    move/from16 v0, v25

    if-ge v4, v0, :cond_f

    const/4 v5, 0x0

    aput-short v5, v21, v4

    int-to-byte v5, v4

    aput-byte v5, v22, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, p1

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    move-object/from16 v0, p1

    iget v4, v0, Lio/intercom/a/a/a/b/b;->cGT:I

    mul-int/2addr v2, v4

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHj:[B

    move-object/from16 v27, v0

    const/4 v11, 0x0

    move v9, v11

    move v14, v11

    move v15, v11

    move v4, v11

    move/from16 v16, v11

    move v10, v11

    move/from16 v17, v11

    move v5, v11

    :goto_5
    if-ge v9, v2, :cond_10

    if-nez v4, :cond_17

    invoke-direct/range {p0 .. p0}, Lio/intercom/a/a/a/b/e;->readByte()I

    move-result v4

    if-gtz v4, :cond_15

    :goto_6
    if-gtz v4, :cond_16

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lio/intercom/a/a/a/b/e;->status:I

    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lio/intercom/a/a/a/b/b;->cGU:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2e

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHu:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGT:I

    move-object/from16 v0, p0

    iget v4, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int v19, v2, v4

    move-object/from16 v0, p1

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGR:I

    move-object/from16 v0, p0

    iget v4, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int v20, v2, v4

    move-object/from16 v0, p1

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    move-object/from16 v0, p0

    iget v4, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int v21, v2, v4

    move-object/from16 v0, p1

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGQ:I

    move-object/from16 v0, p0

    iget v4, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    div-int v22, v2, v4

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lio/intercom/a/a/a/b/e;->cHv:I

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lio/intercom/a/a/a/b/e;->cHy:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHn:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v14, v0, :cond_28

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lio/intercom/a/a/a/b/b;->cGU:Z

    if-eqz v7, :cond_37

    move/from16 v0, v19

    if-lt v4, v0, :cond_12

    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    :cond_12
    :goto_9
    add-int v8, v4, v5

    move v7, v4

    move v15, v8

    move/from16 v16, v5

    move/from16 v17, v6

    :goto_a
    add-int v6, v7, v20

    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_1d

    const/4 v4, 0x1

    move v5, v4

    :goto_b
    move/from16 v0, v25

    if-ge v6, v0, :cond_20

    mul-int v6, v6, v24

    add-int v7, v6, v22

    add-int v4, v7, v21

    add-int v8, v6, v24

    if-ge v8, v4, :cond_13

    add-int v4, v6, v24

    :cond_13
    mul-int v6, v14, v23

    move-object/from16 v0, p1

    iget v8, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    mul-int/2addr v6, v8

    if-eqz v5, :cond_21

    move-object v5, v12

    :goto_c
    if-ge v7, v4, :cond_1f

    aget-byte v8, v26, v6

    and-int/lit16 v8, v8, 0xff

    aget v8, v27, v8

    if-eqz v8, :cond_1e

    aput v8, v18, v7

    :cond_14
    :goto_d
    add-int v6, v6, v23

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lio/intercom/a/a/a/b/e;->cHj:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v11, v13, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto/16 :goto_6

    :cond_16
    const/4 v5, 0x0

    :cond_17
    aget-byte v11, v27, v5

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v15

    add-int/2addr v11, v14

    add-int/lit8 v13, v15, 0x8

    add-int/lit8 v19, v5, 0x1

    add-int/lit8 v18, v4, -0x1

    move v14, v11

    move v15, v13

    :goto_e
    if-lt v15, v7, :cond_3a

    and-int v13, v14, v6

    shr-int/2addr v14, v7

    sub-int/2addr v15, v7

    move/from16 v0, v25

    if-ne v13, v0, :cond_18

    add-int/lit8 v7, v24, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v7

    add-int/lit8 v6, v4, -0x1

    add-int/lit8 v8, v25, 0x2

    const/4 v13, -0x1

    move v12, v13

    goto :goto_e

    :cond_18
    move/from16 v0, v26

    if-eq v13, v0, :cond_3a

    const/4 v4, -0x1

    if-ne v12, v4, :cond_19

    aget-byte v4, v22, v13

    aput-byte v4, v23, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v13

    move v12, v13

    goto :goto_e

    :cond_19
    if-lt v13, v8, :cond_39

    move/from16 v0, v16

    int-to-byte v4, v0

    aput-byte v4, v23, v10

    add-int/lit8 v5, v10, 0x1

    move v4, v12

    :goto_f
    move/from16 v0, v25

    if-lt v4, v0, :cond_1a

    aget-byte v10, v22, v4

    aput-byte v10, v23, v5

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v21, v4

    goto :goto_f

    :cond_1a
    aget-byte v4, v22, v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v4, v0

    aput-byte v4, v20, v17

    add-int/lit8 v11, v17, 0x1

    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v10, v5

    :goto_10
    if-lez v10, :cond_1b

    add-int/lit8 v5, v10, -0x1

    aget-byte v4, v23, v5

    aput-byte v4, v20, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v10, v5

    goto :goto_10

    :cond_1b
    const/16 v4, 0x1000

    if-ge v8, v4, :cond_38

    int-to-short v4, v12

    aput-short v4, v21, v8

    move/from16 v0, v16

    int-to-byte v4, v0

    aput-byte v4, v22, v8

    add-int/lit8 v8, v8, 0x1

    and-int v4, v8, v6

    if-nez v4, :cond_38

    const/16 v4, 0x1000

    if-ge v8, v4, :cond_38

    add-int/lit8 v5, v7, 0x1

    add-int v4, v6, v8

    :goto_11
    move/from16 v17, v11

    move v6, v4

    move v7, v5

    move v12, v13

    goto :goto_e

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_7

    :pswitch_0
    const/4 v4, 0x4

    goto/16 :goto_9

    :pswitch_1
    const/4 v4, 0x2

    const/4 v5, 0x4

    goto/16 :goto_9

    :pswitch_2
    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_9

    :cond_1d
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_b

    :cond_1e
    if-nez v5, :cond_14

    if-eqz v2, :cond_14

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_d

    :cond_1f
    move-object v12, v5

    :cond_20
    add-int/lit8 v14, v14, 0x1

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_8

    :cond_21
    sub-int v5, v4, v7

    mul-int v5, v5, v23

    add-int v28, v6, v5

    move v13, v7

    :goto_12
    if-ge v13, v4, :cond_20

    move-object/from16 v0, p1

    iget v0, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    move/from16 v29, v0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move v5, v6

    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    move/from16 v30, v0

    add-int v30, v30, v6

    move/from16 v0, v30

    if-ge v5, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v5, v0, :cond_23

    move/from16 v0, v28

    if-ge v5, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    move-object/from16 v30, v0

    aget-byte v30, v30, v5

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHn:[I

    move-object/from16 v31, v0

    aget v30, v31, v30

    if-eqz v30, :cond_22

    shr-int/lit8 v31, v30, 0x18

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    add-int v11, v11, v31

    shr-int/lit8 v31, v30, 0x10

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    add-int v10, v10, v31

    shr-int/lit8 v31, v30, 0x8

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    add-int v9, v9, v31

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    add-int v8, v8, v30

    add-int/lit8 v7, v7, 0x1

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_23
    add-int v5, v6, v29

    :goto_14
    add-int v30, v6, v29

    move-object/from16 v0, p0

    iget v0, v0, Lio/intercom/a/a/a/b/e;->awZ:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    if-ge v5, v0, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v5, v0, :cond_25

    move/from16 v0, v28

    if-ge v5, v0, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    move-object/from16 v30, v0

    aget-byte v30, v30, v5

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHn:[I

    move-object/from16 v31, v0

    aget v30, v31, v30

    if-eqz v30, :cond_24

    shr-int/lit8 v31, v30, 0x18

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    add-int v11, v11, v31

    shr-int/lit8 v31, v30, 0x10

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    add-int v10, v10, v31

    shr-int/lit8 v31, v30, 0x8

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    add-int v9, v9, v31

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    add-int v8, v8, v30

    add-int/lit8 v7, v7, 0x1

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_25
    if-nez v7, :cond_26

    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_27

    aput v5, v18, v13

    move-object v5, v12

    :goto_16
    add-int v6, v6, v23

    add-int/lit8 v7, v13, 0x1

    move v13, v7

    move-object v12, v5

    goto/16 :goto_12

    :cond_26
    div-int v5, v11, v7

    shl-int/lit8 v5, v5, 0x18

    div-int/2addr v10, v7

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v5, v10

    div-int/2addr v9, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    div-int v7, v8, v7

    or-int/2addr v5, v7

    goto :goto_15

    :cond_27
    if-eqz v2, :cond_36

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_36

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_16

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    if-nez v2, :cond_29

    if-nez v12, :cond_2d

    const/4 v2, 0x0

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    :cond_29
    :goto_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lio/intercom/a/a/a/b/e;->cHx:Z

    if-eqz v2, :cond_2c

    move-object/from16 v0, p1

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGW:I

    if-eqz v2, :cond_2a

    move-object/from16 v0, p1

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGW:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2b

    invoke-direct/range {p0 .. p0}, Lio/intercom/a/a/a/b/e;->HS()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    move-object/from16 v0, p0

    iget v9, v0, Lio/intercom/a/a/a/b/e;->cHy:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_2c
    invoke-direct/range {p0 .. p0}, Lio/intercom/a/a/a/b/e;->HS()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    move-object/from16 v0, p0

    iget v9, v0, Lio/intercom/a/a/a/b/e;->cHy:I

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v2

    :cond_2d
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_17

    :cond_2e
    move-object/from16 v0, p0

    iget-object v10, v0, Lio/intercom/a/a/a/b/e;->cHu:[I

    move-object/from16 v0, p1

    iget v11, v0, Lio/intercom/a/a/a/b/b;->cGT:I

    move-object/from16 v0, p1

    iget v12, v0, Lio/intercom/a/a/a/b/b;->cGR:I

    move-object/from16 v0, p1

    iget v13, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    move-object/from16 v0, p1

    iget v14, v0, Lio/intercom/a/a/a/b/b;->cGQ:I

    move-object/from16 v0, p0

    iget v2, v0, Lio/intercom/a/a/a/b/e;->cHv:I

    if-nez v2, :cond_31

    const/4 v2, 0x1

    :goto_19
    move-object/from16 v0, p0

    iget v15, v0, Lio/intercom/a/a/a/b/e;->cHz:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHt:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/intercom/a/a/a/b/e;->cHn:[I

    move-object/from16 v17, v0

    const/4 v5, -0x1

    const/4 v4, 0x0

    move v7, v4

    :goto_1a
    if-ge v7, v11, :cond_34

    add-int v4, v7, v12

    mul-int v6, v4, v15

    add-int v9, v6, v14

    add-int v4, v9, v13

    add-int v8, v6, v15

    if-ge v8, v4, :cond_2f

    add-int v4, v6, v15

    :cond_2f
    move-object/from16 v0, p1

    iget v6, v0, Lio/intercom/a/a/a/b/b;->cGS:I

    mul-int/2addr v6, v7

    move v8, v6

    :goto_1b
    if-ge v9, v4, :cond_33

    aget-byte v6, v16, v8

    and-int/lit16 v0, v6, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v5, :cond_30

    aget v18, v17, v18

    if-eqz v18, :cond_32

    aput v18, v10, v9

    :cond_30
    :goto_1c
    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v8, v6

    goto :goto_1b

    :cond_31
    const/4 v2, 0x0

    goto :goto_19

    :cond_32
    move v5, v6

    goto :goto_1c

    :cond_33
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1a

    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    if-nez v4, :cond_35

    if-eqz v2, :cond_35

    const/4 v2, -0x1

    if-eq v5, v2, :cond_35

    const/4 v2, 0x1

    :goto_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    goto/16 :goto_18

    :cond_35
    const/4 v2, 0x0

    goto :goto_1d

    :cond_36
    move-object v5, v12

    goto/16 :goto_16

    :cond_37
    move v7, v14

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    goto/16 :goto_a

    :cond_38
    move v4, v6

    move v5, v7

    goto/16 :goto_11

    :cond_39
    move v5, v10

    move v4, v13

    goto/16 :goto_f

    :cond_3a
    move/from16 v4, v18

    move/from16 v5, v19

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized a(Lio/intercom/a/a/a/b/c;Ljava/nio/ByteBuffer;I)V
    .locals 4

    monitor-enter p0

    if-gtz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample size must be >=0, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v0, 0x0

    iput v0, p0, Lio/intercom/a/a/a/b/e;->status:I

    iput-object p1, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/b/e;->cHx:Z

    iget-object v0, p1, Lio/intercom/a/a/a/b/c;->cHd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/b/b;

    iget v0, v0, Lio/intercom/a/a/a/b/b;->cGW:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/b/e;->cHx:Z

    :cond_2
    iput v1, p0, Lio/intercom/a/a/a/b/e;->awZ:I

    iget v0, p1, Lio/intercom/a/a/a/b/c;->width:I

    div-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/b/e;->cHz:I

    iget v0, p1, Lio/intercom/a/a/a/b/c;->height:I

    div-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/b/e;->cHy:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    iget v1, p1, Lio/intercom/a/a/a/b/c;->width:I

    iget v2, p1, Lio/intercom/a/a/a/b/c;->height:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/b/a$a;->fd(I)[B

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/b/e;->cHt:[B

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    iget v1, p0, Lio/intercom/a/a/a/b/e;->cHz:I

    iget v2, p0, Lio/intercom/a/a/a/b/e;->cHy:I

    mul-int/2addr v1, v2

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/b/a$a;->fe(I)[I

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/b/e;->cHu:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private readByte()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public final HI()I
    .locals 3

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v0, v0, Lio/intercom/a/a/a/b/c;->cHb:I

    if-lez v0, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    if-gez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    const/4 v0, -0x1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v2, v2, Lio/intercom/a/a/a/b/c;->cHb:I

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHd:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/b/b;

    iget v0, v0, Lio/intercom/a/a/a/b/b;->delay:I

    goto :goto_0
.end method

.method public final HJ()I
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    return v0
.end method

.method public final HK()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    return-void
.end method

.method public final HL()I
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHt:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHu:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized HM()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v0, v0, Lio/intercom/a/a/a/b/c;->cHb:I

    if-lez v0, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lio/intercom/a/a/a/b/e;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/intercom/a/a/a/b/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to decode frame, frameCount="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v3, v3, Lio/intercom/a/a/a/b/c;->cHb:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", framePointer="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/b/e;->status:I

    :cond_2
    iget v0, p0, Lio/intercom/a/a/a/b/e;->status:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lio/intercom/a/a/a/b/e;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lio/intercom/a/a/a/b/e;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lio/intercom/a/a/a/b/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to decode frame, status="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lio/intercom/a/a/a/b/e;->status:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lio/intercom/a/a/a/b/e;->status:I

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHj:[B

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/b/a$a;->fd(I)[B

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/b/e;->cHj:[B

    :cond_6
    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, v0, Lio/intercom/a/a/a/b/c;->cHd:Ljava/util/List;

    iget v1, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/b/b;

    iget v1, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_b

    iget-object v3, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v3, v3, Lio/intercom/a/a/a/b/c;->cHd:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/intercom/a/a/a/b/b;

    move-object v3, v1

    :goto_1
    iget-object v1, v0, Lio/intercom/a/a/a/b/b;->cGZ:[I

    if-eqz v1, :cond_8

    iget-object v1, v0, Lio/intercom/a/a/a/b/b;->cGZ:[I

    :goto_2
    iput-object v1, p0, Lio/intercom/a/a/a/b/e;->cHn:[I

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHn:[I

    if-nez v1, :cond_9

    sget-object v0, Lio/intercom/a/a/a/b/e;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lio/intercom/a/a/a/b/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No valid color table found for frame #"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x1

    iput v0, p0, Lio/intercom/a/a/a/b/e;->status:I

    move-object v0, v2

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v1, v1, Lio/intercom/a/a/a/b/c;->cHa:[I

    goto :goto_2

    :cond_9
    iget-boolean v1, v0, Lio/intercom/a/a/a/b/b;->cGV:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHn:[I

    const/4 v2, 0x0

    iget-object v4, p0, Lio/intercom/a/a/a/b/e;->cHo:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lio/intercom/a/a/a/b/e;->cHn:[I

    array-length v6, v6

    invoke-static {v1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHo:[I

    iput-object v1, p0, Lio/intercom/a/a/a/b/e;->cHn:[I

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHn:[I

    iget v2, v0, Lio/intercom/a/a/a/b/b;->cGX:I

    const/4 v4, 0x0

    aput v4, v1, v2

    :cond_a
    invoke-direct {p0, v0, v3}, Lio/intercom/a/a/a/b/e;->a(Lio/intercom/a/a/a/b/b;Lio/intercom/a/a/a/b/b;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    move-object v3, v2

    goto :goto_1
.end method

.method public final a(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/intercom/a/a/a/b/e;->cHB:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final advance()V
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v1, v1, Lio/intercom/a/a/a/b/c;->cHb:I

    rem-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/b/e;->cHv:I

    return-void
.end method

.method public final clear()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHt:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHt:[B

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/b/a$a;->B([B)V

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHu:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHu:[I

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/b/a$a;->h([I)V

    :cond_1
    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/b/a$a;->f(Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v2, p0, Lio/intercom/a/a/a/b/e;->cHw:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lio/intercom/a/a/a/b/e;->cHA:Ljava/lang/Boolean;

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHj:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHp:Lio/intercom/a/a/a/b/a$a;

    iget-object v1, p0, Lio/intercom/a/a/a/b/e;->cHj:[B

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/b/a$a;->B([B)V

    :cond_3
    return-void
.end method

.method public final getData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHk:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getFrameCount()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/b/e;->cHl:Lio/intercom/a/a/a/b/c;

    iget v0, v0, Lio/intercom/a/a/a/b/c;->cHb:I

    return v0
.end method
