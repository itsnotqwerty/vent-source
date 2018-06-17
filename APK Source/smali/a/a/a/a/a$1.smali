.class final La/a/a/a/a$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "La/a/a/d;",
        "La/a/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic csV:I

.field final synthetic csW:La/a/a/a/a;


# direct methods
.method constructor <init>(La/a/a/a/a;I)V
    .locals 2

    iput-object p1, p0, La/a/a/a/a$1;->csW:La/a/a/a/a;

    const/16 v0, 0x400

    iput v0, p0, La/a/a/a/a$1;->csV:I

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "La/a/a/d;",
            "La/a/a/d;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, La/a/a/a/a$1;->size()I

    move-result v0

    iget v1, p0, La/a/a/a/a$1;->csV:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
