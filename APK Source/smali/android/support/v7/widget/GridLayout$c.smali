.class final Landroid/support/v7/widget/GridLayout$c;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final aao:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final aap:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$c;->aao:Ljava/lang/Class;

    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$c;->aap:Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Landroid/support/v7/widget/GridLayout$c",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Landroid/support/v7/widget/GridLayout$c;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$c;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final gR()Landroid/support/v7/widget/GridLayout$i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$c;->size()I

    move-result v4

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$c;->aao:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$c;->aap:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout$c;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v2, v0, v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout$c;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v1, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/support/v7/widget/GridLayout$i;

    invoke-direct {v2, v0, v1}, Landroid/support/v7/widget/GridLayout$i;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v2
.end method
