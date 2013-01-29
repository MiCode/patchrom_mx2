.class Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay$8;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

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

    .line 973
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 974
    .local v0, which:I
    packed-switch v0, :pswitch_data_0

    .line 1017
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setMenuItemCheck()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6300(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 1018
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPopMenuShowing:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$1102(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1019
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x3e9

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1022
    :cond_0
    return v2

    .line 976
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v4, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 977
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineVideo:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 978
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6602(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 990
    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 991
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 992
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 976
    goto :goto_1

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsOnLineCompleteMode:I
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6602(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_2

    .line 984
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCompleteMode:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 985
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6702(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_2

    .line 987
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsNativeCompleteMode:I
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6702(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    goto :goto_2

    .line 994
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mNextButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 995
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mPreButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$5700(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 1000
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v4, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAutoVerScreen:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6802(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1001
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenSensor()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6900(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 1000
    goto :goto_3

    .line 1005
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v4, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7000(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_4
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsRepeatplay:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7002(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1006
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7100(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 1005
    goto :goto_4

    .line 1010
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v4, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_5
    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsQueueplay:Z
    invoke-static {v4, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 1011
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$8$1;->this$1:Lcom/android/gallery3d/app/MovieControllerOverlay$8;

    iget-object v1, v1, Lcom/android/gallery3d/app/MovieControllerOverlay$8;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setPlayMode()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7100(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1010
    goto :goto_5

    .line 974
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
