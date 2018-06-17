.class final Lcom/layer/atlas/b/a$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layer/atlas/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "TTcache;>;"
    }
.end annotation


# instance fields
.field final synthetic bos:Lcom/layer/atlas/b/a;


# direct methods
.method constructor <init>(Lcom/layer/atlas/b/a;)V
    .locals 1

    iput-object p1, p0, Lcom/layer/atlas/b/a$1;->bos:Lcom/layer/atlas/b/a;

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p2, Lcom/layer/atlas/b/a$c;

    invoke-interface {p2}, Lcom/layer/atlas/b/a$c;->wm()I

    move-result v0

    return v0
.end method
