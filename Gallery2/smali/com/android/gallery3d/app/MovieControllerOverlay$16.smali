.class Lcom/android/gallery3d/app/MovieControllerOverlay$16;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;->showPopMenu()V
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
    .line 1341
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1344
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1345
    .local v0, which:I
    packed-switch v0, :pswitch_data_0

    .line 1388
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setMenuItemCheck()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8600(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 1389
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1390
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x3e9

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1393
    :cond_0
    return v2

    .line 1347
    :pswitch_0
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7702(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1348
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1349
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1350
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 1361
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1362
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1363
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1347
    goto :goto_1

    .line 1352
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7902(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_2

    .line 1355
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1356
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_2

    .line 1358
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8002(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_2

    .line 1365
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1366
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1371
    :pswitch_1
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1372
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8200(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 1371
    goto :goto_3

    .line 1376
    :pswitch_2
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_4
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8302(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1377
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8400(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 1376
    goto :goto_4

    .line 1381
    :pswitch_3
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8502(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1382
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$16;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8400(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1381
    goto :goto_5

    .line 1345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
