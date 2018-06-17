.class Lio/intercom/android/sdk/blocks/ConversationRatingCard$3;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/android/sdk/imageloader/LongTermImageLoader$OnImageReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/intercom/android/sdk/blocks/ConversationRatingCard;->setupRatingsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

.field final synthetic val$ratingView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lio/intercom/android/sdk/blocks/ConversationRatingCard;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$3;->this$0:Lio/intercom/android/sdk/blocks/ConversationRatingCard;

    iput-object p2, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$3;->val$ratingView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReady(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lio/intercom/android/sdk/blocks/ConversationRatingCard$3;->val$ratingView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
