.class public Lio/intercom/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static volatile cFo:Lio/intercom/a/a/a/c;

.field private static volatile cFp:Z


# instance fields
.field private cFA:Lio/intercom/a/a/a/f;

.field private final cFq:Lio/intercom/a/a/a/c/b/j;

.field public final cFr:Lio/intercom/a/a/a/c/b/a/e;

.field private final cFs:Lio/intercom/a/a/a/c/b/b/h;

.field private final cFt:Lio/intercom/a/a/a/c/b/d/a;

.field public final cFu:Lio/intercom/a/a/a/e;

.field public final cFv:Lio/intercom/a/a/a/h;

.field public final cFw:Lio/intercom/a/a/a/c/b/a/b;

.field public final cFx:Lio/intercom/a/a/a/d/l;

.field final cFy:Lio/intercom/a/a/a/d/d;

.field final cFz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/intercom/a/a/a/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lio/intercom/a/a/a/c/b/j;Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/d/l;Lio/intercom/a/a/a/d/d;ILio/intercom/a/a/a/g/g;Ljava/util/Map;)V
    .locals 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/a/a/a/c/b/j;",
            "Lio/intercom/a/a/a/c/b/b/h;",
            "Lio/intercom/a/a/a/c/b/a/e;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            "Lio/intercom/a/a/a/d/l;",
            "Lio/intercom/a/a/a/d/d;",
            "I",
            "Lio/intercom/a/a/a/g/g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/k",
            "<**>;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    sget-object v3, Lio/intercom/a/a/a/f;->cFN:Lio/intercom/a/a/a/f;

    move-object/from16 v0, p0

    iput-object v3, v0, Lio/intercom/a/a/a/c;->cFA:Lio/intercom/a/a/a/f;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/intercom/a/a/a/c;->cFq:Lio/intercom/a/a/a/c/b/j;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/intercom/a/a/a/c;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/intercom/a/a/a/c;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/intercom/a/a/a/c;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/intercom/a/a/a/c;->cFx:Lio/intercom/a/a/a/d/l;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/intercom/a/a/a/c;->cFy:Lio/intercom/a/a/a/d/d;

    move-object/from16 v0, p9

    iget-object v3, v0, Lio/intercom/a/a/a/g/g;->cIZ:Lio/intercom/a/a/a/c/j;

    sget-object v4, Lio/intercom/a/a/a/c/d/a/k;->cNP:Lio/intercom/a/a/a/c/i;

    invoke-virtual {v3, v4}, Lio/intercom/a/a/a/c/j;->a(Lio/intercom/a/a/a/c/i;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/intercom/a/a/a/c/b;

    new-instance v4, Lio/intercom/a/a/a/c/b/d/a;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1, v3}, Lio/intercom/a/a/a/c/b/d/a;-><init>(Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/intercom/a/a/a/c;->cFt:Lio/intercom/a/a/a/c/b/d/a;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Lio/intercom/a/a/a/h;

    invoke-direct {v4}, Lio/intercom/a/a/a/h;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    new-instance v5, Lio/intercom/a/a/a/c/d/a/i;

    invoke-direct {v5}, Lio/intercom/a/a/a/c/d/a/i;-><init>()V

    iget-object v4, v4, Lio/intercom/a/a/a/h;->cGc:Lio/intercom/a/a/a/f/b;

    invoke-virtual {v4, v5}, Lio/intercom/a/a/a/f/b;->a(Lio/intercom/a/a/a/c/f;)V

    new-instance v4, Lio/intercom/a/a/a/c/d/a/k;

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    invoke-virtual {v5}, Lio/intercom/a/a/a/h;->Hz()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v4, v5, v6, v0, v1}, Lio/intercom/a/a/a/c/d/a/k;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;)V

    new-instance v5, Lio/intercom/a/a/a/c/d/e/a;

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    invoke-virtual {v6}, Lio/intercom/a/a/a/h;->Hz()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v6, v1, v2}, Lio/intercom/a/a/a/c/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;)V

    new-instance v6, Lio/intercom/a/a/a/c/d/a/v;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lio/intercom/a/a/a/c/d/a/v;-><init>(Lio/intercom/a/a/a/c/b/a/e;)V

    new-instance v7, Lio/intercom/a/a/a/c/d/a/f;

    invoke-direct {v7, v4}, Lio/intercom/a/a/a/c/d/a/f;-><init>(Lio/intercom/a/a/a/c/d/a/k;)V

    new-instance v8, Lio/intercom/a/a/a/c/d/a/s;

    move-object/from16 v0, p5

    invoke-direct {v8, v4, v0}, Lio/intercom/a/a/a/c/d/a/s;-><init>(Lio/intercom/a/a/a/c/d/a/k;Lio/intercom/a/a/a/c/b/a/b;)V

    new-instance v4, Lio/intercom/a/a/a/c/d/c/e;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lio/intercom/a/a/a/c/d/c/e;-><init>(Landroid/content/Context;)V

    new-instance v9, Lio/intercom/a/a/a/c/c/s$b;

    invoke-direct {v9, v3}, Lio/intercom/a/a/a/c/c/s$b;-><init>(Landroid/content/res/Resources;)V

    new-instance v10, Lio/intercom/a/a/a/c/c/s$c;

    invoke-direct {v10, v3}, Lio/intercom/a/a/a/c/c/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v11, Lio/intercom/a/a/a/c/c/s$a;

    invoke-direct {v11, v3}, Lio/intercom/a/a/a/c/c/s$a;-><init>(Landroid/content/res/Resources;)V

    new-instance v12, Lio/intercom/a/a/a/c/d/a/c;

    invoke-direct {v12}, Lio/intercom/a/a/a/c/d/a/c;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    const-class v14, Ljava/nio/ByteBuffer;

    new-instance v15, Lio/intercom/a/a/a/c/c/c;

    invoke-direct {v15}, Lio/intercom/a/a/a/c/c/c;-><init>()V

    invoke-virtual {v13, v14, v15}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/d;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-class v14, Ljava/io/InputStream;

    new-instance v15, Lio/intercom/a/a/a/c/c/t;

    move-object/from16 v0, p5

    invoke-direct {v15, v0}, Lio/intercom/a/a/a/c/c/t;-><init>(Lio/intercom/a/a/a/c/b/a/b;)V

    invoke-virtual {v13, v14, v15}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/d;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-string v14, "Bitmap"

    const-class v15, Ljava/nio/ByteBuffer;

    const-class v16, Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-string v14, "Bitmap"

    const-class v15, Ljava/io/InputStream;

    const-class v16, Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v8}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-string v14, "Bitmap"

    const-class v15, Landroid/os/ParcelFileDescriptor;

    const-class v16, Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v6}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-string v14, "Bitmap"

    const-class v15, Landroid/graphics/Bitmap;

    const-class v16, Landroid/graphics/Bitmap;

    new-instance v17, Lio/intercom/a/a/a/c/d/a/u;

    invoke-direct/range {v17 .. v17}, Lio/intercom/a/a/a/c/d/a/u;-><init>()V

    invoke-virtual/range {v13 .. v17}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-class v14, Landroid/graphics/Bitmap;

    const-class v15, Landroid/graphics/Bitmap;

    invoke-static {}, Lio/intercom/a/a/a/c/c/v$a;->IT()Lio/intercom/a/a/a/c/c/v$a;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-class v14, Landroid/graphics/Bitmap;

    invoke-virtual {v13, v14, v12}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/l;)Lio/intercom/a/a/a/h;

    move-result-object v13

    const-string v14, "BitmapDrawable"

    const-class v15, Ljava/nio/ByteBuffer;

    const-class v16, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v17, Lio/intercom/a/a/a/c/d/a/a;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v7}, Lio/intercom/a/a/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/k;)V

    invoke-virtual/range {v13 .. v17}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v7

    const-string v13, "BitmapDrawable"

    const-class v14, Ljava/io/InputStream;

    const-class v15, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v16, Lio/intercom/a/a/a/c/d/a/a;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v8}, Lio/intercom/a/a/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/k;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v7

    const-string v8, "BitmapDrawable"

    const-class v13, Landroid/os/ParcelFileDescriptor;

    const-class v14, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v15, Lio/intercom/a/a/a/c/d/a/a;

    invoke-direct {v15, v3, v6}, Lio/intercom/a/a/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/k;)V

    invoke-virtual {v7, v8, v13, v14, v15}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v6

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lio/intercom/a/a/a/c/d/a/b;

    move-object/from16 v0, p4

    invoke-direct {v8, v0, v12}, Lio/intercom/a/a/a/c/d/a/b;-><init>(Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/l;)V

    invoke-virtual {v6, v7, v8}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/l;)Lio/intercom/a/a/a/h;

    move-result-object v6

    const-string v7, "Gif"

    const-class v8, Ljava/io/InputStream;

    const-class v12, Lio/intercom/a/a/a/c/d/e/c;

    new-instance v13, Lio/intercom/a/a/a/c/d/e/j;

    move-object/from16 v0, p0

    iget-object v14, v0, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    invoke-virtual {v14}, Lio/intercom/a/a/a/h;->Hz()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-direct {v13, v14, v5, v0}, Lio/intercom/a/a/a/c/d/e/j;-><init>(Ljava/util/List;Lio/intercom/a/a/a/c/k;Lio/intercom/a/a/a/c/b/a/b;)V

    invoke-virtual {v6, v7, v8, v12, v13}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v6

    const-string v7, "Gif"

    const-class v8, Ljava/nio/ByteBuffer;

    const-class v12, Lio/intercom/a/a/a/c/d/e/c;

    invoke-virtual {v6, v7, v8, v12, v5}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v5

    const-class v6, Lio/intercom/a/a/a/c/d/e/c;

    new-instance v7, Lio/intercom/a/a/a/c/d/e/d;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/d/e/d;-><init>()V

    invoke-virtual {v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Lio/intercom/a/a/a/c/l;)Lio/intercom/a/a/a/h;

    move-result-object v5

    const-class v6, Lio/intercom/a/a/a/b/a;

    const-class v7, Lio/intercom/a/a/a/b/a;

    invoke-static {}, Lio/intercom/a/a/a/c/c/v$a;->IT()Lio/intercom/a/a/a/c/c/v$a;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v5

    const-string v6, "Bitmap"

    const-class v7, Lio/intercom/a/a/a/b/a;

    const-class v8, Landroid/graphics/Bitmap;

    new-instance v12, Lio/intercom/a/a/a/c/d/e/h;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lio/intercom/a/a/a/c/d/e/h;-><init>(Lio/intercom/a/a/a/c/b/a/e;)V

    invoke-virtual {v5, v6, v7, v8, v12}, Lio/intercom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v7, v4}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/graphics/Bitmap;

    new-instance v8, Lio/intercom/a/a/a/c/d/a/r;

    move-object/from16 v0, p4

    invoke-direct {v8, v4, v0}, Lio/intercom/a/a/a/c/d/a/r;-><init>(Lio/intercom/a/a/a/c/d/c/e;Lio/intercom/a/a/a/c/b/a/e;)V

    invoke-virtual {v5, v6, v7, v8}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v4

    new-instance v5, Lio/intercom/a/a/a/c/d/b/a$a;

    invoke-direct {v5}, Lio/intercom/a/a/a/c/d/b/a$a;-><init>()V

    invoke-virtual {v4, v5}, Lio/intercom/a/a/a/h;->a(Lio/intercom/a/a/a/c/a/c$a;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lio/intercom/a/a/a/c/c/d$b;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/d$b;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/f$e;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/f$e;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    new-instance v7, Lio/intercom/a/a/a/c/d/d/a;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/d/d/a;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/io/File;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lio/intercom/a/a/a/c/c/f$b;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/f$b;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/io/File;

    const-class v6, Ljava/io/File;

    invoke-static {}, Lio/intercom/a/a/a/c/c/v$a;->IT()Lio/intercom/a/a/a/c/c/v$a;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    new-instance v5, Lio/intercom/a/a/a/c/a/i$a;

    move-object/from16 v0, p5

    invoke-direct {v5, v0}, Lio/intercom/a/a/a/c/a/i$a;-><init>(Lio/intercom/a/a/a/c/b/a/b;)V

    invoke-virtual {v4, v5}, Lio/intercom/a/a/a/h;->a(Lio/intercom/a/a/a/c/a/c$a;)Lio/intercom/a/a/a/h;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/io/InputStream;

    invoke-virtual {v4, v5, v6, v9}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5, v6, v11}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    const-class v6, Ljava/io/InputStream;

    invoke-virtual {v4, v5, v6, v9}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v5, v6, v11}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v10}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v10}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/e$c;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/e$c;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/u$b;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/u$b;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lio/intercom/a/a/a/c/c/u$a;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/u$a;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/a/b$a;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/a/b$a;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/intercom/a/a/a/c/c/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lio/intercom/a/a/a/c/c/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/intercom/a/a/a/c/c/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/a/c$a;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lio/intercom/a/a/a/c/c/a/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/a/d$a;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lio/intercom/a/a/a/c/c/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/w$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/intercom/a/a/a/c/c/w$c;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/os/ParcelFileDescriptor;

    new-instance v7, Lio/intercom/a/a/a/c/c/w$a;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {v7, v8}, Lio/intercom/a/a/a/c/c/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/x$a;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/x$a;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Ljava/net/URL;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/a/e$a;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/a/e$a;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Ljava/io/File;

    new-instance v7, Lio/intercom/a/a/a/c/c/k$a;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lio/intercom/a/a/a/c/c/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Lio/intercom/a/a/a/c/c/g;

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/a/a$a;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/a/a$a;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, [B

    const-class v6, Ljava/nio/ByteBuffer;

    new-instance v7, Lio/intercom/a/a/a/c/c/b$a;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/b$a;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, [B

    const-class v6, Ljava/io/InputStream;

    new-instance v7, Lio/intercom/a/a/a/c/c/b$d;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/c/b$d;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/net/Uri;

    const-class v6, Landroid/net/Uri;

    invoke-static {}, Lio/intercom/a/a/a/c/c/v$a;->IT()Lio/intercom/a/a/a/c/c/v$a;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lio/intercom/a/a/a/c/c/v$a;->IT()Lio/intercom/a/a/a/c/c/v$a;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/c/o;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, Landroid/graphics/drawable/Drawable;

    new-instance v7, Lio/intercom/a/a/a/c/d/c/f;

    invoke-direct {v7}, Lio/intercom/a/a/a/c/d/c/f;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/k;)Lio/intercom/a/a/a/h;

    move-result-object v4

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v7, Lio/intercom/a/a/a/c/d/f/b;

    invoke-direct {v7, v3}, Lio/intercom/a/a/a/c/d/f/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/d/f/d;)Lio/intercom/a/a/a/h;

    move-result-object v3

    const-class v4, Landroid/graphics/Bitmap;

    const-class v5, [B

    new-instance v6, Lio/intercom/a/a/a/c/d/f/a;

    invoke-direct {v6}, Lio/intercom/a/a/a/c/d/f/a;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/d/f/d;)Lio/intercom/a/a/a/h;

    move-result-object v3

    const-class v4, Lio/intercom/a/a/a/c/d/e/c;

    const-class v5, [B

    new-instance v6, Lio/intercom/a/a/a/c/d/f/c;

    invoke-direct {v6}, Lio/intercom/a/a/a/c/d/f/c;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lio/intercom/a/a/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lio/intercom/a/a/a/c/d/f/d;)Lio/intercom/a/a/a/h;

    new-instance v7, Lio/intercom/a/a/a/g/a/e;

    invoke-direct {v7}, Lio/intercom/a/a/a/g/a/e;-><init>()V

    new-instance v3, Lio/intercom/a/a/a/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lio/intercom/a/a/a/c;->cFv:Lio/intercom/a/a/a/h;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p2

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lio/intercom/a/a/a/e;-><init>(Landroid/content/Context;Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/h;Lio/intercom/a/a/a/g/a/e;Lio/intercom/a/a/a/g/g;Ljava/util/Map;Lio/intercom/a/a/a/c/b/j;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lio/intercom/a/a/a/c;->cFu:Lio/intercom/a/a/a/e;

    return-void
.end method

.method private static Hy()Lio/intercom/a/a/a/a;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "io.intercom.com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Glide"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Glide"

    const-string v2, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Landroid/content/Context;Lio/intercom/a/a/a/d;)V
    .locals 13

    const/4 v6, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lio/intercom/a/a/a/c;->Hy()Lio/intercom/a/a/a/a;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    new-instance v1, Lio/intercom/a/a/a/e/d;

    invoke-direct {v1}, Lio/intercom/a/a/a/e/d;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/intercom/a/a/a/a;->Hx()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lio/intercom/a/a/a/a;->Hx()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/e/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Glide"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Glide"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const-string v0, "Glide"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/e/b;

    const-string v2, "Glide"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Discovered GlideModule from manifest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFH:Lio/intercom/a/a/a/d/l$a;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFC:Lio/intercom/a/a/a/c/b/c/a;

    if-nez v0, :cond_5

    invoke-static {}, Lio/intercom/a/a/a/c/b/c/a;->IJ()Lio/intercom/a/a/a/c/b/c/a;

    move-result-object v0

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFC:Lio/intercom/a/a/a/c/b/c/a;

    :cond_5
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFD:Lio/intercom/a/a/a/c/b/c/a;

    if-nez v0, :cond_6

    invoke-static {}, Lio/intercom/a/a/a/c/b/c/a;->II()Lio/intercom/a/a/a/c/b/c/a;

    move-result-object v0

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFD:Lio/intercom/a/a/a/c/b/c/a;

    :cond_6
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFI:Lio/intercom/a/a/a/c/b/c/a;

    if-nez v0, :cond_7

    invoke-static {}, Lio/intercom/a/a/a/c/b/c/a;->IL()Lio/intercom/a/a/a/c/b/c/a;

    move-result-object v0

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFI:Lio/intercom/a/a/a/c/b/c/a;

    :cond_7
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFF:Lio/intercom/a/a/a/c/b/b/i;

    if-nez v0, :cond_8

    new-instance v0, Lio/intercom/a/a/a/c/b/b/i$a;

    invoke-direct {v0, v11}, Lio/intercom/a/a/a/c/b/b/i$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/intercom/a/a/a/c/b/b/i;

    invoke-direct {v1, v0}, Lio/intercom/a/a/a/c/b/b/i;-><init>(Lio/intercom/a/a/a/c/b/b/i$a;)V

    iput-object v1, p1, Lio/intercom/a/a/a/d;->cFF:Lio/intercom/a/a/a/c/b/b/i;

    :cond_8
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFy:Lio/intercom/a/a/a/d/d;

    if-nez v0, :cond_9

    new-instance v0, Lio/intercom/a/a/a/d/f;

    invoke-direct {v0}, Lio/intercom/a/a/a/d/f;-><init>()V

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFy:Lio/intercom/a/a/a/d/d;

    :cond_9
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    if-nez v0, :cond_a

    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFF:Lio/intercom/a/a/a/c/b/b/i;

    iget v0, v0, Lio/intercom/a/a/a/c/b/b/i;->cLS:I

    if-lez v0, :cond_f

    new-instance v1, Lio/intercom/a/a/a/c/b/a/k;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lio/intercom/a/a/a/c/b/a/k;-><init>(J)V

    iput-object v1, p1, Lio/intercom/a/a/a/d;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    :cond_a
    :goto_3
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    if-nez v0, :cond_b

    new-instance v0, Lio/intercom/a/a/a/c/b/a/j;

    iget-object v1, p1, Lio/intercom/a/a/a/d;->cFF:Lio/intercom/a/a/a/c/b/b/i;

    iget v1, v1, Lio/intercom/a/a/a/c/b/b/i;->cLU:I

    invoke-direct {v0, v1}, Lio/intercom/a/a/a/c/b/a/j;-><init>(I)V

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    :cond_b
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    if-nez v0, :cond_c

    new-instance v0, Lio/intercom/a/a/a/c/b/b/g;

    iget-object v1, p1, Lio/intercom/a/a/a/d;->cFF:Lio/intercom/a/a/a/c/b/b/i;

    iget v1, v1, Lio/intercom/a/a/a/c/b/b/i;->cLT:I

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lio/intercom/a/a/a/c/b/b/g;-><init>(J)V

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    :cond_c
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFE:Lio/intercom/a/a/a/c/b/b/a$a;

    if-nez v0, :cond_d

    new-instance v0, Lio/intercom/a/a/a/c/b/b/f;

    invoke-direct {v0, v11}, Lio/intercom/a/a/a/c/b/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFE:Lio/intercom/a/a/a/c/b/b/a$a;

    :cond_d
    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFq:Lio/intercom/a/a/a/c/b/j;

    if-nez v0, :cond_e

    new-instance v0, Lio/intercom/a/a/a/c/b/j;

    iget-object v1, p1, Lio/intercom/a/a/a/d;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    iget-object v2, p1, Lio/intercom/a/a/a/d;->cFE:Lio/intercom/a/a/a/c/b/b/a$a;

    iget-object v3, p1, Lio/intercom/a/a/a/d;->cFD:Lio/intercom/a/a/a/c/b/c/a;

    iget-object v4, p1, Lio/intercom/a/a/a/d;->cFC:Lio/intercom/a/a/a/c/b/c/a;

    invoke-static {}, Lio/intercom/a/a/a/c/b/c/a;->IK()Lio/intercom/a/a/a/c/b/c/a;

    move-result-object v5

    invoke-static {}, Lio/intercom/a/a/a/c/b/c/a;->IL()Lio/intercom/a/a/a/c/b/c/a;

    move-result-object v6

    iget-boolean v7, p1, Lio/intercom/a/a/a/d;->cFJ:Z

    invoke-direct/range {v0 .. v7}, Lio/intercom/a/a/a/c/b/j;-><init>(Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/b/a$a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Lio/intercom/a/a/a/c/b/c/a;Z)V

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFq:Lio/intercom/a/a/a/c/b/j;

    :cond_e
    new-instance v6, Lio/intercom/a/a/a/d/l;

    iget-object v0, p1, Lio/intercom/a/a/a/d;->cFH:Lio/intercom/a/a/a/d/l$a;

    invoke-direct {v6, v0}, Lio/intercom/a/a/a/d/l;-><init>(Lio/intercom/a/a/a/d/l$a;)V

    new-instance v0, Lio/intercom/a/a/a/c;

    iget-object v2, p1, Lio/intercom/a/a/a/d;->cFq:Lio/intercom/a/a/a/c/b/j;

    iget-object v3, p1, Lio/intercom/a/a/a/d;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    iget-object v4, p1, Lio/intercom/a/a/a/d;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    iget-object v5, p1, Lio/intercom/a/a/a/d;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    iget-object v7, p1, Lio/intercom/a/a/a/d;->cFy:Lio/intercom/a/a/a/d/d;

    iget v8, p1, Lio/intercom/a/a/a/d;->logLevel:I

    iget-object v9, p1, Lio/intercom/a/a/a/d;->cFG:Lio/intercom/a/a/a/g/g;

    const/4 v1, 0x1

    iput-boolean v1, v9, Lio/intercom/a/a/a/g/g;->cKV:Z

    iget-object v10, p1, Lio/intercom/a/a/a/d;->cFB:Ljava/util/Map;

    move-object v1, v11

    invoke-direct/range {v0 .. v10}, Lio/intercom/a/a/a/c;-><init>(Landroid/content/Context;Lio/intercom/a/a/a/c/b/j;Lio/intercom/a/a/a/c/b/b/h;Lio/intercom/a/a/a/c/b/a/e;Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/d/l;Lio/intercom/a/a/a/d/d;ILio/intercom/a/a/a/g/g;Ljava/util/Map;)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_f
    new-instance v0, Lio/intercom/a/a/a/c/b/a/f;

    invoke-direct {v0}, Lio/intercom/a/a/a/c/b/a/f;-><init>()V

    iput-object v0, p1, Lio/intercom/a/a/a/d;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    goto :goto_3

    :cond_10
    invoke-virtual {v11, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lio/intercom/a/a/a/c;->cFo:Lio/intercom/a/a/a/c;

    return-void
.end method

.method public static b(Landroid/support/v4/app/j;)Lio/intercom/a/a/a/j;
    .locals 1

    invoke-static {p0}, Lio/intercom/a/a/a/c;->bZ(Landroid/content/Context;)Lio/intercom/a/a/a/d/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/a/a/a/d/l;->c(Landroid/support/v4/app/j;)Lio/intercom/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public static bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;
    .locals 3

    sget-object v0, Lio/intercom/a/a/a/c;->cFo:Lio/intercom/a/a/a/c;

    if-nez v0, :cond_2

    const-class v1, Lio/intercom/a/a/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/intercom/a/a/a/c;->cFo:Lio/intercom/a/a/a/c;

    if-nez v0, :cond_1

    sget-boolean v0, Lio/intercom/a/a/a/c;->cFp:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lio/intercom/a/a/a/c;->cFp:Z

    new-instance v0, Lio/intercom/a/a/a/d;

    invoke-direct {v0}, Lio/intercom/a/a/a/d;-><init>()V

    invoke-static {p0, v0}, Lio/intercom/a/a/a/c;->a(Landroid/content/Context;Lio/intercom/a/a/a/d;)V

    const/4 v0, 0x0

    sput-boolean v0, Lio/intercom/a/a/a/c;->cFp:Z

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    sget-object v0, Lio/intercom/a/a/a/c;->cFo:Lio/intercom/a/a/a/c;

    return-object v0
.end method

.method private static bZ(Landroid/content/Context;)Lio/intercom/a/a/a/d/l;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lio/intercom/a/a/a/c;->bY(Landroid/content/Context;)Lio/intercom/a/a/a/c;

    move-result-object v0

    iget-object v0, v0, Lio/intercom/a/a/a/c;->cFx:Lio/intercom/a/a/a/d/l;

    return-object v0
.end method

.method public static ca(Landroid/content/Context;)Lio/intercom/a/a/a/j;
    .locals 1

    invoke-static {p0}, Lio/intercom/a/a/a/c;->bZ(Landroid/content/Context;)Lio/intercom/a/a/a/d/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/intercom/a/a/a/d/l;->cd(Landroid/content/Context;)Lio/intercom/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public static r(Landroid/support/v4/app/i;)Lio/intercom/a/a/a/j;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-static {v0}, Lio/intercom/a/a/a/c;->bZ(Landroid/content/Context;)Lio/intercom/a/a/a/d/l;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    const-string v2, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v1, v2}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JV()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/intercom/a/a/a/d/l;->cd(Landroid/content/Context;)Lio/intercom/a/a/a/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Lio/intercom/a/a/a/d/l;->a(Landroid/content/Context;Landroid/support/v4/app/n;Landroid/support/v4/app/i;)Lio/intercom/a/a/a/j;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a(Lio/intercom/a/a/a/g/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/g/a/h",
            "<*>;)Z"
        }
    .end annotation

    iget-object v1, p0, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lio/intercom/a/a/a/c;->cFz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/j;

    invoke-virtual {v0, p1}, Lio/intercom/a/a/a/j;->c(Lio/intercom/a/a/a/g/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/b/h;->Iw()V

    iget-object v0, p0, Lio/intercom/a/a/a/c;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/a/e;->Iw()V

    iget-object v0, p0, Lio/intercom/a/a/a/c;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v0}, Lio/intercom/a/a/a/c/b/a/b;->Iw()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-static {}, Lio/intercom/a/a/a/i/i;->JS()V

    iget-object v0, p0, Lio/intercom/a/a/a/c;->cFs:Lio/intercom/a/a/a/c/b/b/h;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/b/h;->fh(I)V

    iget-object v0, p0, Lio/intercom/a/a/a/c;->cFr:Lio/intercom/a/a/a/c/b/a/e;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/e;->fh(I)V

    iget-object v0, p0, Lio/intercom/a/a/a/c;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    invoke-interface {v0, p1}, Lio/intercom/a/a/a/c/b/a/b;->fh(I)V

    return-void
.end method
