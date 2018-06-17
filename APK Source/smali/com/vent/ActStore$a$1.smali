.class final Lcom/vent/ActStore$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActStore$a;
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
.field final synthetic bYx:Lcom/vent/ActStore$a;


# direct methods
.method constructor <init>(Lcom/vent/ActStore$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActStore$a$1;->bYx:Lcom/vent/ActStore$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lcom/vent/a/h;

    check-cast p2, Lcom/vent/a/h;

    invoke-virtual {p1}, Lcom/vent/a/h;->EW()Z

    move-result v2

    invoke-virtual {p2}, Lcom/vent/a/h;->EW()Z

    move-result v3

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/vent/a/h;->ER()Z

    move-result v2

    invoke-virtual {p2}, Lcom/vent/a/h;->ER()Z

    move-result v3

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Lcom/vent/a/h;->d(Lcom/vent/a/h;)I

    move-result v0

    goto :goto_0
.end method
