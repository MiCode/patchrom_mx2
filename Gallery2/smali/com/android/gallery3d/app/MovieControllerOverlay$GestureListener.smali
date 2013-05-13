.class Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;
.super Lcom/android/gallery3d/app/VideoGestureListener$SimpleOnGestureListener;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V
    .locals 0
    .parameter

    .prologue
    .line 3118
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoGestureListener$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Lcom/android/gallery3d/app/MovieControllerOverlay$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3118
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;-><init>(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->onTouchDoubleClick(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9100(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)Z

    .line 3164
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 3185
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "e"

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x3f3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3129
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getIsPrepareFinish()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3160
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3133
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3134
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/high16 v2, 0x4348

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 3136
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3137
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3138
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3139
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3140
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 3142
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3143
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 3144
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3145
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3146
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 3147
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I
    invoke-static {v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v2

    add-int/lit16 v2, v2, -0xc8

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 3148
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3149
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3150
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3151
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3152
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 3154
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3155
    .restart local v0       #msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 3156
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3157
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3158
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/16 v10, 0x3f3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3195
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getIsPrepareFinish()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3263
    :cond_0
    :goto_0
    return v9

    .line 3198
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x4248

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 3201
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3202
    .local v2, x:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 3203
    .local v3, y:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3204
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mControllShowing:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3205
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {v4, v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->cancelHiding(Z)V

    .line 3207
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsCanGesture:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$6100(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3208
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4200(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4600(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3209
    div-float v4, v3, v2

    float-to-double v4, v4

    const-wide v6, 0x3fe921fb54442d18L

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    .line 3210
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsScreenHorizontal:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9400(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3211
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getScreenRotation()I

    move-result v5

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I
    invoke-static {v4, v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 3212
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 3213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/high16 v5, 0x4270

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 3222
    :cond_4
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsDlnaMode:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3223
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v4

    invoke-interface {v4, v8}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->setDlnaVol(I)V

    .line 3227
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3228
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v4, v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3229
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3230
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3231
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->isSeeking()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3232
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getVideoCurPosition()J

    move-result-wide v5

    long-to-int v5, v5

    int-to-long v5, v5

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mAlreadyPlayTime:J
    invoke-static {v4, v5, v6}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9702(Lcom/android/gallery3d/app/MovieControllerOverlay;J)J

    .line 3233
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setProgress()J
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$600(Lcom/android/gallery3d/app/MovieControllerOverlay;)J

    .line 3235
    :cond_5
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDragging:Z
    invoke-static {v4, v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$702(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3250
    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 3251
    .local v0, delayTime:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa0

    cmp-long v4, v4, v6

    if-gez v4, :cond_c

    .line 3252
    const/16 v0, 0xa0

    .line 3256
    :goto_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3257
    .local v1, msg:Landroid/os/Message;
    iput v10, v1, Landroid/os/Message;->what:I

    .line 3258
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3259
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3260
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v4

    int-to-long v5, v0

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3216
    .end local v0           #delayTime:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_7
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I
    invoke-static {v4}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v4

    if-ne v4, v9, :cond_4

    .line 3217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mDisplayHeight:I
    invoke-static {v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9600(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v5

    add-int/lit8 v5, v5, -0x3c

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    goto/16 :goto_0

    .line 3225
    :cond_8
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->setVolumeLevel(I)V
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$7200(Lcom/android/gallery3d/app/MovieControllerOverlay;I)V

    goto/16 :goto_1

    .line 3236
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/high16 v5, 0x4348

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 3237
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3238
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v4, v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3239
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    goto :goto_2

    .line 3240
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenWidth:I
    invoke-static {v5}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9000(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v5

    add-int/lit16 v5, v5, -0xc8

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 3241
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3242
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3243
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v4, v9}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    goto/16 :goto_2

    .line 3245
    :cond_b
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetVol:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4402(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3246
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetSeek:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4202(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    .line 3247
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsSetBright:Z
    invoke-static {v4, v8}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$4602(Lcom/android/gallery3d/app/MovieControllerOverlay;Z)Z

    goto/16 :goto_2

    .line 3254
    .restart local v0       #delayTime:I
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 3121
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mIsAnimationStarting:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8800(Lcom/android/gallery3d/app/MovieControllerOverlay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getIsPrepareFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3125
    :cond_0
    :goto_0
    return v1

    .line 3124
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->onTouchClick(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$8900(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 3169
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoviePlayerListener:Lcom/android/gallery3d/app/ControllerOverlay$Listener;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2300(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/ControllerOverlay$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/app/ControllerOverlay$Listener;->getIsPrepareFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3180
    :goto_0
    return v5

    .line 3172
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoveTime:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9202(Lcom/android/gallery3d/app/MovieControllerOverlay;J)J

    .line 3173
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoveTime:J
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9200(Lcom/android/gallery3d/app/MovieControllerOverlay;)J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 3174
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->initTouchParams()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$3200(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 3175
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$500(Lcom/android/gallery3d/app/MovieControllerOverlay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3179
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->onTouchUp(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9300(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3177
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$GestureListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMoveTime:J
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9202(Lcom/android/gallery3d/app/MovieControllerOverlay;J)J

    goto :goto_1
.end method
