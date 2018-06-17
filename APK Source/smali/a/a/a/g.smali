.class public La/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/g$a;,
        La/a/a/g$b;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final cqG:I

.field public final cqH:I

.field public final cqI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public final cqJ:Z

.field cqK:La/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/k",
            "<",
            "La/a/a/g/o;",
            ">;"
        }
    .end annotation
.end field

.field private cqL:Ljava/lang/String;

.field public final flags:I

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, La/a/a/g;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(La/a/a/g$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, La/a/a/g$a;->cqG:I

    iput v0, p0, La/a/a/g;->cqG:I

    iget v0, p1, La/a/a/g$a;->cqH:I

    iput v0, p0, La/a/a/g;->cqH:I

    iget v0, p1, La/a/a/g$a;->version:I

    iput v0, p0, La/a/a/g;->version:I

    const/4 v0, 0x0

    iget-boolean v1, p1, La/a/a/g$a;->cqJ:Z

    if-eqz v1, :cond_0

    const v0, 0x8000

    :cond_0
    iget-boolean v1, p1, La/a/a/g$a;->cqJ:Z

    iput-boolean v1, p0, La/a/a/g;->cqJ:Z

    iput v0, p0, La/a/a/g;->flags:I

    iget-object v0, p1, La/a/a/g$a;->cqI:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, La/a/a/g$a;->cqI:Ljava/util/List;

    iput-object v0, p0, La/a/a/g;->cqI:Ljava/util/List;

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La/a/a/g;->cqI:Ljava/util/List;

    goto :goto_0
.end method

.method private constructor <init>(La/a/a/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/k",
            "<",
            "La/a/a/g/o;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0xff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, La/a/a/g;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p1, La/a/a/k;->cqT:La/a/a/k$b;

    sget-object v1, La/a/a/k$b;->crW:La/a/a/k$b;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p1, La/a/a/k;->cqW:I

    iput v0, p0, La/a/a/g;->cqG:I

    iget-wide v0, p1, La/a/a/k;->cqX:J

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, La/a/a/g;->cqH:I

    iget-wide v0, p1, La/a/a/k;->cqX:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, La/a/a/g;->version:I

    iget-wide v0, p1, La/a/a/k;->cqX:J

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, La/a/a/g;->flags:I

    iget-wide v0, p1, La/a/a/k;->cqX:J

    const-wide/32 v2, 0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, La/a/a/g;->cqJ:Z

    iget-object v0, p1, La/a/a/k;->cqY:La/a/a/g/g;

    check-cast v0, La/a/a/g/o;

    iget-object v0, v0, La/a/a/g/o;->cqI:Ljava/util/List;

    iput-object v0, p0, La/a/a/g;->cqI:Ljava/util/List;

    iput-object p1, p0, La/a/a/g;->cqK:La/a/a/k;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static FW()La/a/a/g$a;
    .locals 2

    new-instance v0, La/a/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/g$a;-><init>(B)V

    return-object v0
.end method

.method public static a(La/a/a/k;)La/a/a/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/k",
            "<+",
            "La/a/a/g/g;",
            ">;)",
            "La/a/a/g;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/k;->cqT:La/a/a/k$b;

    sget-object v1, La/a/a/k$b;->crW:La/a/a/k$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, La/a/a/g;

    invoke-direct {v0, p0}, La/a/a/g;-><init>(La/a/a/k;)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    iget-object v0, p0, La/a/a/g;->cqL:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EDNS: version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/a/a/g;->version:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", flags:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, La/a/a/g;->cqJ:Z

    if-eqz v0, :cond_0

    const-string v0, " do"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "; udp: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, La/a/a/g;->cqG:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/a/g;->cqI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, La/a/a/g;->cqI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/a;

    invoke-virtual {v0}, La/a/a/c/a;->FY()La/a/a/g$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, La/a/a/c/a;->Ga()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/g;->cqL:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, La/a/a/g;->cqL:Ljava/lang/String;

    return-object v0
.end method
