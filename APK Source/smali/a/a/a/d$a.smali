.class public final La/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field cpA:La/a/a/g$a;

.field cpc:La/a/a/d$b;

.field cpd:La/a/a/d$c;

.field cpf:Z

.field cpg:Z

.field public cph:Z

.field cpi:Z

.field cpj:Z

.field cpk:Z

.field cpl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field cpr:J

.field cpw:Z

.field cpx:Ljava/util/List;
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

.field cpy:Ljava/util/List;
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

.field cpz:Ljava/util/List;
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

.field id:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La/a/a/d$b;->cpB:La/a/a/d$b;

    iput-object v0, p0, La/a/a/d$a;->cpc:La/a/a/d$b;

    sget-object v0, La/a/a/d$c;->cpJ:La/a/a/d$c;

    iput-object v0, p0, La/a/a/d$a;->cpd:La/a/a/d$c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, La/a/a/d$a;->cpr:J

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/a/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final FP()La/a/a/g$a;
    .locals 1

    iget-object v0, p0, La/a/a/d$a;->cpA:La/a/a/g$a;

    if-nez v0, :cond_0

    invoke-static {}, La/a/a/g;->FW()La/a/a/g$a;

    move-result-object v0

    iput-object v0, p0, La/a/a/d$a;->cpA:La/a/a/g$a;

    :cond_0
    iget-object v0, p0, La/a/a/d$a;->cpA:La/a/a/g$a;

    return-object v0
.end method

.method public final FQ()La/a/a/d;
    .locals 1

    new-instance v0, La/a/a/d;

    invoke-direct {v0, p0}, La/a/a/d;-><init>(La/a/a/d$a;)V

    return-object v0
.end method

.method public final d(La/a/a/j;)La/a/a/d$a;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, La/a/a/d$a;->cpl:Ljava/util/List;

    iget-object v0, p0, La/a/a/d$a;->cpl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
