.class public Lcom/meizu/internal/policy/impl/LockMusicView;
.super Landroid/widget/LinearLayout;
.source "LockMusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;
    }
.end annotation


# static fields
.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final MUSICONLINE_SERVICECMD:Ljava/lang/String; = "com.android.musiconline.COMMAND"

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.COMMAND"


# instance fields
.field private mArtistTips:Landroid/widget/TextView;

.field private mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

.field private mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

.field private mLockWidgetCallback:Lcom/meizu/internal/policy/impl/ILockWidget;

.field private mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

.field private mMusicNext:Landroid/widget/ImageButton;

.field private mMusicPause:Landroid/widget/ImageButton;

.field private mMusicPrev:Landroid/widget/ImageButton;

.field private mMusicTips:Landroid/widget/TextView;

.field mWaitStartMediaService:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    .line 50
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockWidgetCallback:Lcom/meizu/internal/policy/impl/ILockWidget;

    .line 51
    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    .line 256
    iput-boolean v3, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mWaitStartMediaService:Z

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090084

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 58
    const v0, 0x1020353

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const v0, 0x1020358

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mArtistTips:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mArtistTips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    const v0, 0x1020355

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPrev:Landroid/widget/ImageButton;

    .line 63
    const v0, 0x1020357

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicNext:Landroid/widget/ImageButton;

    .line 64
    const v0, 0x1020356

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPause:Landroid/widget/ImageButton;

    .line 65
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPrev:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private requeFocusForMusicTips()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0, p0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void
.end method

.method public isShowMusicName()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 166
    const/4 v0, -0x1

    .line 167
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPrev:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 168
    const/16 v0, 0x58

    .line 175
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v1, v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->sendMediaButtonClick(I)V

    .line 177
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockWidgetCallback:Lcom/meizu/internal/policy/impl/ILockWidget;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockWidgetCallback:Lcom/meizu/internal/policy/impl/ILockWidget;

    invoke-interface {v1}, Lcom/meizu/internal/policy/impl/ILockWidget;->onTouchScreen()V

    .line 181
    :cond_1
    return-void

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicNext:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 170
    const/16 v0, 0x57

    goto :goto_0

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPause:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 172
    const/16 v0, 0x55

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 77
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    return-void
.end method

.method public onMetaChanged()V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 186
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 192
    :cond_1
    return-void
.end method

.method public onMusicApp(Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    .line 254
    return-void
.end method

.method public onMusicClientClear()V
    .locals 2

    .prologue
    .line 285
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;->onMusicVisibleChanged(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public onNameStateChanged()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 222
    iget-boolean v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mWaitStartMediaService:Z

    if-eqz v0, :cond_3

    .line 223
    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mWaitStartMediaService:Z

    .line 224
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    :cond_0
    invoke-virtual {p0, v2}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 250
    :cond_1
    :goto_1
    return-void

    .line 229
    :cond_2
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 234
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 235
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setPauseButtonImage()V

    .line 236
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_4
    invoke-virtual {p0, v2}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 240
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    goto :goto_1

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 247
    invoke-virtual {p0, v1}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    goto :goto_1
.end method

.method public onPlaybackComplete()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 197
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setPauseButtonImage()V

    .line 198
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 204
    :cond_1
    return-void
.end method

.method public onPlaystateChanged()V
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 209
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setPauseButtonImage()V

    .line 210
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setVisibility(I)V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/internal/policy/impl/LockMusicView;->showMusicName(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->updateMusicInfo()V

    .line 217
    invoke-virtual {p0}, Lcom/meizu/internal/policy/impl/LockMusicView;->setPauseButtonImage()V

    goto :goto_0
.end method

.method public setControllerMonitor(Lcom/meizu/internal/policy/impl/LockControllerMonitor;)V
    .locals 0
    .parameter "controllerMonitor"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    .line 90
    return-void
.end method

.method public setLockMusicWidgetCallback(Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;)V
    .locals 2
    .parameter "musicLockWidgetCallface"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    .line 98
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;->onMusicVisibleChanged(Z)V

    .line 102
    :cond_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLockWidgetCallback(Lcom/meizu/internal/policy/impl/ILockWidget;)V
    .locals 0
    .parameter "lockWidgetCallface"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockWidgetCallback:Lcom/meizu/internal/policy/impl/ILockWidget;

    .line 94
    return-void
.end method

.method public setPauseButtonImage()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v0}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPause:Landroid/widget/ImageButton;

    const v1, 0x1080349

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicPause:Landroid/widget/ImageButton;

    const v1, 0x108034a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public showMusicName(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mLockMusicWidgetCallback:Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;

    invoke-interface {v0, p1}, Lcom/meizu/internal/policy/impl/LockMusicView$ILockMusicWidget;->onMusicVisibleChanged(Z)V

    .line 282
    :cond_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public startMediaService()V
    .locals 3

    .prologue
    .line 258
    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mWaitStartMediaService:Z

    if-eqz v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mWaitStartMediaService:Z

    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    if-nez v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicAppName()Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicAppName:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    sget-object v2, Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;->MUSICONLINE_APP:Lcom/meizu/internal/policy/impl/LockControllerMonitor$MusicAppName;

    if-ne v1, v2, :cond_2

    .line 266
    const-string v1, "com.android.musiconline.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :goto_1
    const-string v1, "command"

    const-string v2, "request_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    :cond_2
    const-string v1, "com.android.music.COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public updateMusicInfo()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mControllerMonitor:Lcom/meizu/internal/policy/impl/LockControllerMonitor;

    invoke-virtual {v1}, Lcom/meizu/internal/policy/impl/LockControllerMonitor;->getMusicName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, musicName:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockMusicView;->mMusicTips:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
