.class Lcom/android/gallery3d/app/MovieControllerOverlay$1;
.super Landroid/os/Handler;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 565
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 835
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 567
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_2

    .line 568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v13

    add-int/lit8 v13, v13, -0x5

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 570
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 574
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3e7

    const-wide/16 v14, 0xa

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 572
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 576
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 577
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3e7

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 585
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)J

    move-result-wide v7

    .line 586
    .local v7, pos:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v12

    sget-object v13, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v12, v13, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 587
    :cond_4
    const/16 v12, 0x3e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 588
    const-wide/16 v12, 0x3e8

    const-wide/16 v14, 0x3e8

    rem-long v14, v7, v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 594
    .end local v7           #pos:J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 595
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x1

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1200(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)V

    goto/16 :goto_0

    .line 601
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showController()V

    goto/16 :goto_0

    .line 606
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a01af

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 607
    .local v9, strTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAudioTrackListShow:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 608
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectTitle:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setAudioTrackType(Ljava/util/ArrayList;)V
    invoke-static {v12, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateSelectList(Ljava/util/ArrayList;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->showAlphaAndScale(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 621
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #strTitle:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a01b0

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 622
    .restart local v9       #strTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsTimeTextListShow:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 623
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 624
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectTitle:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimeTextType(Ljava/util/ArrayList;)V
    invoke-static {v12, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2000(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateSelectList(Ljava/util/ArrayList;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->showAlphaAndScale(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 636
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #strTitle:Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a01b8

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 637
    .restart local v9       #strTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaListShow:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 638
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 639
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectTitle:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getDeviceListName()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateSelectList(Ljava/util/ArrayList;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 642
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->showAlphaAndScale(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 648
    .end local v9           #strTitle:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsBitrateListShow:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 649
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 650
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a01bc

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 651
    .restart local v9       #strTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectTitle:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v3, bitrate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2800(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2800(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->updateSelectList(Ljava/util/ArrayList;)V

    .line 656
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 657
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->showAlphaAndScale(Landroid/content/Context;Landroid/view/View;)V

    .line 661
    .end local v3           #bitrate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #strTitle:Ljava/lang/String;
    :cond_9
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3000(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 664
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 673
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static/range {v12 .. v16}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    .line 674
    .local v2, ani:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 680
    .end local v2           #ani:Landroid/view/animation/Animation;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 681
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static/range {v12 .. v16}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    .line 682
    .restart local v2       #ani:Landroid/view/animation/Animation;
    const-wide/16 v12, 0x64

    invoke-virtual {v2, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 683
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->invalidate()V

    .line 686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3f3

    const-wide/16 v14, 0xbb8

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 690
    .end local v2           #ani:Landroid/view/animation/Animation;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 691
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    neg-int v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static/range {v12 .. v16}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    .line 692
    .restart local v2       #ani:Landroid/view/animation/Animation;
    const-wide/16 v12, 0x64

    invoke-virtual {v2, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 693
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->invalidate()V

    .line 696
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3f3

    const-wide/16 v14, 0xbb8

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 700
    .end local v2           #ani:Landroid/view/animation/Animation;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    neg-int v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static/range {v12 .. v16}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    .line 701
    .restart local v2       #ani:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 706
    .end local v2           #ani:Landroid/view/animation/Animation;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3f2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 708
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 709
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectList(Z)V

    .line 733
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 734
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureClickCount:I
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto/16 :goto_0

    .line 710
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 711
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hidePopMenu(Z)V

    goto :goto_2

    .line 713
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x1

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1200(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)V

    goto :goto_2

    .line 716
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 717
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3f3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3ea

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3ea

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 722
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 723
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3fb

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3ea

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 726
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3ea

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 728
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showController()V

    goto/16 :goto_2

    .line 739
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x1

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 740
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectView:Landroid/widget/RelativeLayout;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v13

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 741
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->hideSelectList(Z)V

    .line 743
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v12

    sget-object v13, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-ne v12, v13, :cond_0

    .line 744
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    goto/16 :goto_0

    .line 750
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 754
    .local v10, zoomValue:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-lez v12, :cond_14

    .line 755
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_10

    .line 756
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    sub-double v12, v10, v12

    const-wide v14, 0x3fc999999999999aL

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_13

    .line 757
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    sub-double v13, v10, v13

    const-wide/high16 v15, 0x4014

    div-double/2addr v13, v15

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 761
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v13

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 764
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v15}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v15

    add-double/2addr v13, v15

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 776
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v13

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 777
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    const-wide v14, 0x3fb999999999999aL

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_17

    .line 778
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-wide v13, 0x3fb999999999999aL

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 783
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    const/4 v14, 0x2

    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->isAlmostEqual(DD)Z

    move-result v12

    if-nez v12, :cond_18

    .line 784
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x3f0

    const-wide/16 v14, 0x5

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 788
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v15}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    goto/16 :goto_0

    .line 759
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    sub-double v13, v10, v13

    const-wide/high16 v15, 0x4020

    div-double/2addr v13, v15

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_3

    .line 765
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    cmpg-double v12, v10, v12

    if-gez v12, :cond_11

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_15

    .line 767
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    sub-double/2addr v12, v10

    const-wide v14, 0x3fc999999999999aL

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_16

    .line 768
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    sub-double/2addr v13, v10

    const-wide/high16 v15, 0x4014

    div-double/2addr v13, v15

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 772
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v13

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 774
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v15}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v15

    sub-double/2addr v13, v15

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_4

    .line 770
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v13

    sub-double/2addr v13, v10

    const-wide/high16 v15, 0x4020

    div-double/2addr v13, v15

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto :goto_7

    .line 779
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    cmpl-double v12, v12, v10

    if-lez v12, :cond_12

    .line 781
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v12, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_5

    .line 786
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-wide/16 v13, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12, v13, v14}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4302(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_6

    .line 793
    .end local v10           #zoomValue:D
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/MotionEvent;

    .line 794
    .local v4, event:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVideoProgress(Landroid/view/MotionEvent;)V
    invoke-static {v12, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4500(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 796
    :cond_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 797
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVolume(Landroid/view/MotionEvent;)V
    invoke-static {v12, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4700(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 798
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 800
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->changeBrigtness(Landroid/view/MotionEvent;)V
    invoke-static {v12, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5000(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 807
    .end local v4           #event:Landroid/view/MotionEvent;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 813
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOffLed()V

    goto/16 :goto_0

    .line 818
    :pswitch_14
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 819
    .local v6, next:I
    const/4 v12, 0x1

    if-ne v6, v12, :cond_1b

    .line 820
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->videoNext()V

    goto/16 :goto_0

    .line 822
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->videoPrev()V

    goto/16 :goto_0

    .line 828
    .end local v6           #next:I
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_c
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method
