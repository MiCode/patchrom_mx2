.class Lcom/android/gallery3d/app/MovieControllerOverlay$2;
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
    .line 629
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 632
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 850
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 634
    :pswitch_1
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v9

    const/16 v10, 0xa

    if-le v9, v10, :cond_2

    .line 635
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    add-int/lit8 v10, v10, -0x5

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$102(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 636
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 637
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 641
    :goto_1
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e7

    const-wide/16 v11, 0xa

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 639
    :cond_1
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 643
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v10, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mThumbAlpha:I
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$102(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 644
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureControllProgress:Landroid/widget/SeekBar;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 645
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllProgress:Landroid/widget/SeekBar;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/SeekBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 646
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e7

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 652
    :pswitch_2
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)J

    move-result-wide v5

    .line 653
    .local v5, pos:J
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->state:Lcom/android/gallery3d/app/MovieControllerOverlay$State;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    move-result-object v9

    sget-object v10, Lcom/android/gallery3d/app/MovieControllerOverlay$State;->PLAYING:Lcom/android/gallery3d/app/MovieControllerOverlay$State;

    if-eq v9, v10, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 654
    :cond_4
    const/16 v9, 0x3e8

    invoke-virtual {p0, v9}, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 655
    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x3e8

    rem-long v11, v5, v11

    sub-long/2addr v9, v11

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 661
    .end local v5           #pos:J
    :pswitch_3
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 662
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 664
    :cond_5
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 665
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v10, 0x1

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->hideControllAni(Z)V
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1200(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)V

    goto/16 :goto_0

    .line 671
    :pswitch_4
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->showController()V

    goto/16 :goto_0

    .line 676
    :pswitch_5
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a01ba

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlertDialogTitle:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1302(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setAudioTrackType(Ljava/util/ArrayList;)V
    invoke-static {v9, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1500(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V

    .line 679
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setObjects(Ljava/util/List;)V

    .line 680
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAudioTrackSelect:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 681
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectDialog()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    .line 686
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a01bb

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlertDialogTitle:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1302(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/lang/String;)Ljava/lang/String;

    .line 687
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .restart local v3       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setTimeTextType(Ljava/util/ArrayList;)V
    invoke-static {v9, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2000(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/util/ArrayList;)V

    .line 689
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setObjects(Ljava/util/List;)V

    .line 690
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextSelect:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2100(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 691
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectDialog()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    .line 696
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_7
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a01c3

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlertDialogTitle:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1302(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getDeviceListName()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setObjects(Ljava/util/List;)V

    .line 698
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaDeviceSelect:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2400(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 699
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectDialog()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    .line 703
    :pswitch_8
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a01c7

    invoke-static {v10, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->getStringFromRes(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlertDialogTitle:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1302(Lcom/android/gallery3d/app/MovieControllerOverlay;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v1, bitrate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2600(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mBitrateInfo:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2600(Lcom/android/gallery3d/app/MovieControllerOverlay;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setObjects(Ljava/util/List;)V

    .line 708
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mSelectDialogAdapter:Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateSelect:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2700(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$SingleChoiceAdapter;->setSelection(I)V

    .line 709
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->showSelectDialog()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 712
    .end local v1           #bitrate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_9
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 713
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->hide()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 714
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->showSystemTitle(Z)V

    .line 715
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v10

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 716
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 717
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 718
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 719
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mGestureProgressLayout:Landroid/widget/RelativeLayout;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/RelativeLayout;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->hideViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 726
    :pswitch_a
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v10

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 727
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 728
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 729
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 730
    .local v0, ani:Landroid/view/animation/Animation;
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 731
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 736
    .end local v0           #ani:Landroid/view/animation/Animation;
    :pswitch_b
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 737
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 738
    .restart local v0       #ani:Landroid/view/animation/Animation;
    const-wide/16 v9, 0x64

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 739
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 740
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 741
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mLightBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_0

    .line 745
    .end local v0           #ani:Landroid/view/animation/Animation;
    :pswitch_c
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->requestLayout()V

    .line 746
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    neg-int v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 747
    .restart local v0       #ani:Landroid/view/animation/Animation;
    const-wide/16 v9, 0x64

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 748
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 749
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_0

    .line 754
    .end local v0           #ani:Landroid/view/animation/Animation;
    :pswitch_d
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v10

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->isViewVisiable(Landroid/view/View;)Z
    invoke-static {v9, v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 755
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 756
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 757
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    neg-int v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->translateAni(IIII)Landroid/view/animation/TranslateAnimation;
    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3600(Lcom/android/gallery3d/app/MovieControllerOverlay;IIII)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 758
    .restart local v0       #ani:Landroid/view/animation/Animation;
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 759
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mVolumeLayout:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 764
    .end local v0           #ani:Landroid/view/animation/Animation;
    :pswitch_e
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 767
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIndex:I
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3900(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 768
    .local v7, zoomValue:D
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    cmpl-double v9, v7, v9

    if-lez v9, :cond_a

    .line 769
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_6

    .line 770
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    sub-double v9, v7, v9

    const-wide v11, 0x3fc999999999999aL

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_9

    .line 771
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    sub-double v10, v7, v10

    const-wide/high16 v12, 0x4014

    div-double/2addr v10, v12

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 775
    :goto_2
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    const/4 v12, 0x3

    invoke-static {v10, v11, v12}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v10

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 778
    :cond_6
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    iget-object v12, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    add-double/2addr v10, v12

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4002(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 790
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    const/4 v12, 0x3

    invoke-static {v10, v11, v12}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v10

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4002(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 791
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    const-wide v11, 0x3fb999999999999aL

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_d

    .line 792
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-wide v10, 0x3fb999999999999aL

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4002(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 797
    :cond_8
    :goto_4
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/android/gallery3d/app/MovieActivityUtils;->isAlmostEqual(DD)Z

    move-result v9

    if-nez v9, :cond_e

    .line 798
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3ee

    const-wide/16 v11, 0x5

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 802
    :goto_5
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v9

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setVideoZoomLevel(DZ)V

    goto/16 :goto_0

    .line 773
    :cond_9
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    sub-double v10, v7, v10

    const-wide/high16 v12, 0x4020

    div-double/2addr v10, v12

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_2

    .line 779
    :cond_a
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    cmpg-double v9, v7, v9

    if-gez v9, :cond_7

    .line 780
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_b

    .line 781
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    sub-double/2addr v9, v7

    const-wide v11, 0x3fc999999999999aL

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_c

    .line 782
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    sub-double/2addr v10, v7

    const-wide/high16 v12, 0x4014

    div-double/2addr v10, v12

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 786
    :goto_6
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    const/4 v12, 0x3

    invoke-static {v10, v11, v12}, Lcom/android/gallery3d/app/MovieActivityUtils;->roundingLevel(DI)D

    move-result-wide v10

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    .line 788
    :cond_b
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    iget-object v12, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v12}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4100(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v12

    sub-double/2addr v10, v12

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4002(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_3

    .line 784
    :cond_c
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v10, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v10}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v10

    sub-double/2addr v10, v7

    const-wide/high16 v12, 0x4020

    div-double/2addr v10, v12

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto :goto_6

    .line 793
    :cond_d
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevelList:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v9, v7, v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4000(Lcom/android/gallery3d/app/MovieControllerOverlay;)D

    move-result-wide v9

    cmpl-double v9, v9, v7

    if-lez v9, :cond_8

    .line 795
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomLevel:D
    invoke-static {v9, v7, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4002(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_4

    .line 800
    :cond_e
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mRecZoom:D
    invoke-static {v9, v10, v11}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4102(Lcom/android/gallery3d/app/MovieControllerOverlay;D)D

    goto/16 :goto_5

    .line 807
    .end local v7           #zoomValue:D
    :pswitch_f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .line 808
    .local v2, event:Landroid/view/MotionEvent;
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 809
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 810
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVideoProgress(Landroid/view/MotionEvent;)V
    invoke-static {v9, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4300(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 811
    :cond_f
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 812
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setHdmiScreenLight()V
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 813
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->changeVolume(Landroid/view/MotionEvent;)V
    invoke-static {v9, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4500(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 814
    :cond_10
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 815
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsHdmiOn:Z
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 816
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->changeBrigtness(Landroid/view/MotionEvent;)V
    invoke-static {v9, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4800(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 823
    .end local v2           #event:Landroid/view/MotionEvent;
    :pswitch_10
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mZoomIcon:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 829
    :pswitch_11
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->turnOffLed()V

    goto/16 :goto_0

    .line 834
    :pswitch_12
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 835
    .local v4, next:I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_11

    .line 836
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->videoNext()V

    goto/16 :goto_0

    .line 838
    :cond_11
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->videoPrev()V

    goto/16 :goto_0

    .line 844
    .end local v4           #next:I
    :pswitch_13
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mTrackButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 845
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mTimeTextButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 846
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDlnaButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 847
    iget-object v9, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$2;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mOnLineBitrateButton:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 632
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
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_c
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method
