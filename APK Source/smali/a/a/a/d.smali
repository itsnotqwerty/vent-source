.class public La/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/d$a;,
        La/a/a/d$b;,
        La/a/a/d$c;
    }
.end annotation


# static fields
.field private static final coH:Ljava/util/logging/Logger;


# instance fields
.field public final cpc:La/a/a/d$b;

.field public final cpd:La/a/a/d$c;

.field public final cpe:Z

.field public final cpf:Z

.field public final cpg:Z

.field public final cph:Z

.field public final cpi:Z

.field public final cpj:Z

.field public final cpk:Z

.field public final cpl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public final cpm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/a/k",
            "<+",
            "La/a/a/g/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public final cpn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/a/k",
            "<+",
            "La/a/a/g/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public final cpo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/a/k",
            "<+",
            "La/a/a/g/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public final cpp:I

.field private cpq:La/a/a/g;

.field public final cpr:J

.field private cps:[B

.field private cpt:Ljava/lang/String;

.field private cpu:La/a/a/d;

.field private transient cpv:Ljava/lang/Integer;

.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La/a/a/d;->coH:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(La/a/a/d$a;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, La/a/a/d$a;->id:I

    iput v0, p0, La/a/a/d;->id:I

    iget-object v0, p1, La/a/a/d$a;->cpc:La/a/a/d$b;

    iput-object v0, p0, La/a/a/d;->cpc:La/a/a/d$b;

    iget-object v0, p1, La/a/a/d$a;->cpd:La/a/a/d$c;

    iput-object v0, p0, La/a/a/d;->cpd:La/a/a/d$c;

    iget-wide v0, p1, La/a/a/d$a;->cpr:J

    iput-wide v0, p0, La/a/a/d;->cpr:J

    iget-boolean v0, p1, La/a/a/d$a;->cpw:Z

    iput-boolean v0, p0, La/a/a/d;->cpe:Z

    iget-boolean v0, p1, La/a/a/d$a;->cpf:Z

    iput-boolean v0, p0, La/a/a/d;->cpf:Z

    iget-boolean v0, p1, La/a/a/d$a;->cpg:Z

    iput-boolean v0, p0, La/a/a/d;->cpg:Z

    iget-boolean v0, p1, La/a/a/d$a;->cph:Z

    iput-boolean v0, p0, La/a/a/d;->cph:Z

    iget-boolean v0, p1, La/a/a/d$a;->cpi:Z

    iput-boolean v0, p0, La/a/a/d;->cpi:Z

    iget-boolean v0, p1, La/a/a/d$a;->cpj:Z

    iput-boolean v0, p0, La/a/a/d;->cpj:Z

    iget-boolean v0, p1, La/a/a/d$a;->cpk:Z

    iput-boolean v0, p0, La/a/a/d;->cpk:Z

    iget-object v0, p1, La/a/a/d$a;->cpl:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    :goto_0
    iget-object v0, p1, La/a/a/d$a;->cpx:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    :goto_1
    iget-object v0, p1, La/a/a/d$a;->cpy:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    :goto_2
    iget-object v0, p1, La/a/a/d$a;->cpz:Ljava/util/List;

    if-nez v0, :cond_3

    iget-object v0, p1, La/a/a/d$a;->cpA:La/a/a/g$a;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    :goto_3
    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-static {v0}, La/a/a/d;->A(Ljava/util/List;)I

    move-result v0

    iput v0, p0, La/a/a/d;->cpp:I

    iget v0, p0, La/a/a/d;->cpp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, La/a/a/d;->cpp:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_4
    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    iget-object v0, v0, La/a/a/k;->cqT:La/a/a/k$b;

    sget-object v2, La/a/a/k$b;->crW:La/a/a/k$b;

    if-ne v0, v2, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be only one OPT pseudo RR in the additional section"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, La/a/a/d$a;->cpl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p1, La/a/a/d$a;->cpl:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, La/a/a/d$a;->cpx:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p1, La/a/a/d$a;->cpx:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, La/a/a/d$a;->cpy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p1, La/a/a/d$a;->cpy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p1, La/a/a/d$a;->cpz:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v0, p1, La/a/a/d$a;->cpz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_4
    iget-object v1, p1, La/a/a/d$a;->cpA:La/a/a/g$a;

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p1, La/a/a/d$a;->cpz:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, La/a/a/d$a;->cpz:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v0, p1, La/a/a/d$a;->cpA:La/a/a/g$a;

    if-eqz v0, :cond_8

    iget-object v0, p1, La/a/a/d$a;->cpA:La/a/a/g$a;

    new-instance v8, La/a/a/g;

    invoke-direct {v8, v0}, La/a/a/g;-><init>(La/a/a/g$a;)V

    iput-object v8, p0, La/a/a/d;->cpq:La/a/a/g;

    iget-object v0, v8, La/a/a/g;->cqK:La/a/a/k;

    if-nez v0, :cond_7

    iget v0, v8, La/a/a/g;->flags:I

    int-to-long v0, v0

    iget v2, v8, La/a/a/g;->cqH:I

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget v2, v8, La/a/a/g;->version:I

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long v4, v0, v2

    new-instance v0, La/a/a/k;

    sget-object v1, La/a/a/e;->cqe:La/a/a/e;

    sget-object v2, La/a/a/k$b;->crW:La/a/a/k$b;

    iget v3, v8, La/a/a/g;->cqG:I

    new-instance v6, La/a/a/g/o;

    iget-object v9, v8, La/a/a/g;->cqI:Ljava/util/List;

    invoke-direct {v6, v9}, La/a/a/g/o;-><init>(Ljava/util/List;)V

    invoke-direct/range {v0 .. v6}, La/a/a/k;-><init>(La/a/a/e;La/a/a/k$b;IJLa/a/a/g/g;)V

    iput-object v0, v8, La/a/a/g;->cqK:La/a/a/k;

    :cond_7
    iget-object v0, v8, La/a/a/g;->cqK:La/a/a/k;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    goto/16 :goto_3

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_a
    return-void
.end method

.method private constructor <init>(La/a/a/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/d;->id:I

    iget-boolean v0, p1, La/a/a/d;->cpe:Z

    iput-boolean v0, p0, La/a/a/d;->cpe:Z

    iget-object v0, p1, La/a/a/d;->cpc:La/a/a/d$b;

    iput-object v0, p0, La/a/a/d;->cpc:La/a/a/d$b;

    iget-boolean v0, p1, La/a/a/d;->cpf:Z

    iput-boolean v0, p0, La/a/a/d;->cpf:Z

    iget-boolean v0, p1, La/a/a/d;->cpg:Z

    iput-boolean v0, p0, La/a/a/d;->cpg:Z

    iget-boolean v0, p1, La/a/a/d;->cph:Z

    iput-boolean v0, p0, La/a/a/d;->cph:Z

    iget-boolean v0, p1, La/a/a/d;->cpi:Z

    iput-boolean v0, p0, La/a/a/d;->cpi:Z

    iget-boolean v0, p1, La/a/a/d;->cpj:Z

    iput-boolean v0, p0, La/a/a/d;->cpj:Z

    iget-boolean v0, p1, La/a/a/d;->cpk:Z

    iput-boolean v0, p0, La/a/a/d;->cpk:Z

    iget-object v0, p1, La/a/a/d;->cpd:La/a/a/d$c;

    iput-object v0, p0, La/a/a/d;->cpd:La/a/a/d$c;

    iget-wide v0, p1, La/a/a/d;->cpr:J

    iput-wide v0, p0, La/a/a/d;->cpr:J

    iget-object v0, p1, La/a/a/d;->cpl:Ljava/util/List;

    iput-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    iget-object v0, p1, La/a/a/d;->cpm:Ljava/util/List;

    iput-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    iget-object v0, p1, La/a/a/d;->cpn:Ljava/util/List;

    iput-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    iget-object v0, p1, La/a/a/d;->cpo:Ljava/util/List;

    iput-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    iget v0, p1, La/a/a/d;->cpp:I

    iput v0, p0, La/a/a/d;->cpp:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, La/a/a/d;->id:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    shr-int/lit8 v0, v4, 0xf

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, La/a/a/d;->cpe:Z

    shr-int/lit8 v0, v4, 0xb

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, La/a/a/d$b;->eV(I)La/a/a/d$b;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpc:La/a/a/d$b;

    shr-int/lit8 v0, v4, 0xa

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, La/a/a/d;->cpf:Z

    shr-int/lit8 v0, v4, 0x9

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, La/a/a/d;->cpg:Z

    shr-int/lit8 v0, v4, 0x8

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, La/a/a/d;->cph:Z

    shr-int/lit8 v0, v4, 0x7

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, La/a/a/d;->cpi:Z

    shr-int/lit8 v0, v4, 0x5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, La/a/a/d;->cpj:Z

    shr-int/lit8 v0, v4, 0x4

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_6

    :goto_6
    iput-boolean v1, p0, La/a/a/d;->cpk:Z

    and-int/lit8 v0, v4, 0xf

    invoke-static {v0}, La/a/a/d$c;->eW(I)La/a/a/d$c;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpd:La/a/a/d$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, La/a/a/d;->cpr:J

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    move v0, v2

    :goto_7
    if-ge v0, v1, :cond_7

    iget-object v7, p0, La/a/a/d;->cpl:Ljava/util/List;

    new-instance v8, La/a/a/j;

    invoke-direct {v8, v3, p1}, La/a/a/j;-><init>(Ljava/io/DataInputStream;[B)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    move v0, v2

    :goto_8
    if-ge v0, v4, :cond_8

    iget-object v1, p0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-static {v3, p1}, La/a/a/k;->b(Ljava/io/DataInputStream;[B)La/a/a/k;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    move v0, v2

    :goto_9
    if-ge v0, v5, :cond_9

    iget-object v1, p0, La/a/a/d;->cpn:Ljava/util/List;

    invoke-static {v3, p1}, La/a/a/k;->b(Ljava/io/DataInputStream;[B)La/a/a/k;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    :goto_a
    if-ge v2, v6, :cond_a

    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-static {v3, p1}, La/a/a/k;->b(Ljava/io/DataInputStream;[B)La/a/a/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-static {v0}, La/a/a/d;->A(Ljava/util/List;)I

    move-result v0

    iput v0, p0, La/a/a/d;->cpp:I

    return-void
.end method

.method private static A(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La/a/a/k",
            "<+",
            "La/a/a/g/g;",
            ">;>;)I"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    iget-object v0, v0, La/a/a/k;->cqT:La/a/a/k$b;

    sget-object v3, La/a/a/k$b;->crW:La/a/a/k$b;

    if-ne v0, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static FO()La/a/a/d$a;
    .locals 2

    new-instance v0, La/a/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/d$a;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final FL()[B
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, La/a/a/d;->cps:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, La/a/a/d;->cps:[B

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v3, p0, La/a/a/d;->cpe:Z

    if-eqz v3, :cond_1

    const v0, 0x8000

    :cond_1
    iget-object v3, p0, La/a/a/d;->cpc:La/a/a/d$b;

    if-eqz v3, :cond_2

    iget-object v3, p0, La/a/a/d;->cpc:La/a/a/d$b;

    iget-byte v3, v3, La/a/a/d$b;->value:B

    shl-int/lit8 v3, v3, 0xb

    add-int/2addr v0, v3

    :cond_2
    iget-boolean v3, p0, La/a/a/d;->cpf:Z

    if-eqz v3, :cond_3

    add-int/lit16 v0, v0, 0x400

    :cond_3
    iget-boolean v3, p0, La/a/a/d;->cpg:Z

    if-eqz v3, :cond_4

    add-int/lit16 v0, v0, 0x200

    :cond_4
    iget-boolean v3, p0, La/a/a/d;->cph:Z

    if-eqz v3, :cond_5

    add-int/lit16 v0, v0, 0x100

    :cond_5
    iget-boolean v3, p0, La/a/a/d;->cpi:Z

    if-eqz v3, :cond_6

    add-int/lit16 v0, v0, 0x80

    :cond_6
    iget-boolean v3, p0, La/a/a/d;->cpj:Z

    if-eqz v3, :cond_7

    add-int/lit8 v0, v0, 0x20

    :cond_7
    iget-boolean v3, p0, La/a/a/d;->cpk:Z

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x10

    :cond_8
    iget-object v3, p0, La/a/a/d;->cpd:La/a/a/d$c;

    if-eqz v3, :cond_9

    iget-object v3, p0, La/a/a/d;->cpd:La/a/a/d$c;

    iget-byte v3, v3, La/a/a/d$c;->value:B

    add-int/2addr v0, v3

    :cond_9
    :try_start_0
    iget v3, p0, La/a/a/d;->id:I

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_1
    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_2
    iget-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_3
    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_4
    iget-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/j;

    invoke-virtual {v0}, La/a/a/j;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_a
    :try_start_1
    iget-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {v0}, La/a/a/k;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {v0}, La/a/a/k;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_7

    :cond_10
    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {v0}, La/a/a/k;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_8

    :cond_11
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cps:[B

    iget-object v0, p0, La/a/a/d;->cps:[B

    goto/16 :goto_0
.end method

.method public final FM()La/a/a/j;
    .locals 2

    iget-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/j;

    return-object v0
.end method

.method public final FN()La/a/a/d;
    .locals 1

    iget-object v0, p0, La/a/a/d;->cpu:La/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/d;

    invoke-direct {v0, p0}, La/a/a/d;-><init>(La/a/a/d;)V

    iput-object v0, p0, La/a/a/d;->cpu:La/a/a/d;

    :cond_0
    iget-object v0, p0, La/a/a/d;->cpu:La/a/a/d;

    return-object v0
.end method

.method public final c(La/a/a/j;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "La/a/a/g/g;",
            ">(",
            "La/a/a/j;",
            ")",
            "Ljava/util/Set",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d;->cpd:La/a/a/d$c;

    sget-object v1, La/a/a/d$c;->cpJ:La/a/a/d$c;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    invoke-virtual {v0, p1}, La/a/a/k;->e(La/a/a/j;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, La/a/a/k;->cqY:La/a/a/g/g;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, La/a/a/d;->coH:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DNSMessage contains duplicate answers. Record: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; DNSMessage: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, La/a/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, La/a/a/d;

    invoke-virtual {p1}, La/a/a/d;->FL()[B

    move-result-object v0

    invoke-virtual {p0}, La/a/a/d;->FL()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La/a/a/d;->cpv:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/a/a/d;->FL()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpv:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, La/a/a/d;->cpv:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x20

    iget-object v0, p0, La/a/a/d;->cpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/d;->cpt:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DNSMessage("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, La/a/a/d;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/d;->cpc:La/a/a/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/d;->cpd:La/a/a/d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, La/a/a/d;->cpe:Z

    if-eqz v0, :cond_7

    const-string v0, "resp[qr=1]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-boolean v0, p0, La/a/a/d;->cpf:Z

    if-eqz v0, :cond_1

    const-string v0, " aa"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v0, p0, La/a/a/d;->cpg:Z

    if-eqz v0, :cond_2

    const-string v0, " tr"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, La/a/a/d;->cph:Z

    if-eqz v0, :cond_3

    const-string v0, " rd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v0, p0, La/a/a/d;->cpi:Z

    if-eqz v0, :cond_4

    const-string v0, " ra"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v0, p0, La/a/a/d;->cpj:Z

    if-eqz v0, :cond_5

    const-string v0, " ad"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v0, p0, La/a/a/d;->cpk:Z

    if-eqz v0, :cond_6

    const-string v0, " cd"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v0, ")\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, La/a/a/d;->cpl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/j;

    const-string v3, "[Q: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v0, "query[qr=0]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/a/a/d;->cpm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    const-string v3, "[A: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    iget-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p0, La/a/a/d;->cpn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    const-string v3, "[N: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, La/a/a/d;->cpo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/k;

    const-string v3, "[X: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, La/a/a/g;->a(La/a/a/k;)La/a/a/g;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, La/a/a/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_d

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/d;->cpt:Ljava/lang/String;

    iget-object v0, p0, La/a/a/d;->cpt:Ljava/lang/String;

    goto/16 :goto_0
.end method
