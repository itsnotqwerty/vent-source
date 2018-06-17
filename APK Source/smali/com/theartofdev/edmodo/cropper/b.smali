.class final Lcom/theartofdev/edmodo/cropper/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final DD:Landroid/net/Uri;

.field private final bPo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/theartofdev/edmodo/cropper/CropImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final db:I

.field private final dc:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;)V
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/b;->DD:Landroid/net/Uri;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/b;->bPo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/b;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-double v0, v0

    :goto_0
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v0

    double-to-int v3, v4

    iput v3, p0, Lcom/theartofdev/edmodo/cropper/b;->db:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/b;->dc:I

    return-void

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method private varargs AE()Lcom/theartofdev/edmodo/cropper/b$a;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/b;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/b;->DD:Landroid/net/Uri;

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/b;->db:I

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/b;->dc:I

    invoke-static {v0, v1, v2, v3}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;II)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/theartofdev/edmodo/cropper/c$a;->avo:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/b;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/b;->DD:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/theartofdev/edmodo/cropper/c$b;

    move-result-object v2

    new-instance v0, Lcom/theartofdev/edmodo/cropper/b$a;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/b;->DD:Landroid/net/Uri;

    iget-object v4, v2, Lcom/theartofdev/edmodo/cropper/c$b;->avo:Landroid/graphics/Bitmap;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/c$a;->awZ:I

    iget v2, v2, Lcom/theartofdev/edmodo/cropper/c$b;->bPP:I

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/theartofdev/edmodo/cropper/b$a;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/theartofdev/edmodo/cropper/b$a;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/b;->DD:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Lcom/theartofdev/edmodo/cropper/b$a;-><init>(Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/b;->AE()Lcom/theartofdev/edmodo/cropper/b$a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x0

    check-cast p1, Lcom/theartofdev/edmodo/cropper/b$a;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/b;->bPo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/theartofdev/edmodo/cropper/CropImageView;

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AL()V

    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->bPE:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->bPH:I

    iput v1, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRf:I

    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->avo:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/theartofdev/edmodo/cropper/b$a;->uri:Landroid/net/Uri;

    iget v4, p1, Lcom/theartofdev/edmodo/cropper/b$a;->bPG:I

    iget v5, p1, Lcom/theartofdev/edmodo/cropper/b$a;->bPH:I

    invoke-virtual/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropImageView;->a(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRs:Lcom/theartofdev/edmodo/cropper/CropImageView$h;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/theartofdev/edmodo/cropper/b$a;->bPE:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropImageView$h;->g(Ljava/lang/Exception;)V

    :cond_1
    move v2, v6

    :cond_2
    if-nez v2, :cond_3

    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/b$a;->avo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/b$a;->avo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-void
.end method
