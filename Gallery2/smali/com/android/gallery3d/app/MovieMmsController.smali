.class public Lcom/android/gallery3d/app/MovieMmsController;
.super Landroid/widget/FrameLayout;
.source "MovieMmsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;
    }
.end annotation


# instance fields
.field private mBackIcon:Landroid/widget/ImageView;

.field private mBackListenr:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mControllView:Landroid/view/View;

.field private mDoneBar:Landroid/widget/RelativeLayout;

.field private mErrorView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsFromRecord:Z

.field private mIsShowing:Z

.field private mLoadingView:Landroid/widget/LinearLayout;

.field private mMainView:Landroid/view/View;

.field private mPausePlayListener:Landroid/view/View$OnClickListener;

.field private mPlayIcon:Landroid/widget/ImageButton;

.field private mSaveListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private playerListener:Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ZLcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "title"
    .parameter "isFromRecord"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsShowing:Z

    .line 38
    iput-boolean v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsFromRecord:Z

    .line 42
    new-instance v5, Lcom/android/gallery3d/app/MovieMmsController$1;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MovieMmsController$1;-><init>(Lcom/android/gallery3d/app/MovieMmsController;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v5, Lcom/android/gallery3d/app/MovieMmsController$2;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MovieMmsController$2;-><init>(Lcom/android/gallery3d/app/MovieMmsController;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPausePlayListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v5, Lcom/android/gallery3d/app/MovieMmsController$3;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MovieMmsController$3;-><init>(Lcom/android/gallery3d/app/MovieMmsController;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mBackListenr:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v5, Lcom/android/gallery3d/app/MovieMmsController$4;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/MovieMmsController$4;-><init>(Lcom/android/gallery3d/app/MovieMmsController;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mSaveListener:Landroid/view/View$OnClickListener;

    .line 59
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;

    .line 60
    iput-boolean p4, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsFromRecord:Z

    .line 61
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 62
    .local v4, wrapContent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v1, matchParent:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    .line 65
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 66
    .local v3, spinner:Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 68
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 69
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v4}, Lcom/android/gallery3d/app/MovieMmsController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    .line 73
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    const/high16 v6, -0x3400

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 75
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v1}, Lcom/android/gallery3d/app/MovieMmsController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, controlInflate:Landroid/view/LayoutInflater;
    const v5, 0x7f04003a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    .line 80
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    const v6, 0x7f0d00cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mDoneBar:Landroid/widget/RelativeLayout;

    .line 81
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    const v6, 0x7f0d00cc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mBackIcon:Landroid/widget/ImageView;

    .line 82
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    const v6, 0x7f0d00ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    .line 83
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/gallery3d/app/MovieMmsController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iput-object p2, p0, Lcom/android/gallery3d/app/MovieMmsController;->mUri:Landroid/net/Uri;

    .line 86
    iput-object p3, p0, Lcom/android/gallery3d/app/MovieMmsController;->mTitle:Ljava/lang/String;

    .line 88
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPausePlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mDoneBar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieMmsController;->mSaveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v5, p0, Lcom/android/gallery3d/app/MovieMmsController;->mBackIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieMmsController;->mBackListenr:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object p5, p0, Lcom/android/gallery3d/app/MovieMmsController;->playerListener:Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/MovieMmsController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieMmsController;->hide()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/gallery3d/app/MovieMmsController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/MovieMmsController;)Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->playerListener:Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/MovieMmsController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieMmsController;->updatePlayPasue()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/MovieMmsController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/gallery3d/app/MovieMmsController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/MovieMmsController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsFromRecord:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/MovieMmsController;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private layoutCenteredView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 216
    .local v3, cw:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 217
    .local v0, ch:I
    sub-int v4, p4, p2

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .line 218
    .local v1, cl:I
    sub-int v4, p5, p3

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 219
    .local v2, ct:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 220
    return-void
.end method

.method private showMainView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mMainView:Landroid/view/View;

    .line 231
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v3, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieMmsController;->mMainView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    if-ne v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void

    :cond_0
    move v0, v2

    .line 231
    goto :goto_0

    :cond_1
    move v0, v2

    .line 233
    goto :goto_1

    :cond_2
    move v1, v2

    .line 235
    goto :goto_2
.end method

.method private updatePlayPasue()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->playerListener:Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->playerListener:Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;

    invoke-interface {v0}, Lcom/android/gallery3d/app/MovieMmsController$MmsPlayerListener;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    const v1, 0x7f02019d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getShowFlag()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsShowing:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 203
    return-object p0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieMmsController;->setFocusable(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieMmsController;->requestFocus()Z

    .line 178
    return-void
.end method

.method public hidePlaying()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 194
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mMainView:Landroid/view/View;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/app/MovieMmsController;->layoutCenteredView(Landroid/view/View;IIII)V

    .line 212
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/app/MovieMmsController;->measureChildren(II)V

    .line 227
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieMmsController;->getShowFlag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieMmsController;->showPlaying()V

    .line 152
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->turnOnLed()V

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieMmsController;->hidePlaying()V

    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MovieActivity;->turnOffLed()V

    goto :goto_0
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    const/16 v3, 0xa

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieMmsController;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e2aaaab

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 163
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 164
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mErrorView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/MovieMmsController;->showMainView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mLoadingView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieMmsController;->showMainView(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public showPlaying()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/MovieMmsController;->showMainView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->invalidate()V

    .line 184
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mPlayIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestLayout()V

    .line 185
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsShowing:Z

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieMmsController;->mControllView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MovieActivityUtils;->showViewAlphaAni(Landroid/content/Context;Landroid/view/View;)V

    .line 188
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mIsShowing:Z

    .line 189
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieMmsController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    return-void
.end method
