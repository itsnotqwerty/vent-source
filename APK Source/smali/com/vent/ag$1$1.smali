.class final Lcom/vent/ag$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ag$1;->Bq()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdY:Lcom/vent/ag$1;


# direct methods
.method constructor <init>(Lcom/vent/ag$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ag$1$1;->cdY:Lcom/vent/ag$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/vent/bb;->ceg:Ljava/lang/String;

    sput-object v0, Lcom/vent/bb;->ceP:Lcom/vent/a/y;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vent/bb;->chP:Z

    invoke-static {}, Lcom/vent/bb;->EF()V

    invoke-static {}, Lcom/vent/bb;->EB()V

    iget-object v0, p0, Lcom/vent/ag$1$1;->cdY:Lcom/vent/ag$1;

    iget-object v0, v0, Lcom/vent/ag$1;->cdX:Lcom/vent/ag;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v4/app/h;)V

    return-void
.end method
