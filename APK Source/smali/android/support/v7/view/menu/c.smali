.class abstract Landroid/support/v7/view/menu/c;
.super Landroid/support/v7/view/menu/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/view/menu/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field QY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/b/a/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field QZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/b/a/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/d;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/v7/view/menu/c;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    instance-of v0, p1, Landroid/support/v4/b/a/c;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/b/a/c;

    iget-object v0, p0, Landroid/support/v7/view/menu/c;->QZ:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/c;->QZ:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/c;->QZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/c;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/view/menu/v;

    invoke-direct {v0, v1, p1}, Landroid/support/v7/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v4/b/a/c;)V

    iget-object v1, p0, Landroid/support/v7/view/menu/c;->QZ:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method final b(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    instance-of v0, p1, Landroid/support/v4/b/a/b;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/support/v4/b/a/b;

    iget-object v1, p0, Landroid/support/v7/view/menu/c;->QY:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/c;->QY:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/c;->QY:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/view/menu/c;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/support/v7/view/menu/q;->a(Landroid/content/Context;Landroid/support/v4/b/a/b;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/view/menu/c;->QY:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method
