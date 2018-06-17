.class final Lcom/vent/ActEmotions$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEmotions;->Bs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vent/a/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bVw:Lcom/vent/ActEmotions;


# direct methods
.method constructor <init>(Lcom/vent/ActEmotions;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActEmotions$7;->bVw:Lcom/vent/ActEmotions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    check-cast p1, Lcom/vent/a/h;

    check-cast p2, Lcom/vent/a/h;

    invoke-virtual {p1}, Lcom/vent/a/h;->EU()Z

    move-result v5

    invoke-virtual {p2}, Lcom/vent/a/h;->EU()Z

    move-result v6

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/vent/a/h;->ER()Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v1

    :goto_0
    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/vent/a/h;->ER()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    if-eq v4, v3, :cond_4

    if-eqz v4, :cond_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    if-eq v5, v6, :cond_5

    if-nez v5, :cond_0

    move v0, v1

    goto :goto_2

    :cond_5
    if-nez v5, :cond_7

    invoke-virtual {p1}, Lcom/vent/a/h;->ES()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_3
    if-nez v6, :cond_6

    invoke-virtual {p2}, Lcom/vent/a/h;->ES()Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v1

    :cond_6
    if-eq v3, v2, :cond_8

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_3

    :cond_8
    invoke-virtual {p1, p2}, Lcom/vent/a/h;->d(Lcom/vent/a/h;)I

    move-result v0

    goto :goto_2
.end method
