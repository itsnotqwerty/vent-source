.class final Landroid/support/v7/widget/GridLayout$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public aaA:Z

.field public aaB:[I

.field public aaC:Z

.field public aaD:[Landroid/support/v7/widget/GridLayout$b;

.field public aaE:Z

.field public aaF:[I

.field public aaG:Z

.field public aaH:Z

.field public aaI:Z

.field public aaJ:[I

.field aaK:Z

.field private aaL:Landroid/support/v7/widget/GridLayout$h;

.field private aaM:Landroid/support/v7/widget/GridLayout$h;

.field final synthetic aaN:Landroid/support/v7/widget/GridLayout;

.field public final aaq:Z

.field public aar:I

.field private aas:I

.field aat:Landroid/support/v7/widget/GridLayout$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$j;",
            "Landroid/support/v7/widget/GridLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field public aau:Z

.field aav:Landroid/support/v7/widget/GridLayout$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field public aaw:Z

.field aax:Landroid/support/v7/widget/GridLayout$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field public aay:Z

.field public aaz:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/GridLayout$d;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/support/v7/widget/GridLayout;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->aar:I

    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->aas:I

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aau:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaw:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aay:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaA:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaC:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaE:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaG:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaI:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaK:Z

    new-instance v0, Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$h;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaL:Landroid/support/v7/widget/GridLayout$h;

    new-instance v0, Landroid/support/v7/widget/GridLayout$h;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$h;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaM:Landroid/support/v7/widget/GridLayout$h;

    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    return-void
.end method

.method private G(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaL:Landroid/support/v7/widget/GridLayout$h;

    iput p1, v0, Landroid/support/v7/widget/GridLayout$h;->value:I

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaM:Landroid/support/v7/widget/GridLayout$h;

    neg-int v1, p2

    iput v1, v0, Landroid/support/v7/widget/GridLayout$h;->value:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaG:Z

    return-void
.end method

.method private H(II)I
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$d;->G(II)V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gZ()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->getCount()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private T(Z)Landroid/support/v7/widget/GridLayout$i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/support/v7/widget/GridLayout$f;

    const-class v1, Landroid/support/v7/widget/GridLayout$h;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$c;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$c;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gT()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$i;->abo:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$j;

    const/4 v1, 0x0

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    if-eqz p1, :cond_0

    aget-object v1, v0, v2

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$j;->aal:Landroid/support/v7/widget/GridLayout$f;

    :goto_1
    new-instance v5, Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayout$h;-><init>()V

    invoke-virtual {v3, v1, v5}, Landroid/support/v7/widget/GridLayout$c;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    aget-object v1, v0, v2

    iget-object v5, v1, Landroid/support/v7/widget/GridLayout$j;->aal:Landroid/support/v7/widget/GridLayout$f;

    new-instance v1, Landroid/support/v7/widget/GridLayout$f;

    iget v6, v5, Landroid/support/v7/widget/GridLayout$f;->max:I

    iget v5, v5, Landroid/support/v7/widget/GridLayout$f;->min:I

    invoke-direct {v1, v6, v5}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$c;->gR()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v7/widget/GridLayout$i;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$i;->abp:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$h;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v7/widget/GridLayout$h;->value:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gT()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$i;->abp:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$e;

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/GridLayout$e;->R(Z)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayout$i;->bu(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayout$h;

    iget v4, v1, Landroid/support/v7/widget/GridLayout$h;->value:I

    if-eqz p2, :cond_1

    :goto_2
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v1, Landroid/support/v7/widget/GridLayout$h;->value:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    neg-int v3, v3

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    return-void
.end method

.method private static a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayout$f;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$b;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/support/v7/widget/GridLayout$b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/GridLayout$b;-><init>(Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$i;->abo:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$f;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$i;->abo:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$f;

    aget-object v3, v0, v1

    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$i;->abp:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$h;

    aget-object v0, v0, v1

    invoke-static {p0, v3, v0, v2}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a([ILandroid/support/v7/widget/GridLayout$b;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p1, Landroid/support/v7/widget/GridLayout$b;->aan:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v2, v1, Landroid/support/v7/widget/GridLayout$f;->min:I

    iget v1, v1, Landroid/support/v7/widget/GridLayout$f;->max:I

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$b;->aam:Landroid/support/v7/widget/GridLayout$h;

    iget v3, v3, Landroid/support/v7/widget/GridLayout$h;->value:I

    aget v2, p0, v2

    add-int/2addr v2, v3

    aget v3, p0, v1

    if-le v2, v3, :cond_0

    aput v2, p0, v1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a([Landroid/support/v7/widget/GridLayout$b;[IZ)Z
    .locals 12

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v0, :cond_0

    const-string v0, "horizontal"

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->getCount()I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    const/4 v1, 0x0

    move v5, v4

    :goto_1
    array-length v2, p1

    if-ge v5, v2, :cond_e

    invoke-static {p2, v4}, Ljava/util/Arrays;->fill([II)V

    move v7, v4

    :goto_2
    if-ge v7, v8, :cond_8

    array-length v9, p1

    move v2, v4

    move v3, v4

    :goto_3
    if-ge v2, v9, :cond_1

    aget-object v10, p1, v2

    invoke-static {p2, v10}, Landroid/support/v7/widget/GridLayout$d;->a([ILandroid/support/v7/widget/GridLayout$b;)Z

    move-result v10

    or-int/2addr v3, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_0
    const-string v0, "vertical"

    goto :goto_0

    :cond_1
    if-nez v3, :cond_7

    if-eqz v1, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    array-length v5, p1

    if-ge v4, v5, :cond_4

    aget-object v5, p1, v4

    aget-boolean v7, v1, v4

    if-eqz v7, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v7, v5, Landroid/support/v7/widget/GridLayout$b;->aan:Z

    if-nez v7, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout;->ZV:Landroid/util/Printer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " constraints: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Landroid/support/v7/widget/GridLayout$d;->m(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are inconsistent; permanently removing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/GridLayout$d;->m(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_5
    move v4, v6

    :cond_6
    :goto_5
    return v4

    :cond_7
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_6

    array-length v2, p1

    new-array v2, v2, [Z

    move v7, v4

    :goto_6
    if-ge v7, v8, :cond_a

    array-length v9, p1

    move v3, v4

    :goto_7
    if-ge v3, v9, :cond_9

    aget-boolean v10, v2, v3

    aget-object v11, p1, v3

    invoke-static {p2, v11}, Landroid/support/v7/widget/GridLayout$d;->a([ILandroid/support/v7/widget/GridLayout$b;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_6

    :cond_a
    if-nez v5, :cond_b

    move-object v1, v2

    :cond_b
    move v3, v4

    :goto_8
    array-length v7, p1

    if-ge v3, v7, :cond_c

    aget-boolean v7, v2, v3

    if-eqz v7, :cond_d

    aget-object v7, p1, v3

    iget-object v9, v7, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v9, v9, Landroid/support/v7/widget/GridLayout$f;->min:I

    iget-object v10, v7, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v10, v10, Landroid/support/v7/widget/GridLayout$f;->max:I

    if-lt v9, v10, :cond_d

    iput-boolean v4, v7, Landroid/support/v7/widget/GridLayout$b;->aan:Z

    :cond_c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    move v4, v6

    goto :goto_5
.end method

.method private d(IF)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaJ:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v4

    move v3, v0

    move v1, p2

    move v2, p1

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->aE(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    :goto_1
    iget v0, v0, Landroid/support/v7/widget/GridLayout$j;->weight:F

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_2

    int-to-float v5, v2

    mul-float/2addr v5, v0

    div-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$d;->aaJ:[I

    aput v5, v6, v3

    sub-int/2addr v2, v5

    sub-float v0, v1, v0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private e([I)Z
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gX()[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/support/v7/widget/GridLayout$d;->a([Landroid/support/v7/widget/GridLayout$b;[IZ)Z

    move-result v0

    return v0
.end method

.method private gS()I
    .locals 8

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v1, -0x80000000

    iget v0, p0, Landroid/support/v7/widget/GridLayout$d;->aas:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v6

    move v3, v4

    move v2, v5

    :goto_0
    if-ge v3, v6, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->aE(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v7, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    :goto_1
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$j;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v7, v0, Landroid/support/v7/widget/GridLayout$f;->min:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v7, v0, Landroid/support/v7/widget/GridLayout$f;->max:I

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$f;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->aas:I

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/GridLayout$d;->aas:I

    return v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private gU()Landroid/support/v7/widget/GridLayout$i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aav:Landroid/support/v7/widget/GridLayout$i;

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$d;->T(Z)Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aav:Landroid/support/v7/widget/GridLayout$i;

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aav:Landroid/support/v7/widget/GridLayout$i;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$d;->a(Landroid/support/v7/widget/GridLayout$i;Z)V

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaw:Z

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aav:Landroid/support/v7/widget/GridLayout$i;

    return-object v0
.end method

.method private gV()Landroid/support/v7/widget/GridLayout$i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aax:Landroid/support/v7/widget/GridLayout$i;

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$d;->T(Z)Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aax:Landroid/support/v7/widget/GridLayout$i;

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aax:Landroid/support/v7/widget/GridLayout$i;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$d;->a(Landroid/support/v7/widget/GridLayout$i;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aay:Z

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aax:Landroid/support/v7/widget/GridLayout$i;

    return-object v0
.end method

.method private gW()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gU()Landroid/support/v7/widget/GridLayout$i;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gV()Landroid/support/v7/widget/GridLayout$i;

    return-void
.end method

.method private gX()[Landroid/support/v7/widget/GridLayout$b;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaD:[Landroid/support/v7/widget/GridLayout$b;

    if-nez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gU()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$i;)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gV()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$i;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaK:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    new-instance v4, Landroid/support/v7/widget/GridLayout$f;

    add-int/lit8 v5, v0, 0x1

    invoke-direct {v4, v0, v5}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    new-instance v5, Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {v5, v1}, Landroid/support/v7/widget/GridLayout$h;-><init>(I)V

    invoke-static {v2, v4, v5}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->getCount()I

    move-result v0

    new-instance v4, Landroid/support/v7/widget/GridLayout$f;

    invoke-direct {v4, v1, v0}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$d;->aaL:Landroid/support/v7/widget/GridLayout$h;

    invoke-static {v2, v4, v5, v1}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    new-instance v4, Landroid/support/v7/widget/GridLayout$f;

    invoke-direct {v4, v0, v1}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaM:Landroid/support/v7/widget/GridLayout$h;

    invoke-static {v3, v4, v0, v1}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    invoke-direct {p0, v2}, Landroid/support/v7/widget/GridLayout$d;->l(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/GridLayout$d;->l(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/GridLayout$b;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaD:[Landroid/support/v7/widget/GridLayout$b;

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaE:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gW()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaE:Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaD:[Landroid/support/v7/widget/GridLayout$b;

    return-object v0
.end method

.method private gY()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaJ:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaJ:[I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaJ:[I

    return-object v0
.end method

.method private l(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;)[",
            "Landroid/support/v7/widget/GridLayout$b;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v7/widget/GridLayout$b;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/GridLayout$b;

    new-instance v1, Landroid/support/v7/widget/GridLayout$d$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/GridLayout$d$1;-><init>(Landroid/support/v7/widget/GridLayout$d;[Landroid/support/v7/widget/GridLayout$b;)V

    const/4 v0, 0x0

    iget-object v2, v1, Landroid/support/v7/widget/GridLayout$d$1;->aaQ:[[Landroid/support/v7/widget/GridLayout$b;

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayout$d$1;->bt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v0, Landroid/support/v7/widget/GridLayout$d$1;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget v0, v1, Landroid/support/v7/widget/GridLayout$d$1;->aaP:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, v1, Landroid/support/v7/widget/GridLayout$d$1;->aaO:[Landroid/support/v7/widget/GridLayout$b;

    return-object v0
.end method

.method private m(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v0, :cond_0

    const-string v0, "x"

    move-object v1, v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$b;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    iget-object v5, v0, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$f;->min:I

    iget-object v6, v0, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v6, v6, Landroid/support/v7/widget/GridLayout$f;->max:I

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$b;->aam:Landroid/support/v7/widget/GridLayout$h;

    iget v0, v0, Landroid/support/v7/widget/GridLayout$h;->value:I

    if-ge v5, v6, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v0, "y"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-int v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final S(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$d;->aaK:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gK()V

    return-void
.end method

.method final U(Z)V
    .locals 8

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaz:[I

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-eq v1, v5, :cond_0

    invoke-static {v4}, Landroid/support/v7/widget/GridLayout;->aE(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v1

    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v5, :cond_2

    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    :goto_2
    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$j;->aal:Landroid/support/v7/widget/GridLayout$f;

    if-eqz p1, :cond_3

    iget v1, v1, Landroid/support/v7/widget/GridLayout$f;->min:I

    :goto_3
    aget v5, v0, v1

    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    invoke-virtual {v6, v4, v7, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v0, v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaB:[I

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_2

    :cond_3
    iget v1, v1, Landroid/support/v7/widget/GridLayout$f;->max:I

    goto :goto_3

    :cond_4
    return-void
.end method

.method final a([Landroid/support/v7/widget/GridLayout$b;)[[Landroid/support/v7/widget/GridLayout$b;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [[Landroid/support/v7/widget/GridLayout$b;

    new-array v3, v0, [I

    array-length v4, p1

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, p1, v0

    iget-object v5, v5, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$f;->min:I

    aget v6, v3, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget v4, v3, v0

    new-array v4, v4, [Landroid/support/v7/widget/GridLayout$b;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$b;->aal:Landroid/support/v7/widget/GridLayout$f;

    iget v5, v5, Landroid/support/v7/widget/GridLayout$f;->min:I

    aget-object v6, v2, v5

    aget v7, v3, v5

    add-int/lit8 v8, v7, 0x1

    aput v8, v3, v5

    aput-object v4, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public final br(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    sget-boolean v1, Landroid/support/v7/widget/GridLayout$d;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :sswitch_0
    const v1, 0x186a0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$d;->H(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_1
    invoke-direct {p0, v2, v2}, Landroid/support/v7/widget/GridLayout$d;->H(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout$d;->H(II)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public final bs(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Landroid/support/v7/widget/GridLayout$d;->G(II)V

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gZ()[I

    return-void
.end method

.method public final gK()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->aas:I

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aat:Landroid/support/v7/widget/GridLayout$i;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aav:Landroid/support/v7/widget/GridLayout$i;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aax:Landroid/support/v7/widget/GridLayout$i;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaz:[I

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaB:[I

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaD:[Landroid/support/v7/widget/GridLayout$b;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaF:[I

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaJ:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaI:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gL()V

    return-void
.end method

.method public final gL()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aau:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaw:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aay:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaA:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaC:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaE:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaG:Z

    return-void
.end method

.method public final gT()Landroid/support/v7/widget/GridLayout$i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$j;",
            "Landroid/support/v7/widget/GridLayout$e;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aat:Landroid/support/v7/widget/GridLayout$i;

    if-nez v0, :cond_2

    const-class v0, Landroid/support/v7/widget/GridLayout$j;

    const-class v1, Landroid/support/v7/widget/GridLayout$e;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout$c;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$c;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v3

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->aE(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout$j;->V(Z)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$a;->gQ()Landroid/support/v7/widget/GridLayout$e;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/support/v7/widget/GridLayout$c;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$c;->gR()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aat:Landroid/support/v7/widget/GridLayout$i;

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aau:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aat:Landroid/support/v7/widget/GridLayout$i;

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$i;->abp:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$e;

    move v1, v6

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$e;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v8

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/GridLayout;->aE(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v1, :cond_4

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    move v0, v6

    :goto_5
    iget v1, v3, Landroid/support/v7/widget/GridLayout$j;->weight:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_6

    move v1, v6

    :goto_6
    add-int v5, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aat:Landroid/support/v7/widget/GridLayout$i;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayout$i;->bu(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$e;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$e;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$d;I)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :cond_4
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_4

    :cond_5
    invoke-static {v2, v1}, Landroid/support/v7/widget/GridLayout;->g(Landroid/view/View;Z)I

    move-result v4

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/GridLayout;->f(Landroid/view/View;Z)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_5

    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gY()[I

    move-result-object v1

    aget v1, v1, v7

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aau:Z

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aat:Landroid/support/v7/widget/GridLayout$i;

    return-object v0
.end method

.method public final gZ()[I
    .locals 14

    const/16 v9, 0x8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaF:[I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaF:[I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaG:Z

    if-nez v0, :cond_c

    iget-object v8, p0, Landroid/support/v7/widget/GridLayout$d;->aaF:[I

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaI:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_4

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->aE(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v6, :cond_3

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    :goto_1
    iget v0, v0, Landroid/support/v7/widget/GridLayout$j;->weight:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaH:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaI:Z

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaH:Z

    if-nez v0, :cond_6

    invoke-direct {p0, v8}, Landroid/support/v7/widget/GridLayout$d;->e([I)Z

    :cond_2
    :goto_3
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaK:Z

    if-nez v0, :cond_b

    aget v0, v8, v2

    array-length v3, v8

    :goto_4
    if-ge v2, v3, :cond_b

    aget v4, v8, v2

    sub-int/2addr v4, v0

    aput v4, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gY()[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    invoke-direct {p0, v8}, Landroid/support/v7/widget/GridLayout$d;->e([I)Z

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaL:Landroid/support/v7/widget/GridLayout$h;

    iget v0, v0, Landroid/support/v7/widget/GridLayout$h;->value:I

    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v4

    mul-int/2addr v0, v4

    add-int/lit8 v5, v0, 0x1

    const/4 v0, 0x2

    if-lt v5, v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v6

    move v4, v2

    :goto_5
    if-ge v4, v6, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaN:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v9, :cond_d

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->aE(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v0

    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v7, :cond_7

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abm:Landroid/support/v7/widget/GridLayout$j;

    :goto_6
    iget v0, v0, Landroid/support/v7/widget/GridLayout$j;->weight:F

    add-float/2addr v0, v3

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_5

    :cond_7
    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$g;->abl:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_6

    :cond_8
    const/4 v4, -0x1

    move v0, v1

    move v6, v2

    move v7, v5

    :goto_8
    if-ge v6, v7, :cond_a

    int-to-long v10, v6

    int-to-long v12, v7

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    long-to-int v5, v10

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gL()V

    invoke-direct {p0, v5, v3}, Landroid/support/v7/widget/GridLayout$d;->d(IF)V

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gX()[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    invoke-direct {p0, v0, v8, v2}, Landroid/support/v7/widget/GridLayout$d;->a([Landroid/support/v7/widget/GridLayout$b;[IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v6, v5, 0x1

    move v4, v5

    goto :goto_8

    :cond_9
    move v7, v5

    goto :goto_8

    :cond_a
    if-lez v4, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->gL()V

    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/GridLayout$d;->d(IF)V

    invoke-direct {p0, v8}, Landroid/support/v7/widget/GridLayout$d;->e([I)Z

    goto/16 :goto_3

    :cond_b
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->aaG:Z

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaF:[I

    return-object v0

    :cond_d
    move v0, v3

    goto :goto_7
.end method

.method public final getCount()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/GridLayout$d;->aar:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gS()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final setCount(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->gS()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->aaq:Z

    if-eqz v0, :cond_1

    const-string v0, "column"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices (and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->E(Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/GridLayout$d;->aar:I

    return-void

    :cond_1
    const-string v0, "row"

    goto :goto_0
.end method
