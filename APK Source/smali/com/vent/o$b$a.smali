.class Lcom/vent/o$b$a;
.super Lcom/vent/d/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/o$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic cbt:Lcom/vent/o$b;


# direct methods
.method constructor <init>(Lcom/vent/o$b;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/o$b$a;->cbt:Lcom/vent/o$b;

    invoke-direct {p0}, Lcom/vent/d/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/o$b$a;->cbt:Lcom/vent/o$b;

    iget-object v0, v0, Lcom/vent/o$b;->cbs:Lcom/vent/o;

    iget-object v1, p0, Lcom/vent/o$b$a;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0, v1}, Lcom/vent/o;->b(Lcom/vent/a/x;)V

    return-void
.end method
