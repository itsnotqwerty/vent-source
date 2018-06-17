.class final Lcom/vent/ActGroup$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ba$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActGroup;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bWk:Lcom/vent/ActGroup;


# direct methods
.method constructor <init>(Lcom/vent/ActGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    move v0, v6

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v1, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v1, v1, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    new-instance v2, Lcom/vent/ActGroup$5$1;

    invoke-direct {v2, p0}, Lcom/vent/ActGroup$5$1;-><init>(Lcom/vent/ActGroup$5;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->a(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;)V

    move v0, v6

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v1, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v1, v1, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    new-instance v2, Lcom/vent/ActGroup$5$2;

    invoke-direct {v2, p0}, Lcom/vent/ActGroup$5$2;-><init>(Lcom/vent/ActGroup$5;)V

    invoke-static {v0, v1, v2}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/k;Lcom/vent/d/c$b;)V

    move v0, v6

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v2, v2, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    iget-object v3, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v3, v3, Lcom/vent/ActGroup;->bUq:Ljava/util/HashMap;

    invoke-static {v0, v1, v2, v3}, Lcom/vent/ActCreateEditGroup;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/l;Ljava/util/HashMap;)V

    move v0, v6

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v1, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-object v1, v1, Lcom/vent/ActGroup;->bUp:Lcom/vent/a/l;

    invoke-static {v0, v1}, Lcom/vent/d/f;->b(Landroid/app/Activity;Lcom/vent/a/k;)Z

    move v0, v6

    goto :goto_0

    :sswitch_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v0, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-wide v0, v0, Lcom/vent/ActGroup;->bWj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    iget-wide v2, v1, Lcom/vent/ActGroup;->bWj:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/vent/ActGroup$5;->bWk:Lcom/vent/ActGroup;

    new-instance v2, Lcom/vent/ActGroup$5$3;

    invoke-direct {v2, p0}, Lcom/vent/ActGroup$5$3;-><init>(Lcom/vent/ActGroup$5;)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    new-instance v1, Lcom/vent/ActGroup$5$4;

    invoke-direct {v1, p0}, Lcom/vent/ActGroup$5$4;-><init>(Lcom/vent/ActGroup$5;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    move v0, v6

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7f0900b5 -> :sswitch_5
        0x7f0900d5 -> :sswitch_3
        0x7f0901e3 -> :sswitch_1
        0x7f09024c -> :sswitch_4
        0x7f0902cb -> :sswitch_2
    .end sparse-switch
.end method
