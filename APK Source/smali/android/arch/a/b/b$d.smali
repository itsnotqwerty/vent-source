.class public final Landroid/arch/a/b/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/a/b/b$f;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/a/b/b$f",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private am:Landroid/arch/a/b/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private an:Z

.field final synthetic ao:Landroid/arch/a/b/b;


# direct methods
.method private constructor <init>(Landroid/arch/a/b/b;)V
    .locals 1

    iput-object p1, p0, Landroid/arch/a/b/b$d;->ao:Landroid/arch/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/a/b/b$d;->an:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/arch/a/b/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/arch/a/b/b$d;-><init>(Landroid/arch/a/b/b;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/arch/a/b/b$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/a/b/b$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    iget-object v0, v0, Landroid/arch/a/b/b$c;->al:Landroid/arch/a/b/b$c;

    iput-object v0, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    iget-object v0, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/arch/a/b/b$d;->an:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNext()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/arch/a/b/b$d;->an:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/arch/a/b/b$d;->ao:Landroid/arch/a/b/b;

    invoke-static {v2}, Landroid/arch/a/b/b;->a(Landroid/arch/a/b/b;)Landroid/arch/a/b/b$c;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    iget-object v2, v2, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Landroid/arch/a/b/b$d;->an:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/a/b/b$d;->an:Z

    iget-object v0, p0, Landroid/arch/a/b/b$d;->ao:Landroid/arch/a/b/b;

    invoke-static {v0}, Landroid/arch/a/b/b;->a(Landroid/arch/a/b/b;)Landroid/arch/a/b/b$c;

    move-result-object v0

    move-object v1, p0

    :goto_0
    iput-object v0, v1, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    iget-object v0, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/arch/a/b/b$d;->am:Landroid/arch/a/b/b$c;

    iget-object v0, v0, Landroid/arch/a/b/b$c;->ak:Landroid/arch/a/b/b$c;

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_0
.end method
