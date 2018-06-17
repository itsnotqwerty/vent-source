.class Lcom/vent/l$a;
.super Lcom/vent/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic cbe:Lcom/vent/l;


# direct methods
.method constructor <init>(Lcom/vent/l;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/l$a;->cbe:Lcom/vent/l;

    invoke-direct {p0, p2}, Lcom/vent/l$b;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final CO()I
    .locals 2

    iget-object v0, p0, Lcom/vent/l$a;->cbe:Lcom/vent/l;

    invoke-virtual {p0}, Lcom/vent/l$a;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vent/l;->ew(I)I

    move-result v0

    return v0
.end method
