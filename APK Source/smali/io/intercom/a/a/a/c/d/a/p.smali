.class public final Lio/intercom/a/a/a/c/d/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/q;
.implements Lio/intercom/a/a/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/q;",
        "Lio/intercom/a/a/a/c/b/u",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cNn:Landroid/content/res/Resources;

.field private final cOf:Lio/intercom/a/a/a/c/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/b/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/p;->cNn:Landroid/content/res/Resources;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/b/u;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/p;->cOf:Lio/intercom/a/a/a/c/b/u;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lio/intercom/a/a/a/c/d/a/p;

    invoke-direct {v0, p0, p1}, Lio/intercom/a/a/a/c/d/a/p;-><init>(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/b/u;)V

    goto :goto_0
.end method


# virtual methods
.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lio/intercom/a/a/a/c/d/a/p;->cNn:Landroid/content/res/Resources;

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/p;->cOf:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/p;->cOf:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->getSize()I

    move-result v0

    return v0
.end method

.method public final initialize()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/p;->cOf:Lio/intercom/a/a/a/c/b/u;

    instance-of v0, v0, Lio/intercom/a/a/a/c/b/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/p;->cOf:Lio/intercom/a/a/a/c/b/u;

    check-cast v0, Lio/intercom/a/a/a/c/b/q;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/q;->initialize()V

    :cond_0
    return-void
.end method

.method public final recycle()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/p;->cOf:Lio/intercom/a/a/a/c/b/u;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/u;->recycle()V

    return-void
.end method
