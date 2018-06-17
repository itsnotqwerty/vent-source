.class final Landroid/support/v7/widget/bv$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static akJ:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Landroid/support/v7/widget/bv$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field akH:Landroid/support/v7/widget/RecyclerView$f$b;

.field akI:Landroid/support/v7/widget/RecyclerView$f$b;

.field flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/g/k$b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/g/k$b;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/bv$a;->akJ:Landroid/support/v4/g/k$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/support/v7/widget/bv$a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bv$a;->flags:I

    iput-object v1, p0, Landroid/support/v7/widget/bv$a;->akH:Landroid/support/v7/widget/RecyclerView$f$b;

    iput-object v1, p0, Landroid/support/v7/widget/bv$a;->akI:Landroid/support/v7/widget/RecyclerView$f$b;

    sget-object v0, Landroid/support/v7/widget/bv$a;->akJ:Landroid/support/v4/g/k$a;

    invoke-interface {v0, p0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method static jd()Landroid/support/v7/widget/bv$a;
    .locals 1

    sget-object v0, Landroid/support/v7/widget/bv$a;->akJ:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bv$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bv$a;

    invoke-direct {v0}, Landroid/support/v7/widget/bv$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static je()V
    .locals 1

    :cond_0
    sget-object v0, Landroid/support/v7/widget/bv$a;->akJ:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
