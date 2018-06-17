.class public final Lio/intercom/a/a/a/g/i;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/g/a/g;
.implements Lio/intercom/a/a/a/g/c;
.implements Lio/intercom/a/a/a/g/h;
.implements Lio/intercom/a/a/a/i/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/intercom/a/a/a/g/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/g/a/g;",
        "Lio/intercom/a/a/a/g/c;",
        "Lio/intercom/a/a/a/g/h;",
        "Lio/intercom/a/a/a/i/a/a$c;"
    }
.end annotation


# static fields
.field private static final cKT:Landroid/support/v4/g/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/k$a",
            "<",
            "Lio/intercom/a/a/a/g/i",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final cQf:Z


# instance fields
.field private bMM:Landroid/graphics/drawable/Drawable;

.field private bOV:Landroid/graphics/drawable/Drawable;

.field private cFq:Lio/intercom/a/a/a/c/b/j;

.field private cFu:Lio/intercom/a/a/a/e;

.field private cGh:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TR;>;"
        }
    .end annotation
.end field

.field private cGi:Lio/intercom/a/a/a/g/g;

.field private cGk:Ljava/lang/Object;

.field private cGl:Lio/intercom/a/a/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/g/f",
            "<TR;>;"
        }
    .end annotation
.end field

.field private cIN:Lio/intercom/a/a/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/u",
            "<TR;>;"
        }
    .end annotation
.end field

.field private cJg:Lio/intercom/a/a/a/g;

.field private final cJl:Lio/intercom/a/a/a/i/a/b;

.field private cPW:I

.field private cPX:I

.field private cPZ:Landroid/graphics/drawable/Drawable;

.field private cQe:Z

.field private cQg:Lio/intercom/a/a/a/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/g/f",
            "<TR;>;"
        }
    .end annotation
.end field

.field private cQh:Lio/intercom/a/a/a/g/d;

.field private cQi:Lio/intercom/a/a/a/g/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/g/a/h",
            "<TR;>;"
        }
    .end annotation
.end field

.field private cQj:Lio/intercom/a/a/a/g/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/g/b/e",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private cQk:Lio/intercom/a/a/a/c/b/j$d;

.field private cQl:I

.field private context:Landroid/content/Context;

.field private height:I

.field private startTime:J

.field private final tag:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/intercom/a/a/a/g/i$1;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/i$1;-><init>()V

    invoke-static {v0}, Lio/intercom/a/a/a/i/a/a;->a(Lio/intercom/a/a/a/i/a/a$a;)Landroid/support/v4/g/k$a;

    move-result-object v0

    sput-object v0, Lio/intercom/a/a/a/g/i;->cKT:Landroid/support/v4/g/k$a;

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lio/intercom/a/a/a/g/i;->cQf:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lio/intercom/a/a/a/g/i;->cQf:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->tag:Ljava/lang/String;

    new-instance v0, Lio/intercom/a/a/a/i/a/b$a;

    invoke-direct {v0}, Lio/intercom/a/a/a/i/a/b$a;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private AA()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->bOV:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v0, v0, Lio/intercom/a/a/a/g/g;->bOV:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->bOV:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->bOV:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v0, v0, Lio/intercom/a/a/a/g/g;->cPV:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v0, v0, Lio/intercom/a/a/a/g/g;->cPV:I

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/i;->fp(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->bOV:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->bOV:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private JD()V
    .locals 2

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/i;->cQe:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private JE()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cPZ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v0, v0, Lio/intercom/a/a/a/g/g;->cPZ:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cPZ:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cPZ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v0, v0, Lio/intercom/a/a/a/g/g;->cQa:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v0, v0, Lio/intercom/a/a/a/g/g;->cQa:I

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/i;->fp(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cPZ:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cPZ:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private JF()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/g/d;->c(Lio/intercom/a/a/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private JG()Z
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    invoke-interface {v0}, Lio/intercom/a/a/a/g/d;->Jv()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lio/intercom/a/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lio/intercom/a/a/a/g/g;IILio/intercom/a/a/a/g;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/f;Lio/intercom/a/a/a/g/d;Lio/intercom/a/a/a/c/b/j;Lio/intercom/a/a/a/g/b/e;)Lio/intercom/a/a/a/g/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lio/intercom/a/a/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lio/intercom/a/a/a/g/g;",
            "II",
            "Lio/intercom/a/a/a/g;",
            "Lio/intercom/a/a/a/g/a/h",
            "<TR;>;",
            "Lio/intercom/a/a/a/g/f",
            "<TR;>;",
            "Lio/intercom/a/a/a/g/f",
            "<TR;>;",
            "Lio/intercom/a/a/a/g/d;",
            "Lio/intercom/a/a/a/c/b/j;",
            "Lio/intercom/a/a/a/g/b/e",
            "<-TR;>;)",
            "Lio/intercom/a/a/a/g/i",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lio/intercom/a/a/a/g/i;->cKT:Landroid/support/v4/g/k$a;

    invoke-interface {v0}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/i;

    if-nez v0, :cond_0

    new-instance v0, Lio/intercom/a/a/a/g/i;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/i;-><init>()V

    :cond_0
    iput-object p0, v0, Lio/intercom/a/a/a/g/i;->context:Landroid/content/Context;

    iput-object p1, v0, Lio/intercom/a/a/a/g/i;->cFu:Lio/intercom/a/a/a/e;

    iput-object p2, v0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    iput-object p3, v0, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    iput-object p4, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iput p5, v0, Lio/intercom/a/a/a/g/i;->cPX:I

    iput p6, v0, Lio/intercom/a/a/a/g/i;->cPW:I

    iput-object p7, v0, Lio/intercom/a/a/a/g/i;->cJg:Lio/intercom/a/a/a/g;

    iput-object p8, v0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    iput-object p9, v0, Lio/intercom/a/a/a/g/i;->cQg:Lio/intercom/a/a/a/g/f;

    iput-object p10, v0, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    iput-object p11, v0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    iput-object p12, v0, Lio/intercom/a/a/a/g/i;->cFq:Lio/intercom/a/a/a/c/b/j;

    iput-object p13, v0, Lio/intercom/a/a/a/g/i;->cQj:Lio/intercom/a/a/a/g/b/e;

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQm:I

    iput v1, v0, Lio/intercom/a/a/a/g/i;->cQl:I

    return-object v0
.end method

.method private a(Lio/intercom/a/a/a/c/b/p;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v1}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cFu:Lio/intercom/a/a/a/e;

    iget v1, v1, Lio/intercom/a/a/a/e;->logLevel:I

    if-gt v1, p2, :cond_0

    const-string v2, "Glide"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Load failed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/intercom/a/a/a/g/i;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/intercom/a/a/a/g/i;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const-string v1, "Glide"

    invoke-virtual {p1, v1}, Lio/intercom/a/a/a/c/b/p;->eX(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQq:I

    iput v1, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/intercom/a/a/a/g/i;->cQe:Z

    :try_start_0
    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    iget-object v2, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    iget-object v3, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JG()Z

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lio/intercom/a/a/a/g/f;->onLoadFailed(Lio/intercom/a/a/a/c/b/p;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Z)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_1
    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQg:Lio/intercom/a/a/a/g/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQg:Lio/intercom/a/a/a/g/f;

    iget-object v2, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    iget-object v3, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JG()Z

    move-result v4

    invoke-interface {v1, p1, v2, v3, v4}, Lio/intercom/a/a/a/g/f;->onLoadFailed(Lio/intercom/a/a/a/c/b/p;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Z)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2
    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JF()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JE()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_5

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->bMM:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v0, v0, Lio/intercom/a/a/a/g/g;->cPT:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->bMM:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->bMM:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v0, v0, Lio/intercom/a/a/a/g/g;->cPU:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v0, v0, Lio/intercom/a/a/a/g/g;->cPU:I

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/i;->fp(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->bMM:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->bMM:Landroid/graphics/drawable/Drawable;

    :cond_5
    if-nez v0, :cond_6

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->AA()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-interface {v1, v0}, Lio/intercom/a/a/a/g/a/h;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    iput-boolean v5, p0, Lio/intercom/a/a/a/g/i;->cQe:Z

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/g/d;->g(Lio/intercom/a/a/a/g/c;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lio/intercom/a/a/a/g/i;->cQe:Z

    throw v0
.end method

.method private static f(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private f(Lio/intercom/a/a/a/c/b/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    instance-of v0, p1, Lio/intercom/a/a/a/c/b/o;

    if-eqz v0, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/b/o;

    invoke-virtual {p1}, Lio/intercom/a/a/a/c/b/o;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cIN:Lio/intercom/a/a/a/c/b/u;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fb(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Request"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/intercom/a/a/a/g/i;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fp(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v0, v0, Lio/intercom/a/a/a/g/g;->cQb:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v0, v0, Lio/intercom/a/a/a/g/g;->cQb:Landroid/content/res/Resources$Theme;

    :goto_0
    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cFu:Lio/intercom/a/a/a/e;

    invoke-static {v1, p1, v0}, Lio/intercom/a/a/a/c/d/c/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final Ij()Lio/intercom/a/a/a/i/a/b;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    return-object v0
.end method

.method public final Ju()Z
    .locals 1

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/i;->isComplete()Z

    move-result v0

    return v0
.end method

.method public final a(Lio/intercom/a/a/a/c/b/p;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lio/intercom/a/a/a/g/i;->a(Lio/intercom/a/a/a/c/b/p;I)V

    return-void
.end method

.method public final a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<*>;",
            "Lio/intercom/a/a/a/c/a;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/i/a/b;->JX()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    if-nez p1, :cond_1

    new-instance v0, Lio/intercom/a/a/a/c/b/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lio/intercom/a/a/a/g/i;->a(Lio/intercom/a/a/a/c/b/p;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    invoke-direct {p0, p1}, Lio/intercom/a/a/a/g/i;->f(Lio/intercom/a/a/a/c/b/u;)V

    new-instance v2, Lio/intercom/a/a/a/c/b/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Expected to receive an object of "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_4

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v4}, Lio/intercom/a/a/a/g/i;->a(Lio/intercom/a/a/a/c/b/p;I)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/g/d;->b(Lio/intercom/a/a/a/g/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lio/intercom/a/a/a/g/i;->f(Lio/intercom/a/a/a/c/b/u;)V

    sget v0, Lio/intercom/a/a/a/g/i$a;->cQp:I

    iput v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    goto :goto_0

    :cond_7
    move v0, v6

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JG()Z

    move-result v5

    sget v0, Lio/intercom/a/a/a/g/i$a;->cQp:I

    iput v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    iput-object p1, p0, Lio/intercom/a/a/a/g/i;->cIN:Lio/intercom/a/a/a/c/b/u;

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cFu:Lio/intercom/a/a/a/e;

    iget v0, v0, Lio/intercom/a/a/a/e;->logLevel:I

    const/4 v3, 0x3

    if-gt v0, v3, :cond_9

    const-string v0, "Glide"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished loading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/intercom/a/a/a/g/i;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/intercom/a/a/a/g/i;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, p0, Lio/intercom/a/a/a/g/i;->startTime:J

    invoke-static {v8, v9}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-boolean v2, p0, Lio/intercom/a/a/a/g/i;->cQe:Z

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    iget-object v2, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    iget-object v3, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lio/intercom/a/a/a/g/f;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQg:Lio/intercom/a/a/a/g/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQg:Lio/intercom/a/a/a/g/f;

    iget-object v2, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    iget-object v3, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lio/intercom/a/a/a/g/f;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lio/intercom/a/a/a/g/a/h;Lio/intercom/a/a/a/c/a;Z)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQj:Lio/intercom/a/a/a/g/b/e;

    invoke-interface {v0, p2}, Lio/intercom/a/a/a/g/b/e;->c(Lio/intercom/a/a/a/c/a;)Lio/intercom/a/a/a/g/b/d;

    move-result-object v0

    iget-object v2, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-interface {v2, v1, v0}, Lio/intercom/a/a/a/g/a/h;->onResourceReady(Ljava/lang/Object;Lio/intercom/a/a/a/g/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    iput-boolean v6, p0, Lio/intercom/a/a/a/g/i;->cQe:Z

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/g/d;->f(Lio/intercom/a/a/a/g/c;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v6, p0, Lio/intercom/a/a/a/g/i;->cQe:Z

    throw v0
.end method

.method public final a(Lio/intercom/a/a/a/g/c;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/g/i;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/g/i;

    iget v1, p0, Lio/intercom/a/a/a/g/i;->cPX:I

    iget v2, p1, Lio/intercom/a/a/a/g/i;->cPX:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/g/i;->cPW:I

    iget v2, p1, Lio/intercom/a/a/a/g/i;->cPW:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    iget-object v2, p1, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/i;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    iget-object v2, p1, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v2, p1, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/g/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cJg:Lio/intercom/a/a/a/g;

    iget-object v2, p1, Lio/intercom/a/a/a/g/i;->cJg:Lio/intercom/a/a/a/g;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    if-eqz v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p1, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public final aP(II)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v2}, Lio/intercom/a/a/a/i/a/b;->JX()V

    sget-boolean v2, Lio/intercom/a/a/a/g/i;->cQf:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got onSizeReady in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lio/intercom/a/a/a/g/i;->startTime:J

    invoke-static {v4, v5}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lio/intercom/a/a/a/g/i;->fb(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v3, Lio/intercom/a/a/a/g/i$a;->cQo:I

    if-eq v2, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v2, Lio/intercom/a/a/a/g/i$a;->cQn:I

    move-object/from16 v0, p0

    iput v2, v0, Lio/intercom/a/a/a/g/i;->cQl:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget v2, v2, Lio/intercom/a/a/a/g/g;->cPS:F

    move/from16 v0, p1

    invoke-static {v0, v2}, Lio/intercom/a/a/a/g/i;->f(IF)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lio/intercom/a/a/a/g/i;->width:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Lio/intercom/a/a/a/g/i;->f(IF)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lio/intercom/a/a/a/g/i;->height:I

    sget-boolean v2, Lio/intercom/a/a/a/g/i;->cQf:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finished setup for calling load in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lio/intercom/a/a/a/g/i;->startTime:J

    invoke-static {v4, v5}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lio/intercom/a/a/a/g/i;->fb(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lio/intercom/a/a/a/g/i;->cFq:Lio/intercom/a/a/a/c/b/j;

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/intercom/a/a/a/g/i;->cFu:Lio/intercom/a/a/a/e;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v4, v2, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    move-object/from16 v0, p0

    iget v5, v0, Lio/intercom/a/a/a/g/i;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lio/intercom/a/a/a/g/i;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v8, v2, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v9, v0, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/intercom/a/a/a/g/i;->cJg:Lio/intercom/a/a/a/g;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v0, v2, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v7, v2, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-boolean v0, v2, Lio/intercom/a/a/a/g/g;->cJh:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-boolean v0, v2, Lio/intercom/a/a/a/g/g;->cJi:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-object v10, v2, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-boolean v0, v2, Lio/intercom/a/a/a/g/g;->cIM:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-boolean v0, v2, Lio/intercom/a/a/a/g/g;->cQd:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-boolean v0, v2, Lio/intercom/a/a/a/g/g;->cKC:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iget-boolean v0, v2, Lio/intercom/a/a/a/g/g;->cJu:Z

    move/from16 v22, v0

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v24

    new-instance v2, Lio/intercom/a/a/a/c/b/m;

    invoke-direct/range {v2 .. v10}, Lio/intercom/a/a/a/c/b/m;-><init>(Ljava/lang/Object;Lio/intercom/a/a/a/c/h;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/j;)V

    if-nez v19, :cond_7

    const/4 v11, 0x0

    :cond_4
    :goto_1
    if-eqz v11, :cond_a

    sget-object v3, Lio/intercom/a/a/a/c/a;->cHG:Lio/intercom/a/a/a/c/a;

    move-object/from16 v0, p0

    invoke-interface {v0, v11, v3}, Lio/intercom/a/a/a/g/h;->a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V

    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Loaded resource from active resources"

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1, v2}, Lio/intercom/a/a/a/c/b/j;->a(Ljava/lang/String;JLio/intercom/a/a/a/c/h;)V

    :cond_5
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    move-object/from16 v0, p0

    iget v2, v0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v3, Lio/intercom/a/a/a/g/i$a;->cQn:I

    if-eq v2, v3, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    :cond_6
    sget-boolean v2, Lio/intercom/a/a/a/g/i;->cQf:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "finished onSizeReady in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lio/intercom/a/a/a/g/i;->startTime:J

    invoke-static {v4, v5}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lio/intercom/a/a/a/g/i;->fb(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v13, Lio/intercom/a/a/a/c/b/j;->cKn:Lio/intercom/a/a/a/c/b/a;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v11, v0, Lio/intercom/a/a/a/c/b/a;->cIE:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/intercom/a/a/a/c/b/a$b;

    if-nez v11, :cond_8

    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lio/intercom/a/a/a/c/b/o;->acquire()V

    goto :goto_1

    :cond_8
    invoke-virtual {v11}, Lio/intercom/a/a/a/c/b/a$b;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/intercom/a/a/a/c/b/o;

    if-nez v12, :cond_9

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lio/intercom/a/a/a/c/b/a;->a(Lio/intercom/a/a/a/c/b/a$b;)V

    :cond_9
    move-object v11, v12

    goto :goto_3

    :cond_a
    if-nez v19, :cond_d

    const/4 v11, 0x0

    :cond_b
    :goto_4
    if-eqz v11, :cond_10

    sget-object v3, Lio/intercom/a/a/a/c/a;->cHG:Lio/intercom/a/a/a/c/a;

    move-object/from16 v0, p0

    invoke-interface {v0, v11, v3}, Lio/intercom/a/a/a/g/h;->a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V

    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "Loaded resource from cache"

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1, v2}, Lio/intercom/a/a/a/c/b/j;->a(Ljava/lang/String;JLio/intercom/a/a/a/c/h;)V

    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    :cond_d
    iget-object v11, v13, Lio/intercom/a/a/a/c/b/j;->cKi:Lio/intercom/a/a/a/c/b/b/h;

    invoke-interface {v11, v2}, Lio/intercom/a/a/a/c/b/b/h;->b(Lio/intercom/a/a/a/c/h;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v11

    if-nez v11, :cond_e

    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lio/intercom/a/a/a/c/b/o;->acquire()V

    iget-object v12, v13, Lio/intercom/a/a/a/c/b/j;->cKn:Lio/intercom/a/a/a/c/b/a;

    invoke-virtual {v12, v2, v11}, Lio/intercom/a/a/a/c/b/a;->a(Lio/intercom/a/a/a/c/h;Lio/intercom/a/a/a/c/b/o;)V

    goto :goto_4

    :cond_e
    instance-of v12, v11, Lio/intercom/a/a/a/c/b/o;

    if-eqz v12, :cond_f

    check-cast v11, Lio/intercom/a/a/a/c/b/o;

    goto :goto_5

    :cond_f
    new-instance v12, Lio/intercom/a/a/a/c/b/o;

    const/16 v23, 0x1

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-direct {v12, v11, v0, v1}, Lio/intercom/a/a/a/c/b/o;-><init>(Lio/intercom/a/a/a/c/b/u;ZZ)V

    move-object v11, v12

    goto :goto_5

    :cond_10
    iget-object v11, v13, Lio/intercom/a/a/a/c/b/j;->cKg:Lio/intercom/a/a/a/c/b/r;

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lio/intercom/a/a/a/c/b/r;->bv(Z)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/intercom/a/a/a/c/b/k;

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lio/intercom/a/a/a/c/b/k;->a(Lio/intercom/a/a/a/g/h;)V

    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "Added to existing load"

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1, v2}, Lio/intercom/a/a/a/c/b/j;->a(Ljava/lang/String;JLio/intercom/a/a/a/c/h;)V

    :cond_11
    new-instance v2, Lio/intercom/a/a/a/c/b/j$d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lio/intercom/a/a/a/c/b/j$d;-><init>(Lio/intercom/a/a/a/g/h;Lio/intercom/a/a/a/c/b/k;)V

    goto/16 :goto_2

    :cond_12
    iget-object v11, v13, Lio/intercom/a/a/a/c/b/j;->cKj:Lio/intercom/a/a/a/c/b/j$b;

    iget-object v11, v11, Lio/intercom/a/a/a/c/b/j$b;->cJm:Landroid/support/v4/g/k$a;

    invoke-interface {v11}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/intercom/a/a/a/c/b/k;

    const-string v12, "Argument must not be null"

    invoke-static {v11, v12}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/intercom/a/a/a/c/b/k;

    iput-object v2, v11, Lio/intercom/a/a/a/c/b/k;->cIL:Lio/intercom/a/a/a/c/h;

    move/from16 v0, v19

    iput-boolean v0, v11, Lio/intercom/a/a/a/c/b/k;->cIM:Z

    move/from16 v0, v20

    iput-boolean v0, v11, Lio/intercom/a/a/a/c/b/k;->cKB:Z

    move/from16 v0, v21

    iput-boolean v0, v11, Lio/intercom/a/a/a/c/b/k;->cKC:Z

    move/from16 v0, v22

    iput-boolean v0, v11, Lio/intercom/a/a/a/c/b/k;->cJu:Z

    iget-object v0, v13, Lio/intercom/a/a/a/c/b/j;->cKm:Lio/intercom/a/a/a/c/b/j$a;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lio/intercom/a/a/a/c/b/j$a;->cJm:Landroid/support/v4/g/k$a;

    invoke-interface {v12}, Landroid/support/v4/g/k$a;->as()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/intercom/a/a/a/c/b/g;

    const-string v20, "Argument must not be null"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/intercom/a/a/a/c/b/g;

    move-object/from16 v0, v19

    iget v0, v0, Lio/intercom/a/a/a/c/b/j$a;->cKo:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lio/intercom/a/a/a/c/b/j$a;->cKo:I

    iget-object v0, v12, Lio/intercom/a/a/a/c/b/g;->cJj:Lio/intercom/a/a/a/c/b/f;

    move-object/from16 v19, v0

    iget-object v0, v12, Lio/intercom/a/a/a/c/b/g;->cJc:Lio/intercom/a/a/a/c/b/g$d;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iput-object v14, v0, Lio/intercom/a/a/a/c/b/f;->cFu:Lio/intercom/a/a/a/e;

    move-object/from16 v0, v19

    iput-object v3, v0, Lio/intercom/a/a/a/c/b/f;->cGk:Ljava/lang/Object;

    move-object/from16 v0, v19

    iput-object v4, v0, Lio/intercom/a/a/a/c/b/f;->cIX:Lio/intercom/a/a/a/c/h;

    move-object/from16 v0, v19

    iput v5, v0, Lio/intercom/a/a/a/c/b/f;->width:I

    move-object/from16 v0, v19

    iput v6, v0, Lio/intercom/a/a/a/c/b/f;->height:I

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lio/intercom/a/a/a/c/b/f;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    move-object/from16 v0, v19

    iput-object v8, v0, Lio/intercom/a/a/a/c/b/f;->cJb:Ljava/lang/Class;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lio/intercom/a/a/a/c/b/f;->cJc:Lio/intercom/a/a/a/c/b/g$d;

    move-object/from16 v0, v19

    iput-object v9, v0, Lio/intercom/a/a/a/c/b/f;->cGh:Ljava/lang/Class;

    move-object/from16 v0, v19

    iput-object v15, v0, Lio/intercom/a/a/a/c/b/f;->cJg:Lio/intercom/a/a/a/g;

    move-object/from16 v0, v19

    iput-object v10, v0, Lio/intercom/a/a/a/c/b/f;->cIZ:Lio/intercom/a/a/a/c/j;

    move-object/from16 v0, v19

    iput-object v7, v0, Lio/intercom/a/a/a/c/b/f;->cJd:Ljava/util/Map;

    move/from16 v0, v17

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lio/intercom/a/a/a/c/b/f;->cJh:Z

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lio/intercom/a/a/a/c/b/f;->cJi:Z

    iput-object v14, v12, Lio/intercom/a/a/a/c/b/g;->cFu:Lio/intercom/a/a/a/e;

    iput-object v4, v12, Lio/intercom/a/a/a/c/b/g;->cIX:Lio/intercom/a/a/a/c/h;

    iput-object v15, v12, Lio/intercom/a/a/a/c/b/g;->cJg:Lio/intercom/a/a/a/g;

    iput-object v2, v12, Lio/intercom/a/a/a/c/b/g;->cJp:Lio/intercom/a/a/a/c/b/m;

    iput v5, v12, Lio/intercom/a/a/a/c/b/g;->width:I

    iput v6, v12, Lio/intercom/a/a/a/c/b/g;->height:I

    move-object/from16 v0, v16

    iput-object v0, v12, Lio/intercom/a/a/a/c/b/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    move/from16 v0, v22

    iput-boolean v0, v12, Lio/intercom/a/a/a/c/b/g;->cJu:Z

    iput-object v10, v12, Lio/intercom/a/a/a/c/b/g;->cIZ:Lio/intercom/a/a/a/c/j;

    iput-object v11, v12, Lio/intercom/a/a/a/c/b/g;->cJq:Lio/intercom/a/a/a/c/b/g$a;

    move/from16 v0, v20

    iput v0, v12, Lio/intercom/a/a/a/c/b/g;->order:I

    sget-object v3, Lio/intercom/a/a/a/c/b/g$f;->cJM:Lio/intercom/a/a/a/c/b/g$f;

    iput-object v3, v12, Lio/intercom/a/a/a/c/b/g;->cJs:Lio/intercom/a/a/a/c/b/g$f;

    iget-object v3, v13, Lio/intercom/a/a/a/c/b/j;->cKg:Lio/intercom/a/a/a/c/b/r;

    iget-boolean v4, v11, Lio/intercom/a/a/a/c/b/k;->cJu:Z

    invoke-virtual {v3, v4}, Lio/intercom/a/a/a/c/b/r;->bv(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lio/intercom/a/a/a/c/b/k;->a(Lio/intercom/a/a/a/g/h;)V

    iput-object v12, v11, Lio/intercom/a/a/a/c/b/k;->cKI:Lio/intercom/a/a/a/c/b/g;

    sget-object v3, Lio/intercom/a/a/a/c/b/g$g;->cJQ:Lio/intercom/a/a/a/c/b/g$g;

    invoke-virtual {v12, v3}, Lio/intercom/a/a/a/c/b/g;->a(Lio/intercom/a/a/a/c/b/g$g;)Lio/intercom/a/a/a/c/b/g$g;

    move-result-object v3

    sget-object v4, Lio/intercom/a/a/a/c/b/g$g;->cJR:Lio/intercom/a/a/a/c/b/g$g;

    if-eq v3, v4, :cond_13

    sget-object v4, Lio/intercom/a/a/a/c/b/g$g;->cJS:Lio/intercom/a/a/a/c/b/g$g;

    if-ne v3, v4, :cond_15

    :cond_13
    const/4 v3, 0x1

    :goto_6
    if-eqz v3, :cond_16

    iget-object v3, v11, Lio/intercom/a/a/a/c/b/k;->cFD:Lio/intercom/a/a/a/c/b/c/a;

    :goto_7
    invoke-virtual {v3, v12}, Lio/intercom/a/a/a/c/b/c/a;->execute(Ljava/lang/Runnable;)V

    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "Started new load"

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1, v2}, Lio/intercom/a/a/a/c/b/j;->a(Ljava/lang/String;JLio/intercom/a/a/a/c/h;)V

    :cond_14
    new-instance v2, Lio/intercom/a/a/a/c/b/j$d;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lio/intercom/a/a/a/c/b/j$d;-><init>(Lio/intercom/a/a/a/g/h;Lio/intercom/a/a/a/c/b/k;)V

    goto/16 :goto_2

    :cond_15
    const/4 v3, 0x0

    goto :goto_6

    :cond_16
    invoke-virtual {v11}, Lio/intercom/a/a/a/c/b/k;->Ir()Lio/intercom/a/a/a/c/b/c/a;

    move-result-object v3

    goto :goto_7
.end method

.method public final begin()V
    .locals 4

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JD()V

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v0}, Lio/intercom/a/a/a/i/a/b;->JX()V

    invoke-static {}, Lio/intercom/a/a/a/i/d;->JQ()J

    move-result-wide v0

    iput-wide v0, p0, Lio/intercom/a/a/a/g/i;->startTime:J

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cPX:I

    iget v1, p0, Lio/intercom/a/a/a/g/i;->cPW:I

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cPX:I

    iput v0, p0, Lio/intercom/a/a/a/g/i;->width:I

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cPW:I

    iput v0, p0, Lio/intercom/a/a/a/g/i;->height:I

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JE()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    new-instance v1, Lio/intercom/a/a/a/c/b/p;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lio/intercom/a/a/a/c/b/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lio/intercom/a/a/a/g/i;->a(Lio/intercom/a/a/a/c/b/p;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQn:I

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQp:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cIN:Lio/intercom/a/a/a/c/b/u;

    sget-object v1, Lio/intercom/a/a/a/c/a;->cHG:Lio/intercom/a/a/a/c/a;

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/a/a/g/i;->a(Lio/intercom/a/a/a/c/b/u;Lio/intercom/a/a/a/c/a;)V

    goto :goto_1

    :cond_5
    sget v0, Lio/intercom/a/a/a/g/i$a;->cQo:I

    iput v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cPX:I

    iget v1, p0, Lio/intercom/a/a/a/g/i;->cPW:I

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cPX:I

    iget v1, p0, Lio/intercom/a/a/a/g/i;->cPW:I

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/a/a/g/i;->aP(II)V

    :goto_2
    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQn:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQo:I

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JF()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->AA()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/g/a/h;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    sget-boolean v0, Lio/intercom/a/a/a/g/i;->cQf:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finished run method in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/intercom/a/a/a/g/i;->startTime:J

    invoke-static {v2, v3}, Lio/intercom/a/a/a/i/d;->V(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/intercom/a/a/a/g/i;->fb(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-interface {v0, p0}, Lio/intercom/a/a/a/g/a/h;->getSize(Lio/intercom/a/a/a/g/a/g;)V

    goto :goto_2
.end method

.method public final clear()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JD()V

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v1}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget v1, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v2, Lio/intercom/a/a/a/g/i$a;->cQs:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JD()V

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v1}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-interface {v1, p0}, Lio/intercom/a/a/a/g/a/h;->removeCallback(Lio/intercom/a/a/a/g/a/g;)V

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQr:I

    iput v1, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    iget-object v2, v1, Lio/intercom/a/a/a/c/b/j$d;->cKv:Lio/intercom/a/a/a/c/b/k;

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/j$d;->cKw:Lio/intercom/a/a/a/g/h;

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v3, v2, Lio/intercom/a/a/a/c/b/k;->cJl:Lio/intercom/a/a/a/i/a/b;

    invoke-virtual {v3}, Lio/intercom/a/a/a/i/a/b;->JX()V

    iget-boolean v3, v2, Lio/intercom/a/a/a/c/b/k;->cKD:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lio/intercom/a/a/a/c/b/k;->cKF:Z

    if-eqz v3, :cond_8

    :cond_1
    iget-object v3, v2, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    :cond_2
    iget-object v3, v2, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, v2, Lio/intercom/a/a/a/c/b/k;->cKG:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    :cond_4
    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cIN:Lio/intercom/a/a/a/c/b/u;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cIN:Lio/intercom/a/a/a/c/b/u;

    invoke-direct {p0, v1}, Lio/intercom/a/a/a/g/i;->f(Lio/intercom/a/a/a/c/b/u;)V

    :cond_5
    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    invoke-interface {v1, p0}, Lio/intercom/a/a/a/g/d;->d(Lio/intercom/a/a/a/g/c;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->AA()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/intercom/a/a/a/g/a/h;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    sget v0, Lio/intercom/a/a/a/g/i$a;->cQs:I

    iput v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    goto :goto_0

    :cond_8
    iget-object v3, v2, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, v2, Lio/intercom/a/a/a/c/b/k;->cKz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v2, Lio/intercom/a/a/a/c/b/k;->cKF:Z

    if-nez v1, :cond_3

    iget-boolean v1, v2, Lio/intercom/a/a/a/c/b/k;->cKD:Z

    if-nez v1, :cond_3

    iget-boolean v1, v2, Lio/intercom/a/a/a/c/b/k;->cIs:Z

    if-nez v1, :cond_3

    iput-boolean v0, v2, Lio/intercom/a/a/a/c/b/k;->cIs:Z

    iget-object v1, v2, Lio/intercom/a/a/a/c/b/k;->cKI:Lio/intercom/a/a/a/c/b/g;

    iput-boolean v0, v1, Lio/intercom/a/a/a/c/b/g;->cIs:Z

    iget-object v1, v1, Lio/intercom/a/a/a/c/b/g;->cJB:Lio/intercom/a/a/a/c/b/e;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lio/intercom/a/a/a/c/b/e;->cancel()V

    :cond_9
    iget-object v1, v2, Lio/intercom/a/a/a/c/b/k;->cKr:Lio/intercom/a/a/a/c/b/l;

    iget-object v3, v2, Lio/intercom/a/a/a/c/b/k;->cIL:Lio/intercom/a/a/a/c/h;

    invoke-interface {v1, v2, v3}, Lio/intercom/a/a/a/c/b/l;->a(Lio/intercom/a/a/a/c/b/k;Lio/intercom/a/a/a/c/h;)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final isCancelled()Z
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQr:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQs:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isComplete()Z
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQp:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFailed()Z
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQq:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRunning()Z
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQn:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    sget v1, Lio/intercom/a/a/a/g/i$a;->cQo:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/i;->clear()V

    sget v0, Lio/intercom/a/a/a/g/i$a;->cQt:I

    iput v0, p0, Lio/intercom/a/a/a/g/i;->cQl:I

    return-void
.end method

.method public final recycle()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lio/intercom/a/a/a/g/i;->JD()V

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->context:Landroid/content/Context;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cFu:Lio/intercom/a/a/a/e;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cGk:Ljava/lang/Object;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cGh:Ljava/lang/Class;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cGi:Lio/intercom/a/a/a/g/g;

    iput v1, p0, Lio/intercom/a/a/a/g/i;->cPX:I

    iput v1, p0, Lio/intercom/a/a/a/g/i;->cPW:I

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cQi:Lio/intercom/a/a/a/g/a/h;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cGl:Lio/intercom/a/a/a/g/f;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cQg:Lio/intercom/a/a/a/g/f;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cQh:Lio/intercom/a/a/a/g/d;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cQj:Lio/intercom/a/a/a/g/b/e;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cQk:Lio/intercom/a/a/a/c/b/j$d;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->bMM:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->bOV:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lio/intercom/a/a/a/g/i;->cPZ:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lio/intercom/a/a/a/g/i;->width:I

    iput v1, p0, Lio/intercom/a/a/a/g/i;->height:I

    sget-object v0, Lio/intercom/a/a/a/g/i;->cKT:Landroid/support/v4/g/k$a;

    invoke-interface {v0, p0}, Landroid/support/v4/g/k$a;->j(Ljava/lang/Object;)Z

    return-void
.end method
