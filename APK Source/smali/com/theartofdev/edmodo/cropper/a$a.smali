.class final Lcom/theartofdev/edmodo/cropper/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/theartofdev/edmodo/cropper/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final avo:Landroid/graphics/Bitmap;

.field final awZ:I

.field final bPE:Ljava/lang/Exception;

.field final bPF:Z

.field public final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/a$a;->avo:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->bPE:Ljava/lang/Exception;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->bPF:Z

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/a$a;->awZ:I

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->avo:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/a$a;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->bPE:Ljava/lang/Exception;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->bPF:Z

    iput p2, p0, Lcom/theartofdev/edmodo/cropper/a$a;->awZ:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Exception;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->avo:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->uri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/a$a;->bPE:Ljava/lang/Exception;

    iput-boolean p2, p0, Lcom/theartofdev/edmodo/cropper/a$a;->bPF:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/a$a;->awZ:I

    return-void
.end method
