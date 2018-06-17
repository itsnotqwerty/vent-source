.class final Lcom/vent/ActStore$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActStore$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYx:Lcom/vent/ActStore$a;


# direct methods
.method constructor <init>(Lcom/vent/ActStore$a;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActStore$a$2;->bYx:Lcom/vent/ActStore$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActStore$a$2;->bYx:Lcom/vent/ActStore$a;

    iget-object v0, v0, Lcom/vent/ActStore$a;->bYw:Lcom/vent/ActStore;

    invoke-virtual {v0}, Lcom/vent/ActStore;->finish()V

    return-void
.end method
