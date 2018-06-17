.class final Lcom/theartofdev/edmodo/cropper/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/theartofdev/edmodo/cropper/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final DD:Landroid/net/Uri;

.field private final bPA:I

.field private final bPB:Landroid/net/Uri;

.field private final bPC:Landroid/graphics/Bitmap$CompressFormat;

.field private final bPD:I

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

.field private final bPp:[F

.field private final bPq:I

.field private final bPr:I

.field private final bPs:I

.field private final bPt:Z

.field private final bPu:I

.field private final bPv:I

.field private final bPw:I

.field private final bPx:I

.field private final bPy:Z

.field private final bPz:Z

.field private final bmT:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/graphics/Bitmap;[FIZIIIIZZILandroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->bPo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/a;->bmT:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/a;->bPp:[F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->DD:Landroid/net/Uri;

    iput p4, p0, Lcom/theartofdev/edmodo/cropper/a;->bPq:I

    iput-boolean p5, p0, Lcom/theartofdev/edmodo/cropper/a;->bPt:Z

    iput p6, p0, Lcom/theartofdev/edmodo/cropper/a;->bPu:I

    iput p7, p0, Lcom/theartofdev/edmodo/cropper/a;->bPv:I

    iput p8, p0, Lcom/theartofdev/edmodo/cropper/a;->bPw:I

    iput p9, p0, Lcom/theartofdev/edmodo/cropper/a;->bPx:I

    iput-boolean p10, p0, Lcom/theartofdev/edmodo/cropper/a;->bPy:Z

    iput-boolean p11, p0, Lcom/theartofdev/edmodo/cropper/a;->bPz:Z

    iput p12, p0, Lcom/theartofdev/edmodo/cropper/a;->bPA:I

    iput-object p13, p0, Lcom/theartofdev/edmodo/cropper/a;->bPB:Landroid/net/Uri;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPC:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p15

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPD:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/a;->bPr:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/theartofdev/edmodo/cropper/a;->bPs:I

    return-void
.end method

.method constructor <init>(Lcom/theartofdev/edmodo/cropper/CropImageView;Landroid/net/Uri;[FIIIZIIIIZZILandroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->bPo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/theartofdev/edmodo/cropper/a;->DD:Landroid/net/Uri;

    iput-object p3, p0, Lcom/theartofdev/edmodo/cropper/a;->bPp:[F

    iput p4, p0, Lcom/theartofdev/edmodo/cropper/a;->bPq:I

    iput-boolean p7, p0, Lcom/theartofdev/edmodo/cropper/a;->bPt:Z

    iput p8, p0, Lcom/theartofdev/edmodo/cropper/a;->bPu:I

    iput p9, p0, Lcom/theartofdev/edmodo/cropper/a;->bPv:I

    iput p5, p0, Lcom/theartofdev/edmodo/cropper/a;->bPr:I

    iput p6, p0, Lcom/theartofdev/edmodo/cropper/a;->bPs:I

    iput p10, p0, Lcom/theartofdev/edmodo/cropper/a;->bPw:I

    iput p11, p0, Lcom/theartofdev/edmodo/cropper/a;->bPx:I

    iput-boolean p12, p0, Lcom/theartofdev/edmodo/cropper/a;->bPy:Z

    iput-boolean p13, p0, Lcom/theartofdev/edmodo/cropper/a;->bPz:Z

    move/from16 v0, p14

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPA:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPB:Landroid/net/Uri;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPC:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, p17

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPD:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->bmT:Landroid/graphics/Bitmap;

    return-void
.end method

.method private varargs AD()Lcom/theartofdev/edmodo/cropper/a$a;
    .locals 14

    const/4 v0, 0x0

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/a;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->DD:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->DD:Landroid/net/Uri;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/a;->bPp:[F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/a;->bPq:I

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/a;->bPr:I

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/a;->bPs:I

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/a;->bPt:Z

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/a;->bPu:I

    iget v8, p0, Lcom/theartofdev/edmodo/cropper/a;->bPv:I

    iget v9, p0, Lcom/theartofdev/edmodo/cropper/a;->bPw:I

    iget v10, p0, Lcom/theartofdev/edmodo/cropper/a;->bPx:I

    iget-boolean v11, p0, Lcom/theartofdev/edmodo/cropper/a;->bPy:Z

    iget-boolean v12, p0, Lcom/theartofdev/edmodo/cropper/a;->bPz:Z

    invoke-static/range {v0 .. v12}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/theartofdev/edmodo/cropper/c$a;->avo:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/a;->bPw:I

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/a;->bPx:I

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/a;->bPA:I

    invoke-static {v0, v2, v3, v4}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPB:Landroid/net/Uri;

    if-nez v0, :cond_3

    new-instance v0, Lcom/theartofdev/edmodo/cropper/a$a;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/c$a;->awZ:I

    invoke-direct {v0, v2, v1}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Landroid/graphics/Bitmap;I)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bmT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bmT:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/a;->bPp:[F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/a;->bPq:I

    iget-boolean v3, p0, Lcom/theartofdev/edmodo/cropper/a;->bPt:Z

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/a;->bPu:I

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/a;->bPv:I

    iget-boolean v6, p0, Lcom/theartofdev/edmodo/cropper/a;->bPy:Z

    iget-boolean v7, p0, Lcom/theartofdev/edmodo/cropper/a;->bPz:Z

    invoke-static/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/theartofdev/edmodo/cropper/c$a;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/theartofdev/edmodo/cropper/a$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v1, Lcom/theartofdev/edmodo/cropper/a$a;

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPB:Landroid/net/Uri;

    if-eqz v0, :cond_5

    move v0, v13

    :goto_2
    invoke-direct {v1, v2, v0}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Ljava/lang/Exception;Z)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/a;->bPB:Landroid/net/Uri;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/a;->bPC:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/a;->bPD:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/theartofdev/edmodo/cropper/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;I)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    new-instance v0, Lcom/theartofdev/edmodo/cropper/a$a;

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/a;->bPB:Landroid/net/Uri;

    iget v1, v1, Lcom/theartofdev/edmodo/cropper/c$a;->awZ:I

    invoke-direct {v0, v2, v1}, Lcom/theartofdev/edmodo/cropper/a$a;-><init>(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/a;->AD()Lcom/theartofdev/edmodo/cropper/a$a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 13

    check-cast p1, Lcom/theartofdev/edmodo/cropper/a$a;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/a;->bPo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/theartofdev/edmodo/cropper/CropImageView;

    if-eqz v9, :cond_2

    const/4 v11, 0x1

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropImageView;->AL()V

    iget-object v12, v9, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRt:Lcom/theartofdev/edmodo/cropper/CropImageView$d;

    if-eqz v12, :cond_0

    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropImageView$a;

    iget-object v1, v9, Lcom/theartofdev/edmodo/cropper/CropImageView;->bmT:Landroid/graphics/Bitmap;

    iget-object v2, v9, Lcom/theartofdev/edmodo/cropper/CropImageView;->bRu:Landroid/net/Uri;

    iget-object v3, p1, Lcom/theartofdev/edmodo/cropper/a$a;->avo:Landroid/graphics/Bitmap;

    iget-object v4, p1, Lcom/theartofdev/edmodo/cropper/a$a;->uri:Landroid/net/Uri;

    iget-object v5, p1, Lcom/theartofdev/edmodo/cropper/a$a;->bPE:Ljava/lang/Exception;

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropPoints()[F

    move-result-object v6

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v9}, Lcom/theartofdev/edmodo/cropper/CropImageView;->getRotatedDegrees()I

    move-result v9

    iget v10, p1, Lcom/theartofdev/edmodo/cropper/a$a;->awZ:I

    invoke-direct/range {v0 .. v10}, Lcom/theartofdev/edmodo/cropper/CropImageView$a;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V

    invoke-interface {v12, v0}, Lcom/theartofdev/edmodo/cropper/CropImageView$d;->a(Lcom/theartofdev/edmodo/cropper/CropImageView$a;)V

    :cond_0
    move v0, v11

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/a$a;->avo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/a$a;->avo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
