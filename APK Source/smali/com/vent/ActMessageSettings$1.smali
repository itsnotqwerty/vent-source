.class final Lcom/vent/ActMessageSettings$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActMessageSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXp:Lcom/vent/ActMessageSettings;


# direct methods
.method constructor <init>(Lcom/vent/ActMessageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMessageSettings$1;->bXp:Lcom/vent/ActMessageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActMessageSettings$1;->bXp:Lcom/vent/ActMessageSettings;

    invoke-virtual {v0}, Lcom/vent/ActMessageSettings;->Cb()V

    return-void
.end method
