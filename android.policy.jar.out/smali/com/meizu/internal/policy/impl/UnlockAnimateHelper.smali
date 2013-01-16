.class public Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;
.super Ljava/lang/Object;
.source "UnlockAnimateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;
    }
.end annotation


# instance fields
.field private final INTERVAL_UPDATE_POS:I

.field private final MSG_ANIM_STOP:I

.field private final MSG_ANIM_UPDATE:I

.field private mAboveView:Landroid/view/View;

.field private mAnimSpace:I

.field private mBelowView:Landroid/view/View;

.field private mCallback:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;

.field private mDuration:I

.field mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mStartAnimTime:J

.field private mStartPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xe

    iput v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->INTERVAL_UPDATE_POS:I

    .line 17
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->MSG_ANIM_UPDATE:I

    .line 18
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->MSG_ANIM_STOP:I

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartAnimTime:J

    .line 55
    new-instance v0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;

    invoke-direct {v0, p0}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$1;-><init>(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)V

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mIsAnimating:Z

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartAnimTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAnimSpace:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->updatePositionToLock(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mCallback:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartPosition:I

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mIsAnimating:Z

    return p1
.end method

.method private updatePositionToLock(I)V
    .locals 3
    .parameter "distance"

    .prologue
    .line 107
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mBelowView:Landroid/view/View;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAboveView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mBelowView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 110
    iget v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartPosition:I

    add-int v0, v2, p1

    .line 111
    .local v0, dstPostion:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mBelowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v1, v0, v2

    .line 112
    .local v1, offset:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mBelowView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 113
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mBelowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 115
    .end local v0           #dstPostion:I
    .end local v1           #offset:I
    :cond_2
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAboveView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 116
    iget v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartPosition:I

    add-int v0, v2, p1

    .line 117
    .restart local v0       #dstPostion:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAboveView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v1, v0, v2

    .line 118
    .restart local v1       #offset:I
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAboveView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 119
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAboveView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public setCallback(Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mCallback:Lcom/meizu/internal/policy/impl/UnlockAnimateHelper$Callback;

    .line 53
    return-void
.end method

.method public startAnim(IIILandroid/view/View;Landroid/view/View;)Z
    .locals 4
    .parameter "startPosition"
    .parameter "animSpace"
    .parameter "duration"
    .parameter "aboveView"
    .parameter "belowView"

    .prologue
    const/16 v3, 0x3e8

    const/4 v0, 0x1

    .line 34
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mIsAnimating:Z

    if-eqz v1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    .line 36
    :cond_0
    iput-boolean v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mIsAnimating:Z

    .line 37
    iput p3, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mDuration:I

    .line 38
    iput p2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAnimSpace:I

    .line 39
    iput p1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartPosition:I

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mStartAnimTime:J

    .line 42
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    iput-object p4, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mAboveView:Landroid/view/View;

    .line 47
    iput-object p5, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mBelowView:Landroid/view/View;

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/16 v2, 0x3e9

    .line 124
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/UnlockAnimateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method
