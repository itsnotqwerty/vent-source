.class final Landroid/support/v7/widget/SearchView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahM:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->agT:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->iC()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->agV:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->agU:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->iB()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    iget-object v1, v1, Landroid/support/v7/widget/SearchView;->agW:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_9

    iget-object v5, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    iget-object v1, v5, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_0

    iget-object v6, v5, Landroid/support/v7/widget/SearchView;->ahB:Landroid/app/SearchableInfo;

    :try_start_0
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v5, Landroid/support/v7/widget/SearchView;->ahh:Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    const-string v3, "calling_package"

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v5, Landroid/support/v7/widget/SearchView;->ahi:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v7

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v5, Landroid/support/v7/widget/SearchView;->ahC:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    const-string v2, "app_data"

    iget-object v3, v5, Landroid/support/v7/widget/SearchView;->ahC:Landroid/os/Bundle;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "free_form"

    const/4 v1, 0x1

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_2
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_3
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v1

    :cond_7
    const-string v6, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v10, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.speech.extra.PROMPT"

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE"

    invoke-virtual {v10, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "calling_package"

    if-nez v7, :cond_8

    :goto_5
    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_5

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    iget-object v0, v0, Landroid/support/v7/widget/SearchView;->agP:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->ahM:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->iE()V

    goto/16 :goto_0

    :cond_a
    move-object v2, v0

    goto :goto_4

    :cond_b
    move-object v3, v0

    goto :goto_3

    :cond_c
    move-object v4, v2

    goto :goto_2
.end method
