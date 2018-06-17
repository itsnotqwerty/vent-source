.class public Landroid/support/constraint/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/d$a;
    }
.end annotation


# static fields
.field public static gN:F


# instance fields
.field protected bw:I

.field protected bx:I

.field db:I

.field dc:I

.field public fW:I

.field public fX:I

.field fY:Landroid/support/constraint/a/a/k;

.field fZ:Landroid/support/constraint/a/a/k;

.field protected gA:F

.field protected gB:I

.field protected gC:I

.field protected gD:I

.field private gE:I

.field private gF:I

.field private gG:I

.field private gH:I

.field protected gI:I

.field protected gJ:I

.field public gK:I

.field public gL:I

.field public gM:I

.field public gO:F

.field public gP:F

.field public gQ:Ljava/lang/Object;

.field private gR:I

.field public gS:I

.field public gT:Ljava/lang/String;

.field private gU:Ljava/lang/String;

.field gV:Z

.field gW:Z

.field public gX:I

.field public gY:I

.field gZ:Z

.field public ga:I

.field public gb:I

.field public gc:I

.field public gd:I

.field public ge:F

.field public gf:I

.field public gg:I

.field public gh:F

.field public gi:Z

.field public gj:Z

.field gk:I

.field gl:F

.field public gm:[I

.field public gn:F

.field go:Landroid/support/constraint/a/a/c;

.field gp:Landroid/support/constraint/a/a/c;

.field gq:Landroid/support/constraint/a/a/c;

.field gr:Landroid/support/constraint/a/a/c;

.field gs:Landroid/support/constraint/a/a/c;

.field gt:Landroid/support/constraint/a/a/c;

.field gu:Landroid/support/constraint/a/a/c;

.field gv:Landroid/support/constraint/a/a/c;

.field protected gw:[Landroid/support/constraint/a/a/c;

.field protected gx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field protected gy:[I

.field gz:Landroid/support/constraint/a/a/d;

.field ha:Z

.field public hb:[F

.field protected hc:[Landroid/support/constraint/a/a/d;

.field protected hd:[Landroid/support/constraint/a/a/d;

.field he:Landroid/support/constraint/a/a/d;

.field hf:Landroid/support/constraint/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/support/constraint/a/a/d;->gN:F

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Landroid/support/constraint/a/a/d;->fW:I

    iput v6, p0, Landroid/support/constraint/a/a/d;->fX:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->ga:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gb:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gc:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gd:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/a/a/d;->ge:F

    iput v3, p0, Landroid/support/constraint/a/a/d;->gf:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gg:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/a/a/d;->gh:F

    iput v6, p0, Landroid/support/constraint/a/a/d;->gk:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/constraint/a/a/d;->gl:F

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gm:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->gn:F

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fR:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fT:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gt:Landroid/support/constraint/a/a/c;

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fU:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gu:Landroid/support/constraint/a/a/c;

    new-instance v0, Landroid/support/constraint/a/a/c;

    sget-object v1, Landroid/support/constraint/a/a/c$c;->fS:Landroid/support/constraint/a/a/c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/c;-><init>(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/support/constraint/a/a/c;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    new-array v0, v5, [I

    sget v1, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v1, v0, v3

    sget v1, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v1, v0, v7

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gy:[I

    iput-object v4, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iput v3, p0, Landroid/support/constraint/a/a/d;->db:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->dc:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->gA:F

    iput v6, p0, Landroid/support/constraint/a/a/d;->gB:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gC:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gD:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gE:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gF:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gG:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gH:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gI:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gJ:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gK:I

    sget v0, Landroid/support/constraint/a/a/d;->gN:F

    iput v0, p0, Landroid/support/constraint/a/a/d;->gO:F

    sget v0, Landroid/support/constraint/a/a/d;->gN:F

    iput v0, p0, Landroid/support/constraint/a/a/d;->gP:F

    iput v3, p0, Landroid/support/constraint/a/a/d;->gR:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gS:I

    iput-object v4, p0, Landroid/support/constraint/a/a/d;->gT:Ljava/lang/String;

    iput-object v4, p0, Landroid/support/constraint/a/a/d;->gU:Ljava/lang/String;

    iput v3, p0, Landroid/support/constraint/a/a/d;->gX:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gY:I

    new-array v0, v5, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->hb:[F

    new-array v0, v5, [Landroid/support/constraint/a/a/d;

    aput-object v4, v0, v3

    aput-object v4, v0, v7

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->hc:[Landroid/support/constraint/a/a/d;

    new-array v0, v5, [Landroid/support/constraint/a/a/d;

    aput-object v4, v0, v3

    aput-object v4, v0, v7

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    iput-object v4, p0, Landroid/support/constraint/a/a/d;->he:Landroid/support/constraint/a/a/d;

    iput-object v4, p0, Landroid/support/constraint/a/a/d;->hf:Landroid/support/constraint/a/a/d;

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gt:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gu:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;IZLandroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/c;IIIIFZZIIIFZ)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v3

    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v15

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v10

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/support/constraint/a/e;->ei:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v2, v2, Landroid/support/constraint/a/a/j;->state:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v2, v2, Landroid/support/constraint/a/a/j;->state:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v2

    iget-wide v4, v2, Landroid/support/constraint/a/f;->eK:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/support/constraint/a/f;->eK:J

    :cond_0
    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    move-object/from16 v0, p8

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/support/constraint/a/e;->am()Landroid/support/constraint/a/f;

    move-result-object v2

    iget-wide v6, v2, Landroid/support/constraint/a/f;->eT:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, Landroid/support/constraint/a/f;->eT:J

    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v11

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v13

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v12, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    if-eqz v13, :cond_2d

    add-int/lit8 v5, v5, 0x1

    move v9, v5

    :goto_1
    if-eqz p14, :cond_6

    const/16 p16, 0x3

    :cond_6
    sget-object v5, Landroid/support/constraint/a/a/d$1;->hg:[I

    add-int/lit8 v6, p5, -0x1

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_2c

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_3
    if-eqz p20, :cond_7

    if-nez v11, :cond_b

    if-nez v12, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-virtual {v0, v4, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;I)V

    :cond_7
    :goto_4
    if-nez v2, :cond_d

    if-eqz p6, :cond_c

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-lez p11, :cond_8

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p11

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_8
    const v5, 0x7fffffff

    move/from16 v0, p12

    if-ge v0, v5, :cond_9

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p12

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_9
    :goto_5
    if-eqz p20, :cond_a

    if-eqz p15, :cond_19

    :cond_a
    const/4 v2, 0x2

    if-ge v9, v2, :cond_1

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x1

    goto :goto_2

    :cond_b
    if-eqz v11, :cond_7

    if-nez v12, :cond_7

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v6

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15, v6, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_4

    :cond_c
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_5

    :cond_d
    const/4 v6, -0x2

    move/from16 v0, p17

    if-ne v0, v6, :cond_e

    move/from16 p17, v5

    :cond_e
    const/4 v6, -0x2

    move/from16 v0, p18

    if-ne v0, v6, :cond_f

    move/from16 p18, v5

    :cond_f
    if-lez p17, :cond_10

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p17

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    move/from16 v0, p17

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_10
    if-lez p18, :cond_2b

    if-eqz p2, :cond_13

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p18

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :goto_6
    move/from16 v0, p18

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v8, v5

    :goto_7
    const/4 v5, 0x1

    move/from16 v0, p16

    if-ne v0, v5, :cond_16

    if-eqz p2, :cond_14

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_11
    :goto_8
    if-eqz v2, :cond_9

    const/4 v5, 0x2

    if-eq v9, v5, :cond_9

    if-nez p14, :cond_9

    const/4 v5, 0x0

    move/from16 v0, p17

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez p18, :cond_12

    move/from16 v0, p18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_12
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move v2, v5

    goto/16 :goto_5

    :cond_13
    const/4 v6, 0x6

    move-object/from16 v0, p1

    move/from16 v1, p18

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_6

    :cond_14
    if-eqz p15, :cond_15

    const/4 v5, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_8

    :cond_15
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v8, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    goto :goto_8

    :cond_16
    const/4 v5, 0x2

    move/from16 v0, p16

    if-ne v0, v5, :cond_11

    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    if-eq v2, v5, :cond_17

    move-object/from16 v0, p7

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    if-ne v2, v5, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v5

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v2

    move/from16 v7, p19

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    const/4 v2, 0x0

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v2, v5}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v5

    goto :goto_9

    :cond_19
    if-nez v11, :cond_1b

    if-nez v12, :cond_1b

    if-nez v13, :cond_1b

    if-eqz p2, :cond_1a

    const/4 v2, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1a
    :goto_a
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_0

    :cond_1b
    if-eqz v11, :cond_1c

    if-nez v12, :cond_1c

    if-eqz p2, :cond_1a

    const/4 v2, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_a

    :cond_1c
    if-nez v11, :cond_1d

    if-eqz v12, :cond_1d

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v2

    neg-int v2, v2

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v2, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-eqz p2, :cond_1a

    const/4 v2, 0x0

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_a

    :cond_1d
    if-eqz v11, :cond_1a

    if-eqz v12, :cond_1a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x5

    if-eqz v2, :cond_27

    if-eqz p2, :cond_1e

    if-nez p11, :cond_1e

    const/4 v2, 0x0

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v2, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1e
    if-nez p16, :cond_24

    const/4 v2, 0x6

    if-gtz p18, :cond_1f

    if-lez p17, :cond_20

    :cond_1f
    const/4 v2, 0x4

    const/4 v5, 0x1

    :cond_20
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    neg-int v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    if-gtz p18, :cond_21

    if-lez p17, :cond_2a

    :cond_21
    const/4 v2, 0x1

    :goto_b
    move v14, v5

    :goto_c
    if-eqz v2, :cond_22

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v12

    move-object/from16 v5, p1

    move-object v6, v4

    move-object v7, v15

    move/from16 v9, p13

    move-object v11, v3

    invoke-virtual/range {v5 .. v13}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_22
    if-eqz v14, :cond_23

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v2

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15, v2, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v2

    neg-int v2, v2

    const/4 v5, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v2, v5}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_23
    if-eqz p2, :cond_1a

    const/4 v2, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_a

    :cond_24
    const/4 v2, 0x1

    move/from16 v0, p16

    if-ne v0, v2, :cond_25

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v13, 0x6

    move v14, v5

    goto :goto_c

    :cond_25
    const/4 v2, 0x3

    move/from16 v0, p16

    if-ne v0, v2, :cond_29

    const/4 v6, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x4

    if-nez p14, :cond_26

    const/4 v2, 0x6

    :cond_26
    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    neg-int v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v7, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move v2, v6

    move v14, v5

    goto :goto_c

    :cond_27
    const/4 v2, 0x1

    if-eqz p2, :cond_28

    invoke-virtual/range {p7 .. p7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v6

    const/4 v7, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15, v6, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    invoke-virtual/range {p8 .. p8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v6

    neg-int v6, v6

    const/4 v7, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v10, v6, v7}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_28
    move v14, v5

    goto :goto_c

    :cond_29
    move v2, v6

    move v14, v5

    goto :goto_c

    :cond_2a
    move v2, v6

    goto/16 :goto_b

    :cond_2b
    move v8, v5

    goto/16 :goto_7

    :cond_2c
    move/from16 v5, p10

    goto/16 :goto_3

    :cond_2d
    move v9, v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/d$1;->fE:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/c$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/c$c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gt:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gu:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/d;->gC:I

    iput p2, p0, Landroid/support/constraint/a/a/d;->gD:I

    return-void
.end method

.method public final a(Landroid/support/constraint/a/a/c$c;Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/a/c$c;II)V
    .locals 7

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v1

    sget v4, Landroid/support/constraint/a/a/c$b;->fJ:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c;IIIIZ)Z

    return-void
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gt:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gu:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ax()V

    return-void
.end method

.method public a(Landroid/support/constraint/a/e;)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v33

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v4, v4, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v5, :cond_15

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v4, v4, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v6, 0x1

    aget v4, v4, v6

    sget v6, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v6, :cond_17

    const/4 v4, 0x1

    move v7, v4

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    if-eq v4, v6, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    if-ne v4, v6, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    check-cast v4, Landroid/support/constraint/a/a/e;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d;I)V

    const/4 v4, 0x1

    move v8, v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    if-eq v4, v6, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    if-ne v4, v6, :cond_34

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    check-cast v4, Landroid/support/constraint/a/a/e;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6}, Landroid/support/constraint/a/a/e;->a(Landroid/support/constraint/a/a/d;I)V

    const/4 v9, 0x1

    move v4, v9

    :goto_2
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v9, 0x8

    if-eq v6, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v6, v6, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1, v9, v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_5
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v9, 0x8

    if-eq v6, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v6, v6, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1, v9, v10}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_6
    move/from16 v25, v7

    move v6, v5

    move/from16 v26, v4

    move/from16 v19, v8

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->db:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/d;->bw:I

    if-ge v4, v5, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->bw:I

    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/d;->dc:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->bx:I

    if-ge v5, v7, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/d;->bx:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sget v8, Landroid/support/constraint/a/a/d$a;->hj:I

    if-eq v7, v8, :cond_19

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sget v9, Landroid/support/constraint/a/a/d$a;->hj:I

    if-eq v8, v9, :cond_1a

    const/4 v8, 0x1

    :goto_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/d;->gB:I

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/constraint/a/a/d;->gk:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/d;->gA:F

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/constraint/a/a/d;->gl:F

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/d;->gA:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_33

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_33

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    sget v11, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v10, v11, :cond_22

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sget v11, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v10, v11, :cond_22

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/d;->ga:I

    if-nez v10, :cond_9

    const/4 v10, 0x3

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/constraint/a/a/d;->ga:I

    :cond_9
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/d;->gb:I

    if-nez v10, :cond_a

    const/4 v10, 0x3

    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/constraint/a/a/d;->gb:I

    :cond_a
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_b

    if-eqz v7, :cond_1b

    if-nez v8, :cond_1b

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    if-nez v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1c

    :cond_c
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-nez v7, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_10

    if-eqz v6, :cond_1f

    if-nez v25, :cond_1f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gc:I

    if-lez v7, :cond_20

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gf:I

    if-nez v7, :cond_20

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    move/from16 v27, v9

    move/from16 v28, v5

    move v14, v4

    :goto_a
    if-eqz v27, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gk:I

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_25

    :cond_11
    const/16 v18, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v5, :cond_26

    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_26

    const/4 v10, 0x1

    :goto_c
    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v24, 0x0

    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->fW:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v4, v4, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v8

    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v4, v4, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v7

    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v5, 0x0

    aget v9, v4, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/constraint/a/a/d;->gC:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/a/a/d;->bw:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gm:[I

    const/4 v5, 0x0

    aget v16, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gO:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->ga:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gc:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gd:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->ge:F

    move/from16 v23, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v24}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;IZLandroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/c;IIIIFZZIIIFZ)V

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->fX:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    :cond_14
    :goto_f
    return-void

    :cond_15
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_1

    :cond_18
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_1

    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_1b
    if-nez v7, :cond_b

    if-eqz v8, :cond_b

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gB:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/constraint/a/a/d;->gl:F

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gl:F

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-nez v7, :cond_d

    :cond_1d
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/constraint/a/a/d;->gl:F

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gl:F

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    goto/16 :goto_8

    :cond_1f
    if-nez v6, :cond_10

    if-eqz v25, :cond_10

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/constraint/a/a/d;->gl:F

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gl:F

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    goto/16 :goto_9

    :cond_20
    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/constraint/a/a/d;->gl:F

    div-float/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gl:F

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/constraint/a/a/d;->gk:I

    :cond_21
    move/from16 v27, v9

    move/from16 v28, v5

    move v14, v4

    goto/16 :goto_a

    :cond_22
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sget v8, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v7, v8, :cond_23

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/support/constraint/a/a/d;->gk:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gl:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->dc:I

    int-to-float v7, v7

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move/from16 v27, v9

    move/from16 v28, v5

    move v14, v4

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    sget v8, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v7, v8, :cond_33

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/constraint/a/a/d;->gk:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/d;->gB:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_24

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->gl:F

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iput v5, v0, Landroid/support/constraint/a/a/d;->gl:F

    :cond_24
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/d;->gl:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/constraint/a/a/d;->db:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    float-to-int v5, v5

    move/from16 v27, v9

    move/from16 v28, v5

    move v14, v4

    goto/16 :goto_a

    :cond_25
    const/16 v18, 0x0

    goto/16 :goto_b

    :cond_26
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_27
    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_28
    const/4 v7, 0x0

    goto/16 :goto_e

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v5, :cond_2d

    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_2d

    const/4 v10, 0x1

    :goto_10
    if-eqz v27, :cond_2e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    :cond_2a
    const/16 v18, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gK:I

    if-lez v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget v4, v4, Landroid/support/constraint/a/a/j;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/e;)V

    :cond_2b
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v4, v4, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v8

    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iget-object v4, v4, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v7

    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v5, 0x1

    aget v9, v4, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/constraint/a/a/d;->gD:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/constraint/a/a/d;->bx:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gm:[I

    const/4 v5, 0x1

    aget v16, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gb:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gf:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gg:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/constraint/a/a/d;->gh:F

    move/from16 v23, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, v25

    move/from16 v14, v28

    move/from16 v19, v26

    invoke-direct/range {v4 .. v24}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/e;ZLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;IZLandroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/c;IIIIFZZIIIFZ)V

    if-eqz v27, :cond_2c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gk:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/d;->gl:F

    move-object/from16 v4, p1

    move-object/from16 v5, v32

    move-object/from16 v6, v31

    move-object/from16 v7, v30

    move-object/from16 v8, v29

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)V

    :cond_2c
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/d;->gn:F

    const/high16 v6, 0x42b40000    # 90.0f

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v10, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v12

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v5

    sget-object v6, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v13

    sget-object v6, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v6

    sget-object v7, Landroid/support/constraint/a/a/c$c;->fN:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v4, v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v14

    sget-object v7, Landroid/support/constraint/a/a/c$c;->fO:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v4, v7}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v7

    sget-object v8, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v4, v8}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v15

    sget-object v8, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    invoke-virtual {v4, v8}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c$c;)Landroid/support/constraint/a/a/c;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v4

    float-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    int-to-double v0, v11

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v9, v0

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v4

    float-to-double v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    int-to-double v8, v11

    mul-double/2addr v6, v8

    double-to-float v9, v6

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    goto/16 :goto_f

    :cond_2d
    const/4 v10, 0x0

    goto/16 :goto_10

    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_11

    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/d;->gK:I

    const/4 v5, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->h(Ljava/lang/Object;)Landroid/support/constraint/a/h;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    const/16 v24, 0x0

    goto/16 :goto_12

    :cond_30
    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_31
    const/4 v7, 0x0

    goto/16 :goto_14

    :cond_32
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/d;->gl:F

    move-object/from16 v4, p1

    move-object/from16 v5, v30

    move-object/from16 v6, v29

    move-object/from16 v7, v32

    move-object/from16 v8, v31

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;F)V

    goto/16 :goto_15

    :cond_33
    move/from16 v27, v9

    move/from16 v28, v5

    move v14, v4

    goto/16 :goto_a

    :cond_34
    move v4, v9

    goto/16 :goto_2

    :cond_35
    move/from16 v25, v7

    move v6, v5

    move/from16 v26, v9

    move/from16 v19, v8

    goto/16 :goto_3
.end method

.method public final aA()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/support/constraint/a/a/d;->gb:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gA:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gf:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gg:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gy:[I

    aget v1, v1, v0

    sget v2, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aB()V
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v0, v0, v1

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iget-object v0, v2, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v3, :cond_3

    iget-object v0, v3, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v2, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    if-ne v0, v4, :cond_0

    iput v6, v2, Landroid/support/constraint/a/a/j;->type:I

    iget-object v0, v3, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    iput v6, v0, Landroid/support/constraint/a/a/j;->type:I

    :cond_0
    iget-object v0, v2, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v0

    iget-object v4, v2, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fP:Landroid/support/constraint/a/a/c$c;

    if-eq v4, v5, :cond_1

    iget-object v4, v2, Landroid/support/constraint/a/a/j;->hM:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fw:Landroid/support/constraint/a/a/c$c;

    sget-object v5, Landroid/support/constraint/a/a/c$c;->fQ:Landroid/support/constraint/a/a/c$c;

    if-ne v4, v5, :cond_2

    :cond_1
    neg-int v0, v0

    :cond_2
    iget-object v3, v3, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v2, v3, v0}, Landroid/support/constraint/a/a/j;->b(Landroid/support/constraint/a/a/j;I)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final aC()Landroid/support/constraint/a/a/k;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fY:Landroid/support/constraint/a/a/k;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/a/k;

    invoke-direct {v0}, Landroid/support/constraint/a/a/k;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->fY:Landroid/support/constraint/a/a/k;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fY:Landroid/support/constraint/a/a/k;

    return-object v0
.end method

.method public final aD()Landroid/support/constraint/a/a/k;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fZ:Landroid/support/constraint/a/a/k;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/a/k;

    invoke-direct {v0}, Landroid/support/constraint/a/a/k;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->fZ:Landroid/support/constraint/a/a/k;

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fZ:Landroid/support/constraint/a/a/k;

    return-object v0
.end method

.method public final aE()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gE:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->gI:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final aF()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gF:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->gJ:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final aG()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gC:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->gI:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final aH()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gD:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->gJ:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final aI()Z
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/d;->gK:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aJ()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    return-object v0
.end method

.method public aK()V
    .locals 5

    iget v0, p0, Landroid/support/constraint/a/a/d;->gC:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->gD:I

    iget v2, p0, Landroid/support/constraint/a/a/d;->gC:I

    iget v3, p0, Landroid/support/constraint/a/a/d;->db:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/a/a/d;->gD:I

    iget v4, p0, Landroid/support/constraint/a/a/d;->dc:I

    add-int/2addr v3, v4

    iput v0, p0, Landroid/support/constraint/a/a/d;->gE:I

    iput v1, p0, Landroid/support/constraint/a/a/d;->gF:I

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/constraint/a/a/d;->gG:I

    sub-int v0, v3, v1

    iput v0, p0, Landroid/support/constraint/a/a/d;->gH:I

    return-void
.end method

.method public final aL()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final aM()I
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final aN()I
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public aO()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-static {v0}, Landroid/support/constraint/a/e;->i(Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-static {v0}, Landroid/support/constraint/a/e;->i(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-static {v0}, Landroid/support/constraint/a/e;->i(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-static {v1}, Landroid/support/constraint/a/e;->i(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    iput v2, p0, Landroid/support/constraint/a/a/d;->gC:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gD:I

    iget v2, p0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iput v4, p0, Landroid/support/constraint/a/a/d;->db:I

    iput v4, p0, Landroid/support/constraint/a/a/d;->dc:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gy:[I

    aget v2, v2, v4

    sget v3, Landroid/support/constraint/a/a/d$a;->hh:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/support/constraint/a/a/d;->db:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Landroid/support/constraint/a/a/d;->db:I

    :cond_2
    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sget v3, Landroid/support/constraint/a/a/d$a;->hh:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/support/constraint/a/a/d;->dc:I

    if-ge v1, v2, :cond_3

    iget v1, p0, Landroid/support/constraint/a/a/d;->dc:I

    :cond_3
    iput v0, p0, Landroid/support/constraint/a/a/d;->db:I

    iput v1, p0, Landroid/support/constraint/a/a/d;->dc:I

    iget v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->bx:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Landroid/support/constraint/a/a/d;->bx:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    :cond_4
    iget v0, p0, Landroid/support/constraint/a/a/d;->db:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->bw:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/d;->bw:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->db:I

    goto :goto_0
.end method

.method public au()Z
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public av()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/support/constraint/a/a/c;->fu:Landroid/support/constraint/a/a/j;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/j;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aw()V
    .locals 0

    return-void
.end method

.method public final az()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/constraint/a/a/d;->ga:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gA:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gc:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gd:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->gy:[I

    aget v1, v1, v0

    sget v2, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/d;->gI:I

    iput p2, p0, Landroid/support/constraint/a/a/d;->gJ:I

    return-void
.end method

.method public final c(II)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/d;->gC:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/a/a/d;->db:I

    iget v0, p0, Landroid/support/constraint/a/a/d;->db:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->bw:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/d;->bw:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->db:I

    :cond_0
    return-void
.end method

.method public final d(II)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/d;->gD:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    iget v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->bx:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/d;->bx:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    :cond_0
    return-void
.end method

.method public final getBottom()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gD:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->dc:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getHeight()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    goto :goto_0
.end method

.method public final getRight()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gC:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->db:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getWidth()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/d;->db:I

    goto :goto_0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/d;->gC:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/d;->gD:I

    return v0
.end method

.method public i(I)V
    .locals 0

    invoke-static {p1, p0}, Landroid/support/constraint/a/a/h;->a(ILandroid/support/constraint/a/a/d;)V

    return-void
.end method

.method public final j(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    sget v0, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/d;->gL:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/d;->setWidth(I)V

    :cond_0
    return-void
.end method

.method public final k(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    sget v0, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/d;->gM:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/d;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iput v5, p0, Landroid/support/constraint/a/a/d;->gA:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v4, v6, -0x1

    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, "W"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v4, v0

    :goto_2
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    add-int/lit8 v2, v6, -0x1

    if-ge v0, v2, :cond_7

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v3, v2, v5

    if-lez v3, :cond_8

    cmpl-float v3, v0, v5

    if-lez v3, :cond_8

    if-ne v4, v1, :cond_5

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    cmpl-float v1, v0, v5

    if-lez v1, :cond_1

    iput v0, p0, Landroid/support/constraint/a/a/d;->gA:F

    iput v4, p0, Landroid/support/constraint/a/a/d;->gB:I

    goto :goto_0

    :cond_3
    const-string v0, "H"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_4
    move v3, v0

    move v4, v2

    goto :goto_2

    :cond_5
    div-float v0, v2, v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_3

    :catch_0
    move-exception v0

    :cond_6
    move v0, v5

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_3

    :catch_1
    move-exception v0

    :cond_8
    move v0, v5

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x7fffffff

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->go:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gp:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gq:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gr:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gs:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gt:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gu:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gv:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gz:Landroid/support/constraint/a/a/d;

    iput v4, p0, Landroid/support/constraint/a/a/d;->gn:F

    iput v3, p0, Landroid/support/constraint/a/a/d;->db:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->dc:I

    iput v4, p0, Landroid/support/constraint/a/a/d;->gA:F

    iput v5, p0, Landroid/support/constraint/a/a/d;->gB:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gC:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gD:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gE:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gF:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gG:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gH:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gI:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gJ:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gK:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->bw:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->bx:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gL:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gM:I

    sget v0, Landroid/support/constraint/a/a/d;->gN:F

    iput v0, p0, Landroid/support/constraint/a/a/d;->gO:F

    sget v0, Landroid/support/constraint/a/a/d;->gN:F

    iput v0, p0, Landroid/support/constraint/a/a/d;->gP:F

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gy:[I

    sget v1, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v1, v0, v3

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gy:[I

    const/4 v1, 0x1

    sget v2, Landroid/support/constraint/a/a/d$a;->hh:I

    aput v2, v0, v1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gQ:Ljava/lang/Object;

    iput v3, p0, Landroid/support/constraint/a/a/d;->gR:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gS:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->gU:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/support/constraint/a/a/d;->gV:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/d;->gW:Z

    iput v3, p0, Landroid/support/constraint/a/a/d;->gX:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gY:I

    iput-boolean v3, p0, Landroid/support/constraint/a/a/d;->gZ:Z

    iput-boolean v3, p0, Landroid/support/constraint/a/a/d;->ha:Z

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->hb:[F

    aput v4, v0, v3

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->hb:[F

    const/4 v1, 0x1

    aput v4, v0, v1

    iput v5, p0, Landroid/support/constraint/a/a/d;->fW:I

    iput v5, p0, Landroid/support/constraint/a/a/d;->fX:I

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gm:[I

    aput v6, v0, v3

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gm:[I

    const/4 v1, 0x1

    aput v6, v0, v1

    iput v3, p0, Landroid/support/constraint/a/a/d;->ga:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gb:I

    iput v7, p0, Landroid/support/constraint/a/a/d;->ge:F

    iput v7, p0, Landroid/support/constraint/a/a/d;->gh:F

    iput v6, p0, Landroid/support/constraint/a/a/d;->gd:I

    iput v6, p0, Landroid/support/constraint/a/a/d;->gg:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gc:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->gf:I

    iput v5, p0, Landroid/support/constraint/a/a/d;->gk:I

    iput v7, p0, Landroid/support/constraint/a/a/d;->gl:F

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fY:Landroid/support/constraint/a/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fY:Landroid/support/constraint/a/a/k;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/k;->reset()V

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fZ:Landroid/support/constraint/a/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->fZ:Landroid/support/constraint/a/a/k;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/k;->reset()V

    :cond_1
    return-void
.end method

.method public final setHeight(I)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/d;->dc:I

    iget v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->bx:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/d;->bx:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->dc:I

    :cond_0
    return-void
.end method

.method public final setMinHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->bx:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/d;->bx:I

    goto :goto_0
.end method

.method public final setMinWidth(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->bw:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/support/constraint/a/a/d;->bw:I

    goto :goto_0
.end method

.method public final setWidth(I)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/d;->db:I

    iget v0, p0, Landroid/support/constraint/a/a/d;->db:I

    iget v1, p0, Landroid/support/constraint/a/a/d;->bw:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/d;->bw:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->db:I

    :cond_0
    return-void
.end method

.method public final setX(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/d;->gC:I

    return-void
.end method

.method public final setY(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/d;->gD:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gU:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gU:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->gT:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->gT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/d;->db:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/d;->dc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/d;->gM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
