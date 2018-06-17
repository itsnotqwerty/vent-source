.class final Lcom/vent/bb$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vent/a/m;",
        ">;"
    }
.end annotation


# instance fields
.field final ciQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/vent/a/m;",
            "Lcom/vent/a/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vent/bb$a;->ciQ:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const v0, 0x98967f

    check-cast p1, Lcom/vent/a/m;

    check-cast p2, Lcom/vent/a/m;

    iget-object v1, p0, Lcom/vent/bb$a;->ciQ:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/vent/a/o;->b(Ljava/util/Map;Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v1

    iget-object v2, p0, Lcom/vent/bb$a;->ciQ:Ljava/util/Map;

    invoke-static {v2, p2}, Lcom/vent/a/o;->b(Ljava/util/Map;Lcom/vent/a/m;)Lcom/vent/a/o;

    move-result-object v2

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/vent/a/o;->cku:I

    :goto_0
    if-eqz v2, :cond_0

    iget v0, v2, Lcom/vent/a/o;->cku:I

    :cond_0
    sub-int v0, v1, v0

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method
