.class final Lcom/vent/d/a$1;
.super Landroid/support/v4/g/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/g/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/support/v4/g/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/ArrayList;

    check-cast p4, Ljava/util/ArrayList;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/g/g;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget v0, Lcom/vent/d/a;->cmD:I

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/vent/d/a;->cmD:I

    return-void
.end method
