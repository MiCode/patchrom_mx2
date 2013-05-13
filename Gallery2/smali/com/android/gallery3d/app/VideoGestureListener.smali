.class public Lcom/android/gallery3d/app/VideoGestureListener;
.super Ljava/lang/Object;
.source "VideoGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;,
        Lcom/android/gallery3d/app/VideoGestureListener$SimpleOnGestureListener;,
        Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;,
        Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/gallery3d/app/VideoGestureListener;->LONGPRESS_TIMEOUT:I

    .line 75
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/gallery3d/app/VideoGestureListener;->TAP_TIMEOUT:I

    .line 76
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/android/gallery3d/app/VideoGestureListener;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery3d/app/VideoGestureListener;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;Landroid/os/Handler;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/app/VideoGestureListener;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;Landroid/os/Handler;Z)V

    .line 174
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "ignoreMultitouch"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 178
    if-eqz p3, :cond_2

    .line 179
    new-instance v0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;-><init>(Lcom/android/gallery3d/app/VideoGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    .line 183
    :goto_1
    iput-object p2, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    .line 184
    instance-of v0, p2, Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 185
    check-cast p2, Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/app/VideoGestureListener;->setOnDoubleTapListener(Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;)V

    .line 187
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/android/gallery3d/app/VideoGestureListener;->init(Landroid/content/Context;Z)V

    .line 188
    return-void

    .line 121
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_2
    new-instance v0, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/VideoGestureListener$GestureHandler;-><init>(Lcom/android/gallery3d/app/VideoGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/VideoGestureListener;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/VideoGestureListener;)Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/VideoGestureListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/gallery3d/app/VideoGestureListener;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/VideoGestureListener;)Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/VideoGestureListener;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 409
    iput-boolean v2, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mIsDoubleTapping:Z

    .line 410
    iput-boolean v2, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mStillDown:Z

    .line 411
    iput-boolean v2, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInTapRegion:Z

    .line 412
    iput-boolean v2, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInBiggerTapRegion:Z

    .line 413
    iget-boolean v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 414
    iput-boolean v2, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mInLongPress:Z

    .line 416
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mInLongPress:Z

    .line 436
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 437
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "ignoreMultitouch"

    .prologue
    .line 191
    iget-object v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    if-nez v4, :cond_0

    .line 192
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mIsLongpressEnabled:Z

    .line 195
    iput-boolean p2, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mIgnoreMultitouch:Z

    .line 199
    if-nez p1, :cond_1

    .line 201
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 202
    .local v3, touchSlop:I
    move v2, v3

    .line 203
    .local v2, doubleTapTouchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 205
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mMinimumFlingVelocity:I

    .line 206
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mMaximumFlingVelocity:I

    .line 215
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mTouchSlopSquare:I

    .line 216
    mul-int v4, v2, v2

    iput v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapTouchSlopSquare:I

    .line 217
    mul-int v4, v1, v1

    iput v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapSlopSquare:I

    .line 218
    return-void

    .line 208
    .end local v1           #doubleTapSlop:I
    .end local v2           #doubleTapTouchSlop:I
    .end local v3           #touchSlop:I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 209
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 210
    .restart local v3       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 211
    .restart local v2       #doubleTapTouchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 212
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mMinimumFlingVelocity:I

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-boolean v3, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 424
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Lcom/android/gallery3d/app/VideoGestureListener;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 429
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 430
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "ev"

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 247
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 248
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 249
    .local v18, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 251
    .local v17, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 252
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 254
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 256
    const/4 v10, 0x0

    .line 258
    .local v10, handled:Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 397
    :cond_2
    :goto_0
    :pswitch_0
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 400
    :cond_3
    return v10

    .line 260
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/VideoGestureListener;->cancel()V

    goto :goto_0

    .line 268
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 269
    const v19, 0xff00

    and-int v19, v19, v4

    shr-int/lit8 v19, v19, 0x8

    if-nez v19, :cond_4

    const/4 v11, 0x1

    .line 271
    .local v11, index:I
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionX:F

    .line 272
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionY:F

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 274
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 269
    .end local v11           #index:I
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 279
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    .line 281
    .local v9, hadTapMessage:Z
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/VideoGestureListener;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 285
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mIsDoubleTapping:Z

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 296
    .end local v9           #hadTapMessage:Z
    :cond_6
    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionX:F

    .line 297
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionY:F

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 301
    :cond_7
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 302
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInTapRegion:Z

    .line 303
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInBiggerTapRegion:Z

    .line 304
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mStillDown:Z

    .line 305
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mInLongPress:Z

    .line 307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mIsLongpressEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Lcom/android/gallery3d/app/VideoGestureListener;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    sget v23, Lcom/android/gallery3d/app/VideoGestureListener;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 312
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v21

    sget v23, Lcom/android/gallery3d/app/VideoGestureListener;->TAP_TIMEOUT:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 314
    goto/16 :goto_0

    .line 292
    .restart local v9       #hadTapMessage:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    sget v21, Lcom/android/gallery3d/app/VideoGestureListener;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 320
    .end local v9           #hadTapMessage:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mIgnoreMultitouch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_2

    .line 323
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v12, v19, v17

    .line 324
    .local v12, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v13, v19, v18

    .line 325
    .local v13, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    goto/16 :goto_0

    .line 328
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 330
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v7, v0

    .line 331
    .local v7, deltaY:I
    mul-int v19, v6, v6

    mul-int v20, v7, v7

    add-int v8, v19, v20

    .line 332
    .local v8, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_c

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    .line 334
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionX:F

    .line 335
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionY:F

    .line 336
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInTapRegion:Z

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 341
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapTouchSlopSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v8, v0, :cond_2

    .line 342
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_0

    .line 344
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distance:I
    :cond_d
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-gez v19, :cond_e

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f80

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_2

    .line 345
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2, v12, v13}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    .line 346
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionX:F

    .line 347
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mLastMotionY:F

    goto/16 :goto_0

    .line 352
    .end local v12           #scrollX:F
    .end local v13           #scrollY:F
    :pswitch_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mStillDown:Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    .line 354
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 355
    .local v5, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mIsDoubleTapping:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    or-int v10, v10, v19

    .line 376
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 380
    :cond_10
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/VelocityTracker;->recycle()V

    .line 385
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 387
    :cond_11
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mIsDoubleTapping:Z

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 358
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mInLongPress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery3d/app/VideoGestureListener;->mInLongPress:Z

    goto :goto_3

    .line 361
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mAlwaysInTapRegion:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_3

    .line 366
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 367
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mMaximumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 368
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 369
    .local v16, velocityY:F
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 371
    .local v15, velocityX:F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-gtz v19, :cond_15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mMinimumFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_f

    .line 373
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mListener:Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/VideoGestureListener;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v15, v3}, Lcom/android/gallery3d/app/VideoGestureListener$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v10

    goto/16 :goto_3

    .line 393
    .end local v5           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:F
    .end local v16           #velocityY:F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/app/VideoGestureListener;->cancel()V

    goto/16 :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnDoubleTapListener(Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGestureListener;->mDoubleTapListener:Lcom/android/gallery3d/app/VideoGestureListener$OnDoubleTapListener;

    .line 222
    return-void
.end method
