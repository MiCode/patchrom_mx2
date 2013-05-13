.class Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;
.super Landroid/os/Handler;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private move()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$800(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/common/RecommendGallery;

    move-result-object v0

    const/high16 v1, 0x4334

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/meizu/video/client/common/RecommendGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 291
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$800(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/common/RecommendGallery;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, v3}, Lcom/meizu/video/client/common/RecommendGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 292
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 296
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 297
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 300
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mIsLoading:Z
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$902(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)Z

    .line 303
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setRecommendListViewSpacing()V

    .line 304
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->InitAdapter()V

    .line 305
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mReommendProgressbarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1000(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->setList(Ljava/util/ArrayList;)V

    .line 307
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->notifyDataSetChanged()V

    .line 308
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 309
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->notifyDataSetChanged()V

    .line 310
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mMsgEntity:Lcom/meizu/video/client/ui/entity/MsgEntity;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/entity/MsgEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/entity/MsgEntity;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoNetworkTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 316
    :goto_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setNoNetWorkStyle()V

    .line 317
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoNetworkTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mNoAvailableNetwork:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageGallery:Lcom/meizu/video/client/common/RecommendGallery;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$800(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/common/RecommendGallery;

    move-result-object v0

    const v1, 0x3fffffff

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/common/RecommendGallery;->setSelection(I)V

    .line 321
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #calls: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->startMove(Z)V
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)V

    goto/16 :goto_0

    .line 325
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->move()V

    .line 326
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    const/4 v1, 0x1

    #calls: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->startMove(Z)V
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)V

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->setRecommendListViewSpacing()V

    .line 329
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->InitAdapter()V

    .line 330
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->setList(Ljava/util/ArrayList;)V

    .line 331
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->notifyDataSetChanged()V

    .line 332
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mRecommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 333
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->mFocusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
