.class final Lcom/vent/ag$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ag$a;-><init>(Lcom/vent/ag;)V
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
        "Lcom/vent/ag$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic cec:Lcom/vent/ag$a;


# direct methods
.method constructor <init>(Lcom/vent/ag$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ag$a$2;->cec:Lcom/vent/ag$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/vent/ag$b;

    check-cast p2, Lcom/vent/ag$b;

    iget-object v0, p1, Lcom/vent/ag$b;->bXE:Lcom/vent/a/x;

    iget-object v0, v0, Lcom/vent/a/x;->username:Ljava/lang/String;

    iget-object v1, p2, Lcom/vent/ag$b;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/vent/ag$b;->bXE:Lcom/vent/a/x;

    iget-object v0, v0, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    iget-object v1, p2, Lcom/vent/ag$b;->bXE:Lcom/vent/a/x;

    iget-object v1, v1, Lcom/vent/a/x;->cjy:Lcom/vent/a/m;

    invoke-static {v0, v1}, Lcom/vent/a/m;->a(Lcom/vent/a/m;Lcom/vent/a/m;)I

    move-result v0

    goto :goto_0
.end method
