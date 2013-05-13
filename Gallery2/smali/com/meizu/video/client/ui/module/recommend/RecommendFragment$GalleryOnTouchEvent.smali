.class Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GalleryOnTouchEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;-><init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 466
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 477
    :goto_0
    :pswitch_0
    return v2

    .line 468
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #calls: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->endMove()V
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1600(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V

    goto :goto_0

    .line 471
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #calls: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->startMove(Z)V
    invoke-static {v1, v2}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)V

    goto :goto_0

    .line 474
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$GalleryOnTouchEvent;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #calls: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->startMove(Z)V
    invoke-static {v1, v2}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)V

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
