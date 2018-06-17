.class final Landroid/support/v4/g/a$1;
.super Landroid/support/v4/g/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/g/a;->dC()Landroid/support/v4/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/g/h",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic El:Landroid/support/v4/g/a;


# direct methods
.method constructor <init>(Landroid/support/v4/g/a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    invoke-direct {p0}, Landroid/support/v4/g/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final C(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final D(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/support/v4/g/m;->Et:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v0, v0, Landroid/support/v4/g/m;->Et:[Ljava/lang/Object;

    aput-object p2, v0, v1

    return-object v2
.end method

.method protected final an(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/a;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final dD()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    iget v0, v0, Landroid/support/v4/g/a;->ai:I

    return v0
.end method

.method protected final dE()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    return-object v0
.end method

.method protected final dF()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->clear()V

    return-void
.end method

.method protected final o(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/g/a$1;->El:Landroid/support/v4/g/a;

    iget-object v0, v0, Landroid/support/v4/g/a;->Et:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method
