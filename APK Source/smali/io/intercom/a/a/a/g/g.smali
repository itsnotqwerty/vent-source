.class public final Lio/intercom/a/a/a/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bOV:Landroid/graphics/drawable/Drawable;

.field public cIM:Z

.field public cIX:Lio/intercom/a/a/a/c/h;

.field public cIZ:Lio/intercom/a/a/a/c/j;

.field public cJb:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public cJd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/c/m",
            "<*>;>;"
        }
    .end annotation
.end field

.field public cJg:Lio/intercom/a/a/a/g;

.field public cJh:Z

.field public cJi:Z

.field public cJu:Z

.field public cKC:Z

.field public cKV:Z

.field public cPR:I

.field public cPS:F

.field public cPT:Landroid/graphics/drawable/Drawable;

.field public cPU:I

.field public cPV:I

.field public cPW:I

.field public cPX:I

.field public cPY:Z

.field public cPZ:Landroid/graphics/drawable/Drawable;

.field public cQa:I

.field public cQb:Landroid/content/res/Resources$Theme;

.field public cQc:Z

.field public cQd:Z

.field public diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPS:F

    sget-object v0, Lio/intercom/a/a/a/c/b/i;->cKf:Lio/intercom/a/a/a/c/b/i;

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    sget-object v0, Lio/intercom/a/a/a/g;->cFT:Lio/intercom/a/a/a/g;

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    iput-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cIM:Z

    iput v2, p0, Lio/intercom/a/a/a/g/g;->cPW:I

    iput v2, p0, Lio/intercom/a/a/a/g/g;->cPX:I

    invoke-static {}, Lio/intercom/a/a/a/h/a;->JP()Lio/intercom/a/a/a/h/a;

    move-result-object v0

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    iput-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cPY:Z

    new-instance v0, Lio/intercom/a/a/a/c/j;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/j;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    iput-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cJi:Z

    return-void
.end method

.method public static K(Ljava/lang/Class;)Lio/intercom/a/a/a/g/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/intercom/a/a/a/g/g;"
        }
    .end annotation

    new-instance v0, Lio/intercom/a/a/a/g/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/g;-><init>()V

    move-object v1, v0

    :goto_0
    iget-boolean v0, v1, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, v1, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    iget v0, v1, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v1, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {v1}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/g/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/g;-><init>()V

    invoke-virtual {v0, p0}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lio/intercom/a/a/a/c/m",
            "<TT;>;Z)",
            "Lio/intercom/a/a/a/g/g;"
        }
    .end annotation

    const/4 v2, 0x1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    iput-boolean v2, p0, Lio/intercom/a/a/a/g/g;->cPY:Z

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cJi:Z

    if-eqz p3, :cond_1

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    iput-boolean v2, p0, Lio/intercom/a/a/a/g/g;->cJh:Z

    :cond_1
    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public static aN(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lio/intercom/a/a/a/c/h;)Lio/intercom/a/a/a/g/g;
    .locals 2

    new-instance v0, Lio/intercom/a/a/a/g/g;

    invoke-direct {v0}, Lio/intercom/a/a/a/g/g;-><init>()V

    move-object v1, v0

    :goto_0
    iget-boolean v0, v1, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/h;

    iput-object v0, v1, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    iget v0, v1, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v1, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {v1}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final C(F)Lio/intercom/a/a/a/g/g;
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lio/intercom/a/a/a/g/g;->cPS:F

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final JA()Lio/intercom/a/a/a/g/g;
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cKV:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    iput-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cKV:Z

    return-object p0
.end method

.method public final JB()Lio/intercom/a/a/a/g/g;
    .locals 2

    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cKV:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked RequestOptions, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public final JC()Z
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPX:I

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPW:I

    invoke-static {v0, v1}, Lio/intercom/a/a/a/i/i;->aR(II)Z

    move-result v0

    return v0
.end method

.method public final Jw()Lio/intercom/a/a/a/g/g;
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cKC:Z

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final Jx()Lio/intercom/a/a/a/g/g;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cIM:Z

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final Jy()Lio/intercom/a/a/a/g/g;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g/g;

    new-instance v1, Lio/intercom/a/a/a/c/j;

    invoke-direct {v1}, Lio/intercom/a/a/a/c/j;-><init>()V

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    iget-object v1, v0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    iget-object v2, p0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/j;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    iget-object v1, v0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    iget-object v2, p0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cKV:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cQc:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final Jz()Lio/intercom/a/a/a/g/g;
    .locals 2

    sget-object v0, Lio/intercom/a/a/a/c/d/a/j;->cNJ:Lio/intercom/a/a/a/c/d/a/j;

    new-instance v1, Lio/intercom/a/a/a/c/d/a/h;

    invoke-direct {v1}, Lio/intercom/a/a/a/c/d/a/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/d/a/j;Lio/intercom/a/a/a/c/m;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/c/d/a/j;Lio/intercom/a/a/a/c/m;)Lio/intercom/a/a/a/g/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/d/a/j;",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lio/intercom/a/a/a/g/g;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/intercom/a/a/a/c/d/a/k;->cNQ:Lio/intercom/a/a/a/c/i;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/intercom/a/a/a/g/g;->b(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/g/g;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)",
            "Lio/intercom/a/a/a/g/g;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/intercom/a/a/a/c/d/a/m;

    invoke-direct {v0, p1, p2}, Lio/intercom/a/a/a/c/d/a/m;-><init>(Lio/intercom/a/a/a/c/m;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2}, Lio/intercom/a/a/a/g/g;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0, p2}, Lio/intercom/a/a/a/g/g;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v1, v0, p2}, Lio/intercom/a/a/a/g/g;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    const-class v0, Lio/intercom/a/a/a/c/d/e/c;

    new-instance v1, Lio/intercom/a/a/a/c/d/e/f;

    invoke-direct {v1, p1}, Lio/intercom/a/a/a/c/d/e/f;-><init>(Lio/intercom/a/a/a/c/m;)V

    invoke-direct {p0, v0, v1, p2}, Lio/intercom/a/a/a/g/g;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/m;Z)Lio/intercom/a/a/a/g/g;

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final aO(II)Lio/intercom/a/a/a/g/g;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    iput p1, p0, Lio/intercom/a/a/a/g/g;->cPX:I

    iput p2, p0, Lio/intercom/a/a/a/g/g;->cPW:I

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lio/intercom/a/a/a/c/b/i;)Lio/intercom/a/a/a/g/g;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/i;

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lio/intercom/a/a/a/c/d/a/j;Lio/intercom/a/a/a/c/m;)Lio/intercom/a/a/a/g/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/d/a/j;",
            "Lio/intercom/a/a/a/c/m",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lio/intercom/a/a/a/g/g;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/intercom/a/a/a/g/g;->a(Lio/intercom/a/a/a/c/d/a/j;Lio/intercom/a/a/a/c/m;)Lio/intercom/a/a/a/g/g;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/intercom/a/a/a/g/g;->cJi:Z

    return-object v0
.end method

.method public final b(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/g/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/intercom/a/a/a/c/i",
            "<TT;>;TT;)",
            "Lio/intercom/a/a/a/g/g;"
        }
    .end annotation

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v0, p1, p2}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;Ljava/lang/Object;)Lio/intercom/a/a/a/c/j;

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lio/intercom/a/a/a/g;)Lio/intercom/a/a/a/g/g;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/g;

    iput-object v0, p0, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/g/g;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/g/g;

    iget v1, p1, Lio/intercom/a/a/a/g/g;->cPS:F

    iget v2, p0, Lio/intercom/a/a/a/g/g;->cPS:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPU:I

    iget v2, p1, Lio/intercom/a/a/a/g/g;->cPU:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cPT:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cPT:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/i;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPV:I

    iget v2, p1, Lio/intercom/a/a/a/g/g;->cPV:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->bOV:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->bOV:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/i;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cQa:I

    iget v2, p1, Lio/intercom/a/a/a/g/g;->cQa:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cPZ:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cPZ:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/i;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cIM:Z

    iget-boolean v2, p1, Lio/intercom/a/a/a/g/g;->cIM:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPW:I

    iget v2, p1, Lio/intercom/a/a/a/g/g;->cPW:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPX:I

    iget v2, p1, Lio/intercom/a/a/a/g/g;->cPX:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cJh:Z

    iget-boolean v2, p1, Lio/intercom/a/a/a/g/g;->cJh:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cPY:Z

    iget-boolean v2, p1, Lio/intercom/a/a/a/g/g;->cPY:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cQd:Z

    iget-boolean v2, p1, Lio/intercom/a/a/a/g/g;->cQd:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cJu:Z

    iget-boolean v2, p1, Lio/intercom/a/a/a/g/g;->cJu:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-virtual {v1, v2}, Lio/intercom/a/a/a/c/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/i;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cQb:Landroid/content/res/Resources$Theme;

    iget-object v2, p1, Lio/intercom/a/a/a/g/g;->cQb:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/i;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final fo(I)Lio/intercom/a/a/a/g/g;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    iput p1, p0, Lio/intercom/a/a/a/g/g;->cPU:I

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPS:F

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->hashCode(F)I

    move-result v0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPU:I

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cPT:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPV:I

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->bOV:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cQa:I

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cPZ:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cIM:Z

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->c(ZI)I

    move-result v0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPW:I

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->hashCode(II)I

    move-result v0

    iget v1, p0, Lio/intercom/a/a/a/g/g;->cPX:I

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->hashCode(II)I

    move-result v0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cJh:Z

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->c(ZI)I

    move-result v0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cPY:Z

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->c(ZI)I

    move-result v0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cQd:Z

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->c(ZI)I

    move-result v0

    iget-boolean v1, p0, Lio/intercom/a/a/a/g/g;->cJu:Z

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->c(ZI)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->diskCacheStrategy:Lio/intercom/a/a/a/c/b/i;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cJg:Lio/intercom/a/a/a/g;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cJd:Ljava/util/Map;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cJb:Ljava/lang/Class;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cIX:Lio/intercom/a/a/a/c/h;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lio/intercom/a/a/a/g/g;->cQb:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/i/i;->b(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final isSet(I)Z
    .locals 1

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-static {v0, p1}, Lio/intercom/a/a/a/g/g;->aN(II)Z

    move-result v0

    return v0
.end method

.method public final o(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/g/g;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/intercom/a/a/a/g/g;->bOV:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method

.method public final p(Landroid/graphics/drawable/Drawable;)Lio/intercom/a/a/a/g/g;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lio/intercom/a/a/a/g/g;->cQc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->Jy()Lio/intercom/a/a/a/g/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lio/intercom/a/a/a/g/g;->cPT:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lio/intercom/a/a/a/g/g;->cPR:I

    invoke-virtual {p0}, Lio/intercom/a/a/a/g/g;->JB()Lio/intercom/a/a/a/g/g;

    move-result-object v0

    return-object v0
.end method
