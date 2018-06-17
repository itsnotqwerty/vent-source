.class Lcom/vent/FrgProfile$b;
.super Lcom/vent/d/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/FrgProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgProfile$b;->cfr:Lcom/vent/FrgProfile;

    invoke-direct {p0}, Lcom/vent/d/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vent/FrgProfile$b;->ceP:Lcom/vent/a/y;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vent/FrgProfile$b;->cfr:Lcom/vent/FrgProfile;

    iget-object v0, p0, Lcom/vent/FrgProfile$b;->ceP:Lcom/vent/a/y;

    invoke-virtual {v0}, Lcom/vent/a/y;->EO()Lcom/vent/a/c;

    move-result-object v0

    check-cast v0, Lcom/vent/a/y;

    iput-object v0, v1, Lcom/vent/FrgProfile;->ceP:Lcom/vent/a/y;

    :cond_0
    iget-object v0, p0, Lcom/vent/FrgProfile$b;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->DG()V

    iget-object v0, p0, Lcom/vent/FrgProfile$b;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Lcom/vent/FrgProfile;->Du()V

    return-void
.end method
