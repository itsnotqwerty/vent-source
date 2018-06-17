.class final Lcom/vent/ActAddChat$1;
.super Lcom/vent/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActAddChat;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bTo:Lcom/vent/ActAddChat;


# direct methods
.method constructor <init>(Lcom/vent/ActAddChat;Lcom/vent/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActAddChat$1;->bTo:Lcom/vent/ActAddChat;

    invoke-direct {p0, p2}, Lcom/vent/p;-><init>(Lcom/vent/a;)V

    return-void
.end method


# virtual methods
.method protected final AZ()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActAddChat$1;->bTo:Lcom/vent/ActAddChat;

    invoke-virtual {v0, v1, v1}, Lcom/vent/ActAddChat;->f(ZZ)V

    return-void
.end method
