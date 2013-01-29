.class Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$4;
.super Ljava/lang/Object;
.source "ChanelProgramDetailActivity.java"

# interfaces
.implements Lcom/meizu/video/client/util/AsyncImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->loadImageIntroduction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$4;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 2
    .parameter "imageBitmap"
    .parameter "imageUrl"
    .parameter "position"

    .prologue
    .line 795
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$4;->this$0:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;

    #getter for: Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->viewHolder:Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;->access$2300(Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity;)Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;

    move-result-object v1

    iget-object v0, v1, Lcom/meizu/video/client/ui/module/chanel/ChanelProgramDetailActivity$ImageIntroductionViewHolder;->chanelProgramDetailImage:Landroid/widget/ImageView;

    .line 796
    .local v0, imageViewByTag:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 797
    if-eqz p1, :cond_0

    .line 798
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 802
    :cond_0
    return-void
.end method
