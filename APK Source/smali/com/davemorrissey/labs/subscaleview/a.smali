.class public final Lcom/davemorrissey/labs/subscaleview/a;
.super Ljava/lang/Object;


# instance fields
.field final avo:Landroid/graphics/Bitmap;

.field final avp:Ljava/lang/Integer;

.field avq:Z

.field avr:I

.field avs:I

.field avt:Landroid/graphics/Rect;

.field avu:Z

.field final uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avo:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->uri:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avp:Ljava/lang/Integer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avq:Z

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/davemorrissey/labs/subscaleview/a;->avo:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->uri:Landroid/net/Uri;

    iput-object v3, p0, Lcom/davemorrissey/labs/subscaleview/a;->avp:Ljava/lang/Integer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avq:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static aH(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/davemorrissey/labs/subscaleview/a;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public static i(Landroid/net/Uri;)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/a;

    invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/a;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public final as(II)Lcom/davemorrissey/labs/subscaleview/a;
    .locals 1

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avo:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/a;->avr:I

    iput p2, p0, Lcom/davemorrissey/labs/subscaleview/a;->avs:I

    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avt:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avq:Z

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avt:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avr:I

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avt:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avs:I

    :cond_1
    return-object p0
.end method

.method public final km()Lcom/davemorrissey/labs/subscaleview/a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/a;->avq:Z

    return-object p0
.end method
